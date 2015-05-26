package ua.divas.bean;

import java.math.BigDecimal;

import java.sql.SQLException;

import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.el.ValueExpression;

import javax.faces.application.Application;
import javax.faces.context.FacesContext;
import javax.faces.event.ValueChangeEvent;

import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCBindingContainer;
import oracle.adf.model.binding.DCDataControl;
import oracle.adf.model.binding.DCIteratorBinding;
import oracle.adf.view.rich.component.rich.input.RichInputListOfValues;
import oracle.adf.view.rich.component.rich.input.RichInputText;
import oracle.adf.view.rich.event.DialogEvent;
import oracle.adf.view.rich.event.LaunchPopupEvent;

import oracle.adf.view.rich.event.PopupCanceledEvent;
import oracle.adf.view.rich.event.PopupFetchEvent;

import oracle.adfinternal.view.faces.model.binding.FacesCtrlLOVBinding;

import oracle.binding.BindingContainer;
import oracle.binding.OperationBinding;

import oracle.jbo.Row;

import ua.divas.module.AppModuleImpl;

public class OrderjsfBean {
    private RichInputText price;
    private RichInputText qtt;
    private RichInputText konName;
    private RichInputText prorName;
    private RichInputText zatrName;

    public OrderjsfBean() {
    }

    public void setKonName(RichInputText konName) {
        this.konName = konName;
    }

    public RichInputText getKonName() {
        return konName;
    }

    public void setProrName(RichInputText prorName) {
        this.prorName = prorName;
    }

