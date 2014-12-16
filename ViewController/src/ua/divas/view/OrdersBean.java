package ua.divas.view;


import java.math.BigDecimal;

import java.util.List;

import javax.el.ELContext;

import javax.el.ExpressionFactory;
import javax.el.ValueExpression;

import javax.faces.application.Application;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;
import javax.faces.event.ValueChangeEvent;

import oracle.adf.model.AttributeBinding;
import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCBindingContainer;
import oracle.adf.model.binding.DCIteratorBinding;
import oracle.adf.share.ADFContext;
import oracle.adf.view.rich.component.rich.data.RichTable;
import oracle.adf.view.rich.component.rich.input.RichInputComboboxListOfValues;
import oracle.adf.view.rich.component.rich.input.RichInputListOfValues;
import oracle.adf.view.rich.component.rich.input.RichInputText;
import oracle.adf.view.rich.component.rich.input.RichSelectOneChoice;
import oracle.adf.view.rich.event.DialogEvent;
import oracle.adf.view.rich.event.LaunchPopupEvent;
import oracle.adf.view.rich.event.PopupCanceledEvent;

import oracle.adf.view.rich.event.PopupFetchEvent;

import oracle.adf.view.rich.event.QueryEvent;
import oracle.adf.view.rich.model.AttributeCriterion;
import oracle.adf.view.rich.model.ConjunctionCriterion;
import oracle.adf.view.rich.model.Criterion;
import oracle.adf.view.rich.model.FilterableQueryDescriptor;

import oracle.adfinternal.view.faces.model.binding.FacesCtrlLOVBinding;

import oracle.binding.BindingContainer;
import oracle.binding.OperationBinding;

import oracle.jbo.Row;

public class OrdersBean {


    public OrdersBean() {
    }

    private RichSelectOneChoice division;
    private RichSelectOneChoice currency;
    private RichInputListOfValues kontrag;
    private RichInputText price;
    private RichInputText qtt;
    private RichTable mainTable;
    public Boolean refreshNeeded;

    public void setRefreshNeeded(Boolean refreshNeeded) {
        this.refreshNeeded = refreshNeeded;
    }

    public Boolean getRefreshNeeded() {
        return refreshNeeded;
    }

    public void setPrice(RichInputText price) {
        this.price = price;
    }

    public RichInputText getPrice() {
        return price;
    }

    public void setQtt(RichInputText qtt) {
        this.qtt = qtt;
    }

    public RichInputText getQtt() {
        return qtt;
    }

    public void setMainTable(RichTable mainTable) {
        this.mainTable = mainTable;
    }

    public RichTable getMainTable() {
        return mainTable;
    }

    private String upperCase(String s) {
        StringBuffer buf = new StringBuffer(s.toUpperCase());
        char ch;
        for (int k = 0, n = buf.length(); k < n; k++) {
            ch = buf.charAt(k);
            buf.setCharAt(k, ch >= 'а' && ch <= 'я' ? (char) (ch - 'а' + 'А') : (ch == 'ё' ? 'Ё' : ch));
        }
        return buf.toString();
    }

    private String firstUpperCase(String word) {
        if (word == null || word.isEmpty())
            return ""; //или return word;
        return word.substring(0, 1).toUpperCase() + word.substring(1);
    }

    public void setDivision(RichSelectOneChoice division) {
        this.division = division;
    }

    public RichSelectOneChoice getDivision() {
        return division;
    }

    public void setCurrency(RichSelectOneChoice currency) {
        this.currency = currency;
    }

    public RichSelectOneChoice getCurrency() {
        return currency;
    }

    public void setKontrag(RichInputListOfValues kontrag) {
        this.kontrag = kontrag;
    }

    public RichInputListOfValues getKontrag() {
        return kontrag;
    }

    public void refresh() {
        DCBindingContainer binding = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = binding.findIteratorBinding("OrdersView1Iterator");
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
    }

