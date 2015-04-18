package ua.divas.bean;

import java.math.BigDecimal;

import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.el.ValueExpression;

import javax.faces.application.Application;
import javax.faces.context.FacesContext;
import javax.faces.event.ValueChangeEvent;

import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCBindingContainer;
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

public class OrderjsfBean {
    private RichInputText price;
    private RichInputText qtt;

    public OrderjsfBean() {
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
}
