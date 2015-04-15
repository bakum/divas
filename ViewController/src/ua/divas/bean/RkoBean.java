package ua.divas.bean;

import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCBindingContainer;

import oracle.adf.model.binding.DCIteratorBinding;

import oracle.adf.view.rich.component.rich.data.RichTable;

import oracle.adf.view.rich.context.AdfFacesContext;

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

        return null;
    }

    public void onReturn(ReturnEvent re) {
        System.out.println(re.getReturnParameters().get("RkoId")+" Return listener called ");
        AdfFacesContext.getCurrentInstance().addPartialTarget(getTable());
    }
}
