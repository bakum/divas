package ua.divas.bean;

import java.util.ArrayList;
import java.util.List;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;
import javax.faces.model.SelectItem;

import oracle.adf.controller.ControllerContext;
import oracle.adf.model.BindingContext;

import oracle.adf.view.rich.component.rich.data.RichTable;

import oracle.adf.view.rich.event.QueryEvent;
import oracle.adf.view.rich.model.AttributeCriterion;
import oracle.adf.view.rich.model.ConjunctionCriterion;
import oracle.adf.view.rich.model.Criterion;
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
        if (queryDescriptor != null && queryDescriptor.getFilterConjunctionCriterion() != null) {
            ConjunctionCriterion cc = queryDescriptor.getFilterConjunctionCriterion();
            List<Criterion> lc = cc.getCriterionList();
            for (Criterion c : lc) {
                if (c instanceof AttributeCriterion) {
                    AttributeCriterion ac = (AttributeCriterion) c;
                    ac.setValue(null);
                }
            }
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
    
    public void handleExceptionShowMessageInPopupDialog() {
        ControllerContext cc = ControllerContext.getInstance();
        Exception ex = cc.getCurrentViewPort().getExceptionData();
        String message = ex.getMessage();
        
        FacesContext fc = FacesContext.getCurrentInstance();
        FacesMessage facesMessage =
              new FacesMessage(FacesMessage.SEVERITY_ERROR, "UTF: " + message, null);
            fc.addMessage(null, facesMessage);

            cc.getCurrentRootViewPort().clearException();
            fc.renderResponse();
    }

    
}