    public String commitChange() {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("Commit");
        ob.execute();
        refresh();
        ADFContext.getCurrent().getRequestScope().put("refreshNeeded", Boolean.TRUE);
        return null;
    }

    public String rollbackChange() {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("Rollback");
        ob.execute();
        refresh();
        return null;
    }

    public void onOrderCancel(PopupCanceledEvent popupCanceledEvent) {
        rollbackChange();
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("removeAllViewCriteria");
        if (ob != null) {
            ob.execute();
        }
    }

    public void dialogListener(DialogEvent dialogEvent) {
        if (dialogEvent.getOutcome().name().equals("ok")) {
            commitChange();
        } else if (dialogEvent.getOutcome().name().equals("cancel")) {
            rollbackChange();
        }
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("removeAllViewCriteria");
        if (ob != null) {
            ob.execute();
        }
    }

    public void onPopupFetch(PopupFetchEvent popupFetchEvent) {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("ExecuteWithParams");
        if (ob != null) {
            /* System.out.println((String) this.getCurrency().getValue());
            System.out.println((String) this.getDivision().getValue());
            ob.getParamsMap().put("currency", (String) this.getCurrency().getValue());
            ob.getParamsMap().put("division", (String) this.getDivision().getValue()); */
            ob.execute();

            DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
            DCIteratorBinding it = bd.findIteratorBinding("KassaVO1Iterator");
            if (it != null) {
                it.executeQuery();
            }
        }
        ob = binding.getOperationBinding("findKontragentById");
        ob.execute();
    }

    public void onDepChange(ValueChangeEvent valueChangeEvent) {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("ExecuteWithParams");
        if (ob != null) {
            System.out.println((String) this.getCurrency().getValue());
            System.out.println((String) this.getDivision().getValue());
            ob.getParamsMap().put("currency", (String) this.getCurrency().getValue());
            ob.getParamsMap().put("division", (String) this.getDivision().getValue());
            ob.execute();

            DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
            DCIteratorBinding it = bd.findIteratorBinding("KassaVO1Iterator");
            if (it != null) {
                it.executeQuery();
            }
        }
    }

    public void onKonChange(ValueChangeEvent valueChangeEvent) {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("findKontragentById");
        if (ob != null) {
            ob.getParamsMap().put("Id", (String) this.getKontrag().getValue());
            ob.execute();
        }
    }

