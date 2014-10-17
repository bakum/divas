package ua.divas.view;

import java.util.ArrayList;
import java.util.List;

import javax.faces.event.ActionEvent;
import javax.faces.model.SelectItem;

import oracle.adf.model.BindingContext;

import oracle.adf.view.rich.component.rich.data.RichTable;

import oracle.adf.view.rich.event.QueryEvent;
import oracle.adf.view.rich.model.FilterableQueryDescriptor;

import oracle.binding.BindingContainer;
import oracle.binding.OperationBinding;

import oracle.jbo.Row;
import oracle.jbo.uicli.binding.JUCtrlHierBinding;
import oracle.jbo.uicli.binding.JUCtrlValueBindingRef;

public class UsersBean {
    private RichTable userTable;

    public UsersBean() {
    }
    
    public void setUserTable(RichTable userTable) {
        this.userTable = userTable;
    }

    public RichTable getUserTable() {
        return userTable;
    }
    
    public void resetTableFilter(ActionEvent actionEvent) {
        FilterableQueryDescriptor queryDescriptor = (FilterableQueryDescriptor) getUserTable().getFilterModel();
        if (queryDescriptor != null && queryDescriptor.getFilterCriteria() != null) {
            queryDescriptor.getFilterCriteria().clear();
            getUserTable().queueEvent(new QueryEvent(getUserTable(), queryDescriptor));
        }
    }
    
    public BindingContainer getBindings() {
        return BindingContext.getCurrent().getCurrentBindingsEntry();
    }

    public List<SelectItem> onSuggest(String string) {
        //get access to the binding context and binding container at runtime
        BindingContext bctx = BindingContext.getCurrent();
        BindingContainer bindings = bctx.getCurrentBindingsEntry();
        //set the bind variable value that is used to filter the View Object
        //query of the suggest list. The View Object instance has a View
        //Criteria assigned
        OperationBinding setVariable = (OperationBinding) bindings.get("setStartCriteria");
        setVariable.getParamsMap().put("value", string);
        setVariable.execute();
        //the data in the suggest list  is queried by a tree binding.
        JUCtrlHierBinding hierBinding = (JUCtrlHierBinding) bindings.get("UsersItemsLookupVO1");
        //re-query the list based on the new bind variable values
        hierBinding.executeQuery();
        //The rangeSet,  the list  of queries entries, is of type
        //
        ////JUCtrlValueBndingRef.
        List<JUCtrlValueBindingRef> displayDataList = hierBinding.getRangeSet();
        ArrayList<SelectItem> selectItems = new ArrayList<SelectItem>();
        for (JUCtrlValueBindingRef displayData : displayDataList) {
            Row rw = displayData.getRow();
            //populate the SelectItem list
            selectItems.add(new SelectItem((String) rw.getAttribute("Login"), (String) rw.getAttribute("Login")));
        }
        return selectItems;
        }

    
}
