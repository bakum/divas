package ua.divas.bean;

import javax.faces.event.ActionEvent;

import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCBindingContainer;

import oracle.adf.model.binding.DCIteratorBinding;

import oracle.adf.view.rich.component.rich.data.RichTable;

import oracle.adf.view.rich.context.AdfFacesContext;

import oracle.binding.BindingContainer;
import oracle.binding.OperationBinding;

import oracle.jbo.Row;

import org.apache.myfaces.trinidad.event.ReturnEvent;

public class RkoBean {
    private RichTable table;

    public RkoBean() {
    }
    
    public void setTable(RichTable table) {
        this.table = table;
    }

    public RichTable getTable() {
        return table;
    }

    public String refresh() {

        DCBindingContainer binding = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = binding.findIteratorBinding("RkoView1Iterator");
        String rks;
        if (it != null) {
            try {
                rks = it.getCurrentRow().getKey().toStringFormat(true);
            } catch (Exception e) {
                rks = null;
            }
            it.executeQuery();
            if (rks != null) {
                try {
                    it.setCurrentRowWithKey(rks);
                } catch (Exception e) {
                    e.getMessage();
                }
            }
        }
        AdfFacesContext.getCurrentInstance().addPartialTarget(getTable());
        return null;
    }

    public void onReturn(ReturnEvent re) {
        System.out.println(re.getReturnParameters().get("RkoId")+" Return listener called ");
        //AdfFacesContext.getCurrentInstance().addPartialTarget(getTable());
        refresh();
    }
    
    public void onAddEntry(ActionEvent actionEvent) {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("RkoView1Iterator");
        Row currRow = it.getCurrentRow();
        String Id = (String) currRow.getAttribute("Id");
        
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("addEntry");
        if (ob != null) {
            
            ob.getParamsMap().put("_id", Id);
            ob.execute();
            refresh();
        }
    }

    public void onRemoveEntry(ActionEvent actionEvent) {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("RkoView1Iterator");
        Row currRow = it.getCurrentRow();
        String Id = (String) currRow.getAttribute("Id");
        
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("removeEntry");
        if (ob != null) {
            
            ob.getParamsMap().put("_id", Id);
            ob.execute();
            refresh();
        }
    }
}
