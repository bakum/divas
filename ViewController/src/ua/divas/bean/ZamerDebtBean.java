package ua.divas.bean;

import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.el.ValueExpression;

import javax.faces.application.Application;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

import oracle.adf.model.BindingContext;
import oracle.adf.view.rich.component.rich.data.RichTreeTable;
import oracle.adf.view.rich.component.rich.input.RichInputNumberSpinbox;
import oracle.adf.view.rich.component.rich.input.RichSelectOneChoice;
import oracle.adf.view.rich.context.AdfFacesContext;
import oracle.adf.view.rich.event.DialogEvent;

import oracle.adf.view.rich.event.PopupFetchEvent;

import oracle.binding.BindingContainer;
import oracle.binding.OperationBinding;

public class ZamerDebtBean {
    private RichSelectOneChoice kassaId;
    private RichInputNumberSpinbox summa;
    private RichTreeTable treeTable;

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
    
    public void refresh() {
        AdfFacesContext.getCurrentInstance().addPartialTarget(getTreeTable());
    }
    
    public void resetBindingValue(String expression, Object newValue) {
        FacesContext ctx = FacesContext.getCurrentInstance();
        Application app = ctx.getApplication();
        ExpressionFactory elFactory = app.getExpressionFactory();
        ELContext elContext = ctx.getELContext();
        ValueExpression valueExp = elFactory.createValueExpression(elContext, expression, Object.class);
        Class bindClass = valueExp.getType(elContext);
        valueExp.setValue(elContext, newValue);
    }

    public void onDialogPay(DialogEvent dialogEvent) {
        if (dialogEvent.getOutcome().name().equals("ok")) {
            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding oper = (OperationBinding) binding.getOperationBinding("paySelRow");
            oper.execute();
            
            refresh();
        }
    }

    public void onPopupPay(PopupFetchEvent popupFetchEvent) {
        resetBindingValue("#{bindings.paySelectedRows_kassaId1.inputValue}",null);
        try {
            getKassaId().resetValue();
        } catch (Exception e) {
            // TODO: Add catch code
            e.printStackTrace();
        }
        
        resetBindingValue("#{bindings.paySelectedRows_Summ1.inputValue}",null);
        try {
            getSumma().resetValue();
        } catch (Exception e) {
            // TODO: Add catch code
            e.printStackTrace();
        }
    }

    public void setTreeTable(RichTreeTable treeTable) {
        this.treeTable = treeTable;
    }

    public RichTreeTable getTreeTable() {
        return treeTable;
    }

    public void onRefresh(ActionEvent actionEvent) {
        refresh();
    }
}
