package ua.divas.bean;

import oracle.adf.model.BindingContext;
import oracle.adf.view.rich.component.rich.input.RichInputNumberSpinbox;
import oracle.adf.view.rich.component.rich.input.RichSelectOneChoice;
import oracle.adf.view.rich.event.DialogEvent;

import oracle.adf.view.rich.event.PopupFetchEvent;

import oracle.binding.BindingContainer;
import oracle.binding.OperationBinding;

public class ZamerDebtBean {
    private RichSelectOneChoice kassaId;
    private RichInputNumberSpinbox summa;

    public ZamerDebtBean() {
    }
    
    public void setKassaId(RichSelectOneChoice kassaId) {
        this.kassaId = kassaId;
    }

    public RichSelectOneChoice getKassaId() {
        return kassaId;
    }

    public void setSumma(RichInputNumberSpinbox summa) {
        this.summa = summa;
    }

    public RichInputNumberSpinbox getSumma() {
        return summa;
    }

    public void onDialogPay(DialogEvent dialogEvent) {
        if (dialogEvent.getOutcome().name().equals("ok")) {
            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding oper = (OperationBinding) binding.getOperationBinding("paySelectedRows");
            oper.execute();
        }
    }

    public void onPopupPay(PopupFetchEvent popupFetchEvent) {
        try {
            getKassaId().setValue("");
        } catch (Exception e) {
            // TODO: Add catch code
            e.printStackTrace();
        }
        
        try {
            getSumma().setValue("");
        } catch (Exception e) {
            // TODO: Add catch code
            e.printStackTrace();
        }
    }
}
