package ua.divas.bean;

import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCBindingContainer;
import oracle.adf.model.binding.DCDataControl;
import oracle.adf.model.binding.DCIteratorBinding;
import oracle.adf.view.rich.component.rich.input.RichInputText;
import oracle.adf.view.rich.event.DialogEvent;
import oracle.adf.view.rich.event.PopupFetchEvent;

import oracle.binding.BindingContainer;
import oracle.binding.OperationBinding;

import oracle.jbo.Row;

import ua.divas.module.AppModuleImpl;

public class OtherJsfBean {
    private RichInputText zatrName;

    public OtherJsfBean() {
    }

    public void setZatrName(RichInputText zatrName) {
        this.zatrName = zatrName;
    }

    public RichInputText getZatrName() {
        return zatrName;
    }
    
    private void setFullName() {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("ZatratyView1Iterator");
        Row currRow = it.getCurrentRow();

        currRow.setAttribute("Fullname", getZatrName().getValue().toString());
    }
    
    protected void refreshZatr() {
        BindingContext bindingContext = BindingContext.getCurrent();
        DCDataControl dc =
            bindingContext.findDataControl("AppModuleDataControl"); // Name of application module in datacontrolBinding.cpx
        AppModuleImpl am = (AppModuleImpl) dc.getDataProvider();
        am.getZatratyView1().executeQuery();
    }
    
    public void onPopupCreateZatraty(PopupFetchEvent popupFetchEvent) {
        try {
            getZatrName().setValue("");
        } catch (Exception e) {
            // TODO: Add catch code
            e.printStackTrace();
        }
    }
    
    public void onNewZatratyDialogListener(DialogEvent dialogEvent) {
        if (dialogEvent.getOutcome().name().equals("ok")) {
            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding ob = binding.getOperationBinding("CreateInsert1");
            ob.execute();
            setFullName();
            /* setIsMeasurer();
            setZamerParentId(); */
            //BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            ob = binding.getOperationBinding("Commit");
            ob.execute();
            refreshZatr();
            /* DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
            DCIteratorBinding it = bd.findIteratorBinding("KontragentsView1Iterator");
            if (it != null) {
                it.executeQuery();
            } */
        }
    }
}