    public void onLaunchLov(LaunchPopupEvent launchPopupEvent) {
        String submittedValue = (String) launchPopupEvent.getSubmittedValue();
        //only perform query if value is submitted
        if (submittedValue != null && submittedValue.length() > 0) {
            RichInputListOfValues lovComp = (RichInputListOfValues) launchPopupEvent.getComponent();
            FacesCtrlLOVBinding.ListOfValuesModelImpl lovModel = null;
            lovModel = (FacesCtrlLOVBinding.ListOfValuesModelImpl) lovComp.getModel();
            submittedValue = this.firstUpperCase(submittedValue);
            if (submittedValue != null) {
                try {
                    lovModel.getCriteria().getCurrentRow().setAttribute("Fullname", submittedValue);
                    lovModel.applyCriteria();
                    lovModel.performQuery(lovModel.getQueryDescriptor());
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public void onPopupCreateKontrag(PopupFetchEvent popupFetchEvent) {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("CreateInsert1");
        ob.execute();
    }

    private void setIsBuyer() {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("KontragentsView1Iterator");
        Row currRow = it.getCurrentRow();

        currRow.setAttribute("IsBuyer", new Integer(1));


    }

    private void setIsMeasurer() {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("KontragentsView1Iterator");
        Row currRow = it.getCurrentRow();

        currRow.setAttribute("IsMeasurer", new Integer(1));


    }

    private void setParentId() {

        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("KontragentsView1Iterator");
        Row currRow = it.getCurrentRow();
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding oper = (OperationBinding) binding.getOperationBinding("retrieveCustomersFirstParentId");
        String res = (String) oper.execute();
        currRow.setAttribute("ParentId", res);

    }

    private void setZamerParentId() {

        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("KontragentsView1Iterator");
        Row currRow = it.getCurrentRow();
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding oper = (OperationBinding) binding.getOperationBinding("retrieveZamerFirstParentId");
        String res = (String) oper.execute();
        currRow.setAttribute("ParentId", res);

    }

    public void onNewKontragentDialogListener(DialogEvent dialogEvent) {
        if (dialogEvent.getOutcome().name().equals("ok")) {
            this.setIsBuyer();
            this.setParentId();
            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding ob = binding.getOperationBinding("Commit");
            ob.execute();
            DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
            DCIteratorBinding it = bd.findIteratorBinding("KontragentsView1Iterator");
            if (it != null) {
                it.executeQuery();
            }
        }
    }

    public void onRefreshOrders(ActionEvent actionEvent) {
        this.refresh();
    }

    public void onNewZamerDialogListener(DialogEvent dialogEvent) {
        if (dialogEvent.getOutcome().name().equals("ok")) {
            this.setIsMeasurer();
            this.setZamerParentId();
            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding ob = binding.getOperationBinding("Commit");
            ob.execute();
            DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
            DCIteratorBinding it = bd.findIteratorBinding("KontragentsView1Iterator");
            if (it != null) {
                it.executeQuery();
            }
        }
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

    public void onNomChanged(ValueChangeEvent vce) {
        vce.getComponent().processUpdates(FacesContext.getCurrentInstance());
        //System.out.println(vce.getNewValue());
        String NomId = getValueFrmExpression("#{row.bindings.NomId.attributeValue}");
        System.out.println(NomId);
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("OrdersTpUslugiView2Iterator");
        Row currRow = it.getCurrentRow();
        currRow.setAttribute("MeasureId", null);
        currRow.setAttribute("Price", null);
        currRow.setAttribute("Summ", null);
        currRow.setAttribute("Quantity", null);

        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("retrieveMeasure");
        if (ob != null) {
            ob.getParamsMap().put("NomId", NomId);
            String measure = (String) ob.execute();
            System.out.println(measure);
            currRow.setAttribute("MeasureId", measure);
        }

        ob = binding.getOperationBinding("retrievePrice");
        if (ob != null) {
            ob.getParamsMap().put("NomId", NomId);
            BigDecimal price = (BigDecimal) ob.execute();
            System.out.println(price);
            currRow.setAttribute("Price", price);
        }
    }

    public void onPriceChange(ValueChangeEvent vce) {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("OrdersTpUslugiView2Iterator");
        Row currRow = it.getCurrentRow();
        BigDecimal p = (BigDecimal) getPrice().getValue();
        BigDecimal q = (BigDecimal) getQtt().getValue();
        System.out.println(p);
        System.out.println(q);
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("retrieveSumm");
        if (ob != null) {
            ob.getParamsMap().put("p", p);
            ob.getParamsMap().put("q", q);
            BigDecimal s = (BigDecimal) ob.execute();
            System.out.println(s);
            currRow.setAttribute("Summ", s);
        }
    }

    public void onFilterClear(ActionEvent actionEvent) {
        FilterableQueryDescriptor queryDescriptor = (FilterableQueryDescriptor) getMainTable().getFilterModel();
        if (queryDescriptor != null && queryDescriptor.getFilterConjunctionCriterion() != null) {
            ConjunctionCriterion cc = queryDescriptor.getFilterConjunctionCriterion();
            List<Criterion> lc = cc.getCriterionList();
            for (Criterion c : lc) {
                if (c instanceof AttributeCriterion) {
                    AttributeCriterion ac = (AttributeCriterion) c;
                    ac.setValue(null);
                }
            }
            getMainTable().queueEvent(new QueryEvent(getMainTable(), queryDescriptor));
        }
    }
}
