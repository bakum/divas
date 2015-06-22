package ua.divas.bean;

import java.math.BigDecimal;

import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.el.ValueExpression;

import javax.faces.application.Application;
import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

import javax.faces.validator.ValidatorException;

import oracle.adf.model.BindingContext;

import oracle.adf.view.rich.component.rich.data.RichTreeTable;

import oracle.adf.view.rich.component.rich.input.RichInputNumberSpinbox;
import oracle.adf.view.rich.context.AdfFacesContext;

import oracle.adf.view.rich.event.DialogEvent;
import oracle.adf.view.rich.event.PopupFetchEvent;

import oracle.binding.BindingContainer;
import oracle.binding.OperationBinding;

public class BallansBean {
    private RichTreeTable treeTable;
    private RichInputNumberSpinbox summ;

    public BallansBean() {
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
    
    public String getValueFrmExpression(String data) {
        FacesContext fc = FacesContext.getCurrentInstance();
        Application app = fc.getApplication();
        ExpressionFactory elFactory = app.getExpressionFactory();
        ELContext elContext = fc.getELContext();
        ValueExpression valueExp = elFactory.createValueExpression(elContext, data, Object.class);
        String Message = null;
        Object obj = valueExp.getValue(elContext);
        if (obj != null) {
            Message = obj.toString();
        }
        return Message;
    }

    public void onExecute(ActionEvent actionEvent) {
        BindingContext bctx = BindingContext.getCurrent();
        BindingContainer bindings = bctx.getCurrentBindingsEntry();
        OperationBinding executeWithParams = bindings.getOperationBinding("ExecuteWithParams1");
        executeWithParams.execute();
        executeWithParams = bindings.getOperationBinding("ExecuteWithParams");
        executeWithParams.execute();

        AdfFacesContext.getCurrentInstance().addPartialTarget(getTreeTable());
    }
    
    public void refresh() {
        AdfFacesContext.getCurrentInstance().addPartialTarget(getTreeTable());
    }

    public void setTreeTable(RichTreeTable treeTable) {
        this.treeTable = treeTable;
    }

    public RichTreeTable getTreeTable() {
        return treeTable;
    }

    public void onProfitPopup(PopupFetchEvent popupFetchEvent) {
        /* popupFetchEvent.getComponent().processUpdates(FacesContext.getCurrentInstance());
        //System.out.println(vce.getNewValue());
        String NomId = getValueFrmExpression("#{row.bindings.NomId.attributeValue}"); */
        
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("getProfit");
        if (ob != null) {    
            BigDecimal profit = (BigDecimal) ob.execute();
            resetBindingValue("#{bindings.Summa.inputValue}",profit);
            /* try {
                getSumm().resetValue();
            } catch (Exception e) {
                // TODO: Add catch code
                e.printStackTrace();
            } */
        }
    }

    public void setSumm(RichInputNumberSpinbox summ) {
        this.summ = summ;
    }

    public RichInputNumberSpinbox getSumm() {
        return summ;
    }

    public void onDialogProfit(DialogEvent dialogEvent) {
        if (dialogEvent.getOutcome().name().equals("ok")) {
            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding oper = (OperationBinding) binding.getOperationBinding("addProfitDistrib");
            oper.execute();
            
            this.onExecute(null);
        }
    }
    
    private boolean isDigit(String st) {
        char[] utu = st.toCharArray();
        boolean isDigit = true;
        for (int i = 0; i < st.length(); i++) {
            if (!Character.isDigit(utu[i])) {
                isDigit = false;
                break;
            }
        }
        return isDigit;
    }

    public void onValidateSumm(FacesContext facesContext, UIComponent uIComponent, Object object) {
        boolean fatal = false;

        if ((object == null) || (object.toString().isEmpty())) {
            fatal = true;
        /* } else if (!isDigit(object.toString())) {
            fatal = true; */
        } else if (Float.parseFloat(object.toString()) <= 0) {
            fatal = true;
        }

        if (fatal) {
            /*  facesContext.addMessage(clientId,
                                    new FacesMessage(FacesMessage.SEVERITY_FATAL, "Ошибка",
                                                     "Заработная плата должна быть > 0")); */
            throw new ValidatorException(new FacesMessage(FacesMessage.SEVERITY_ERROR, "Ошибка валидации",
                                                          "Сумма должна быть > 0"));
        }


    }
}