    public RichInputText getProrName() {
        return prorName;
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

    public void setZatrName(RichInputText zatrName) {
        this.zatrName = zatrName;
    }

    public RichInputText getZatrName() {
        return zatrName;
    }

    protected void refreshKontrag() {
        BindingContext bindingContext = BindingContext.getCurrent();
        DCDataControl dc =
            bindingContext.findDataControl("AppModuleDataControl"); // Name of application module in datacontrolBinding.cpx
        AppModuleImpl am = (AppModuleImpl) dc.getDataProvider();
        am.getKontragentsView1().executeQuery();
    }

    protected void refreshZatraty() {
        BindingContext bindingContext = BindingContext.getCurrent();
        DCDataControl dc =
            bindingContext.findDataControl("AppModuleDataControl"); // Name of application module in datacontrolBinding.cpx
        AppModuleImpl am = (AppModuleImpl) dc.getDataProvider();
        am.getZatratyView1().executeQuery();
    }

    public void onLaunchLov(LaunchPopupEvent launchPopupEvent) {
        String submittedValue = (String) launchPopupEvent.getSubmittedValue();
        //only perform query if value is submitted
        if (submittedValue != null && submittedValue.length() > 0) {
            RichInputListOfValues lovComp = (RichInputListOfValues) launchPopupEvent.getComponent();
            FacesCtrlLOVBinding.ListOfValuesModelImpl lovModel = null;
            lovModel = (FacesCtrlLOVBinding.ListOfValuesModelImpl) lovComp.getModel();
            //submittedValue = this.firstUpperCase(submittedValue);
            if (submittedValue != null) {
                try {
                    lovModel.getCriteria().getCurrentRow().setAttribute("Fullname", submittedValue);
                    lovModel.applyCriteria();
                    lovModel.performQuery(lovModel.getQueryDescriptor());
                } catch (Exception e) {
                    //applyBuyerCriteria();
                    e.printStackTrace();
                }
            }
        }
        //applyBuyerCriteria();
    }

    public void onPopupFetch(PopupFetchEvent popupFetchEvent) {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("findKontragentById");
        ob.execute();

    }

    public void onOrderCancel(PopupCanceledEvent popupCanceledEvent) {
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("removeAllViewCriteria");
        if (ob != null) {
            ob.execute();
        }
    }

    public void dialogListener(DialogEvent dialogEvent) {

        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("removeAllViewCriteria");
        if (ob != null) {
            ob.execute();
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

    private void setIsBuyer() {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("KontragentsView1Iterator");
        Row currRow = it.getCurrentRow();

        currRow.setAttribute("IsBuyer", new Integer(1));

    }

    private void setIsSupplier() {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("KontragentsView1Iterator");
        Row currRow = it.getCurrentRow();

        currRow.setAttribute("IsSupplier", new Integer(1));
    }

    private void setFullName() {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("KontragentsView1Iterator");
        Row currRow = it.getCurrentRow();

        currRow.setAttribute("Fullname", getKonName().getValue().toString());
    }

    private void setProrName() {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("KontragentsView1Iterator");
        Row currRow = it.getCurrentRow();

        currRow.setAttribute("Fullname", getProrName().getValue().toString());
    }

    private void setZatrName() {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("ZatratyView1Iterator");
        Row currRow = it.getCurrentRow();

        currRow.setAttribute("Fullname", getZatrName().getValue().toString());
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

    private void setSupplierParentId() {

        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("KontragentsView1Iterator");
        Row currRow = it.getCurrentRow();
        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding oper = (OperationBinding) binding.getOperationBinding("retrieveSupplierFirstParentId");
        String res = (String) oper.execute();
        currRow.setAttribute("ParentId", res);

    }

    public void onPopupCreateKontrag(PopupFetchEvent popupFetchEvent) {
        try {
            getKonName().setValue("");
        } catch (Exception e) {
            // TODO: Add catch code
            e.printStackTrace();
        }
    }

    public void onPopupCreatePror(PopupFetchEvent popupFetchEvent) {
        try {
            getProrName().setValue("");
        } catch (Exception e) {
            // TODO: Add catch code
            e.printStackTrace();
        }
    }

    public void onPopupCreateZatraty(PopupFetchEvent popupFetchEvent) {
        try {
            getZatrName().setValue("");
        } catch (Exception e) {
            // TODO: Add catch code
            e.printStackTrace();
        }
    }

    public void onNewKontragentDialogListener(DialogEvent dialogEvent) {
        if (dialogEvent.getOutcome().name().equals("ok")) {
            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding ob = binding.getOperationBinding("createKontrag");
            if (ob != null) {
                ob.getParamsMap().put("p_name", getKonName().getValue().toString());
                ob.getParamsMap().put("isSupp", 0);
                ob.getParamsMap().put("isMeasr", 0);
                ob.getParamsMap().put("isByer", 1);
                ob.execute();
            }
            //setKontragFullName();
            //setOtherParentId();
            //BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            //ob = binding.getOperationBinding("Commit");
            //ob.execute();
            refreshKontrag();  
        }
    }

    public void onNewSupplierDialogListener(DialogEvent dialogEvent) {
        if (dialogEvent.getOutcome().name().equals("ok")) {
            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding ob = binding.getOperationBinding("createKontrag");
            if (ob != null) {
                ob.getParamsMap().put("p_name", getProrName().getValue().toString());
                ob.getParamsMap().put("isSupp", 1);
                ob.getParamsMap().put("isMeasr", 0);
                ob.getParamsMap().put("isByer", 0);
                ob.execute();
            }
            //setKontragFullName();
            //setOtherParentId();
            //BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            //ob = binding.getOperationBinding("Commit");
            //ob.execute();
            refreshKontrag(); 
        }
    }

    public void onNewZatratyDialogListener(DialogEvent dialogEvent) {
        if (dialogEvent.getOutcome().name().equals("ok")) {
            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding ob = binding.getOperationBinding("createZatraty");
            if (ob != null) {
                ob.getParamsMap().put("p_name", getZatrName().getValue().toString());
                ob.execute();
            }
        }
    }

    public void onPayChange(ValueChangeEvent valueChangeEvent) {
        valueChangeEvent.getComponent().processUpdates(FacesContext.getCurrentInstance());
        //System.out.println(vce.getNewValue());
        String pId = getValueFrmExpression("#{row.bindings.PayId.attributeValue}");
        System.out.println(pId);
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("OrdersTpNachisleniaView2Iterator");
        Row currRow = it.getCurrentRow();
        currRow.setAttribute("Summ", null);
        currRow.setAttribute("CalcId", null);
        currRow.setAttribute("Percent", null);

        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("retrieveSumma");

        if (ob != null) {
            ob.getParamsMap().put("pId", pId);
            BigDecimal summa = (BigDecimal) ob.execute();
            System.out.println(summa);
            currRow.setAttribute("Summ", summa);
        }

        ob = binding.getOperationBinding("retrieveCalcId");
        if (ob != null) {
            ob.getParamsMap().put("pId", pId);
            String cid = (String) ob.execute();
            System.out.println(cid);
            currRow.setAttribute("CalcId", cid);
        }

        ob = binding.getOperationBinding("retrieveStavka");
        if (ob != null) {
            ob.getParamsMap().put("pId", pId);
            BigDecimal summa = (BigDecimal) ob.execute();
            System.out.println(summa);
            currRow.setAttribute("Percent", summa);
            if (summa.intValue() != 0) {
                String TotalStr = getValueFrmExpression("#{bindings.TotalSumm.attributeValue}");
                //System.out.println(TotalStr);
                BigDecimal TotalSumm = new BigDecimal(TotalStr);
                BigDecimal res = summa.divide(new BigDecimal(100)).multiply(TotalSumm).setScale(2, BigDecimal.ROUND_HALF_UP);
                currRow.setAttribute("Summ", res);
            }
        }
    }

    public void onCalcChange(ValueChangeEvent valueChangeEvent) {
        valueChangeEvent.getComponent().processUpdates(FacesContext.getCurrentInstance());
        //System.out.println(vce.getNewValue());
        //String pId = getValueFrmExpression("#{row.bindings.CalcId.attributeValue}");
        //System.out.println(pId);
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("OrdersTpNachisleniaView2Iterator");
        Row currRow = it.getCurrentRow();
        currRow.setAttribute("Summ", 0);
        currRow.setAttribute("Percent", 0);
    }

    public void onPercentChange(ValueChangeEvent valueChangeEvent) {
        valueChangeEvent.getComponent().processUpdates(FacesContext.getCurrentInstance());
        //System.out.println(vce.getNewValue());
        String TotalStr = getValueFrmExpression("#{bindings.TotalSumm.attributeValue}");
        System.out.println(TotalStr);
        BigDecimal TotalSumm = new BigDecimal(TotalStr);
        BigDecimal perc = (BigDecimal) valueChangeEvent.getNewValue();
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("OrdersTpNachisleniaView2Iterator");

        BigDecimal res = perc.divide(new BigDecimal(100)).multiply(TotalSumm).setScale(2, BigDecimal.ROUND_HALF_UP);

        Row currRow = it.getCurrentRow();
        currRow.setAttribute("Summ", res);
    }
}
