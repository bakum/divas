package ua.divas.bean;

import java.util.Iterator;
import java.util.List;

import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.el.MethodExpression;
import javax.el.ValueExpression;

import javax.faces.application.Application;
import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

import javax.faces.validator.ValidatorException;

import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCBindingContainer;
import oracle.adf.model.binding.DCIteratorBinding;
import oracle.adf.view.rich.component.rich.data.RichTreeTable;
import oracle.adf.view.rich.component.rich.input.RichInputNumberSpinbox;
import oracle.adf.view.rich.component.rich.input.RichSelectOneChoice;
import oracle.adf.view.rich.context.AdfFacesContext;
import oracle.adf.view.rich.event.DialogEvent;

import oracle.adf.view.rich.event.PopupFetchEvent;

import oracle.binding.BindingContainer;
import oracle.binding.OperationBinding;

import oracle.jbo.Row;
import oracle.jbo.RowNotFoundException;
import oracle.jbo.uicli.binding.JUCtrlHierBinding;
import oracle.jbo.uicli.binding.JUCtrlHierNodeBinding;
import oracle.jbo.uicli.binding.JUIteratorBinding;

import org.apache.myfaces.trinidad.event.SelectionEvent;
import org.apache.myfaces.trinidad.model.CollectionModel;
import org.apache.myfaces.trinidad.model.RowKeySet;

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
    
    public void setTreeTable(RichTreeTable treeTable) {
        this.treeTable = treeTable;
    }

    public RichTreeTable getTreeTable() {
        return treeTable;
    }

    public void onRefresh(ActionEvent actionEvent) {
        refresh();
    }
    
    private BindingContainer getBindings() {
        return BindingContext.getCurrent().getCurrentBindingsEntry();
    }
    
    public void onTreeSelect(SelectionEvent selectionEvent) {
        String adfSelectionListener = "#{bindings.VwKontragZamer1.treeModel.makeCurrent}";

        FacesContext fctx = FacesContext.getCurrentInstance();
        Application application = fctx.getApplication();
        ELContext elCtx = fctx.getELContext();
        ExpressionFactory exprFactory = application.getExpressionFactory();

        MethodExpression me = null;
        me = exprFactory.createMethodExpression(elCtx, adfSelectionListener, Object.class, new Class[] {
                                                SelectionEvent.class });
        me.invoke(elCtx, new Object[] { selectionEvent });

        RichTreeTable tree1 = this.getTreeTable();
        RowKeySet rks2 = tree1.getSelectedRowKeys();
        Iterator rksIterator = rks2.iterator();
        if (rksIterator.hasNext()) {
            List key = (List) rksIterator.next();
            JUCtrlHierBinding treeBinding = null;
            treeBinding = (JUCtrlHierBinding) ((CollectionModel) tree1.getValue()).getWrappedData();
            JUCtrlHierNodeBinding nodeBinding = treeBinding.findNodeByKeyPath(key);

            Row rw = nodeBinding.getRow();
            //print first row attribute. Note that in a tree you have to
            //determine the node type if you want to select node attributes
            //by name and not index
            String rowType = rw.getStructureDef().getDefName();
            System.out.println(rowType);

            DCIteratorBinding _treeIteratorBinding = null;
            _treeIteratorBinding = treeBinding.getDCIteratorBinding();
            JUIteratorBinding iterator = nodeBinding.getIteratorBinding();
            String keyStr = nodeBinding.getRowKey().toStringFormat(true);
            if (keyStr != null && rowType.matches("VwZamerMoves")) {
                DCIteratorBinding iter = (DCIteratorBinding) getBindings().get("VwZamerMoves1Iterator");
                try {
                    iter.setCurrentRowWithKey(keyStr);
                } catch (RowNotFoundException e) {
                    try {
                        iterator.setCurrentRowWithKey(keyStr);
                    } catch (RowNotFoundException er) {
                        System.out.println(er.getMessage());

                    }
                }
            }
        }
    }

    public void refresh() {
        DCBindingContainer binding = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = binding.findIteratorBinding("VwKontragZamer1Iterator");
        //String rks;
        if (it != null) {
            it.executeQuery();
        }
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

    public void onDialogRko(DialogEvent dialogEvent) {
        if (dialogEvent.getOutcome().name().equals("ok")) {
            DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
            DCIteratorBinding it = bd.findIteratorBinding("VwKontragZamer1Iterator");
            Row currRow = it.getCurrentRow();

            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding oper = (OperationBinding) binding.getOperationBinding("addRko");
            if (oper != null) {
                oper.getParamsMap().put("kontragId", currRow.getAttribute("Id").toString());
                oper.execute();

                refresh();
            }
        }
    }

    public void onPopupPay(PopupFetchEvent popupFetchEvent) {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        oracle.jbo.domain.Number lbn = null;
        if (!popupFetchEvent.getLaunchSourceClientId().contains("b2")) {
            DCIteratorBinding it = bd.findIteratorBinding("VwZamerMoves1Iterator");
            Row currRow = it.getCurrentRow();
            lbn = (oracle.jbo.domain.Number) currRow.getAttribute("BallForOrder");
        } else {
            DCIteratorBinding it = bd.findIteratorBinding("VwKontragZamer1Iterator");
            Row currRow = it.getCurrentRow();
            lbn = (oracle.jbo.domain.Number) currRow.getAttribute("DebtZamer");
        }
        //resetBindingValue("#{bindings.paySelectedRows_kassaId1.inputValue}", null);
        resetBindingValue("#{bindings.paySelectedRows_Summ1.inputValue}", lbn.bigDecimalValue().abs());
    }

    public void onPopupRko(PopupFetchEvent popupFetchEvent) {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        oracle.jbo.domain.Number lbn = null;
        if (!popupFetchEvent.getLaunchSourceClientId().contains("b4")) {
            DCIteratorBinding it = bd.findIteratorBinding("VwZamerMoves1Iterator");
            Row currRow = it.getCurrentRow();
            lbn = (oracle.jbo.domain.Number) currRow.getAttribute("BallForOrder");
        } else {
            DCIteratorBinding it = bd.findIteratorBinding("VwKontragZamer1Iterator");
            Row currRow = it.getCurrentRow();
            lbn = (oracle.jbo.domain.Number) currRow.getAttribute("DebtZamer");
        }
        //resetBindingValue("#{bindings.addRko_kassaId1.inputValue}", null);
        resetBindingValue("#{bindings.Summa.inputValue}", lbn.bigDecimalValue().abs());

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
