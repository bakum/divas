package ua.divas.view;

import java.math.BigDecimal;

import java.sql.Timestamp;

import oracle.jbo.AttributeList;
import oracle.jbo.RowSet;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.ViewRowImpl;

import ua.divas.model.OrdersTpUslugiImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Tue Dec 09 16:12:07 EET 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class OrdersTpUslugiViewRowImpl extends ViewRowImpl {


    public static final int ENTITY_ORDERSTPUSLUGI = 0;

    @Override
    public boolean isAttributeUpdateable(int i) {
        BigDecimal editable = this.getOtpuEditable();
        if (editable.intValue()==0) {
            return false;
        } else { 
        return super.isAttributeUpdateable(i);
            }
    }

    @Override
    protected void create(AttributeList attributeList) {
        this.setOtpuEditable(new BigDecimal(1));
        //this.setForValidation(new Integer(2));
        super.create(attributeList);
    }

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        Id,
        OrderId,
        NomId,
        Nomname,
        Price,
        Summ,
        DatComplete,
        SotrId,
        Sotrname,
        DatToPay,
        AddWork,
        GroupId,
        Groupname,
        MeasureId,
        PriceAdd,
        Quantity,
        OtpuEditable,
        OrdersView1,
        NomenklaturaView1,
        KontragentsView1,
        MeasureUnitView1;
        static AttributesEnum[] vals = null;
        ;
        private static final int firstIndex = 0;

        public int index() {
            return AttributesEnum.firstIndex() + ordinal();
        }

        public static final int firstIndex() {
            return firstIndex;
        }

        public static int count() {
            return AttributesEnum.firstIndex() + AttributesEnum.staticValues().length;
        }

        public static final AttributesEnum[] staticValues() {
            if (vals == null) {
                vals = AttributesEnum.values();
            }
            return vals;
        }
    }


    public static final int ID = AttributesEnum.Id.index();
    public static final int ORDERID = AttributesEnum.OrderId.index();
    public static final int NOMID = AttributesEnum.NomId.index();
    public static final int NOMNAME = AttributesEnum.Nomname.index();
    public static final int PRICE = AttributesEnum.Price.index();
    public static final int SUMM = AttributesEnum.Summ.index();
    public static final int DATCOMPLETE = AttributesEnum.DatComplete.index();
    public static final int SOTRID = AttributesEnum.SotrId.index();
    public static final int SOTRNAME = AttributesEnum.Sotrname.index();
    public static final int DATTOPAY = AttributesEnum.DatToPay.index();
    public static final int ADDWORK = AttributesEnum.AddWork.index();
    public static final int GROUPID = AttributesEnum.GroupId.index();
    public static final int GROUPNAME = AttributesEnum.Groupname.index();
    public static final int MEASUREID = AttributesEnum.MeasureId.index();
    public static final int PRICEADD = AttributesEnum.PriceAdd.index();
    public static final int QUANTITY = AttributesEnum.Quantity.index();
    public static final int OTPUEDITABLE = AttributesEnum.OtpuEditable.index();
    public static final int ORDERSVIEW1 = AttributesEnum.OrdersView1.index();
    public static final int NOMENKLATURAVIEW1 = AttributesEnum.NomenklaturaView1.index();
    public static final int KONTRAGENTSVIEW1 = AttributesEnum.KontragentsView1.index();
    public static final int MEASUREUNITVIEW1 = AttributesEnum.MeasureUnitView1.index();

    /**
     * This is the default constructor (do not remove).
     */
    public OrdersTpUslugiViewRowImpl() {
    }

    /**
     * Gets OrdersTpUslugi entity object.
     * @return the OrdersTpUslugi
     */
    public OrdersTpUslugiImpl getOrdersTpUslugi() {
        return (OrdersTpUslugiImpl) getEntity(ENTITY_ORDERSTPUSLUGI);
    }

    /**
     * Gets the attribute value for ID using the alias name Id.
     * @return the ID
     */
    public String getId() {
        return (String) getAttributeInternal(ID);
    }

    /**
     * Sets <code>value</code> as attribute value for ID using the alias name Id.
     * @param value value to set the ID
     */
    public void setId(String value) {
        setAttributeInternal(ID, value);
    }

    /**
     * Gets the attribute value for ORDER_ID using the alias name OrderId.
     * @return the ORDER_ID
     */
    public String getOrderId() {
        return (String) getAttributeInternal(ORDERID);
    }

    /**
     * Sets <code>value</code> as attribute value for ORDER_ID using the alias name OrderId.
     * @param value value to set the ORDER_ID
     */
    public void setOrderId(String value) {
        setAttributeInternal(ORDERID, value);
    }

    /**
     * Gets the attribute value for NOM_ID using the alias name NomId.
     * @return the NOM_ID
     */
    public String getNomId() {
        return (String) getAttributeInternal(NOMID);
    }

    /**
     * Sets <code>value</code> as attribute value for NOM_ID using the alias name NomId.
     * @param value value to set the NOM_ID
     */
    public void setNomId(String value) {
        setAttributeInternal(NOMID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute Nomname.
     * @return the Nomname
     */
    public String getNomname() {
        return (String) getAttributeInternal(NOMNAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute Nomname.
     * @param value value to set the  Nomname
     */
    public void setNomname(String value) {
        setAttributeInternal(NOMNAME, value);
    }

    /**
     * Gets the attribute value for PRICE using the alias name Price.
     * @return the PRICE
     */
    public BigDecimal getPrice() {
        return (BigDecimal) getAttributeInternal(PRICE);
    }

    /**
     * Sets <code>value</code> as attribute value for PRICE using the alias name Price.
     * @param value value to set the PRICE
     */
    public void setPrice(BigDecimal value) {
        setAttributeInternal(PRICE, value);
    }

    /**
     * Gets the attribute value for SUMM using the alias name Summ.
     * @return the SUMM
     */
    public BigDecimal getSumm() {
        return (BigDecimal) getAttributeInternal(SUMM);
    }

    /**
     * Sets <code>value</code> as attribute value for SUMM using the alias name Summ.
     * @param value value to set the SUMM
     */
    public void setSumm(BigDecimal value) {
        setAttributeInternal(SUMM, value);
    }

    /**
     * Gets the attribute value for DAT_COMPLETE using the alias name DatComplete.
     * @return the DAT_COMPLETE
     */
    public Timestamp getDatComplete() {
        return (Timestamp) getAttributeInternal(DATCOMPLETE);
    }

    /**
     * Sets <code>value</code> as attribute value for DAT_COMPLETE using the alias name DatComplete.
     * @param value value to set the DAT_COMPLETE
     */
    public void setDatComplete(Timestamp value) {
        setAttributeInternal(DATCOMPLETE, value);
    }

    /**
     * Gets the attribute value for SOTR_ID using the alias name SotrId.
     * @return the SOTR_ID
     */
    public String getSotrId() {
        return (String) getAttributeInternal(SOTRID);
    }

    /**
     * Sets <code>value</code> as attribute value for SOTR_ID using the alias name SotrId.
     * @param value value to set the SOTR_ID
     */
    public void setSotrId(String value) {
        setAttributeInternal(SOTRID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute Sotrname.
     * @return the Sotrname
     */
    public String getSotrname() {
        return (String) getAttributeInternal(SOTRNAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute Sotrname.
     * @param value value to set the  Sotrname
     */
    public void setSotrname(String value) {
        setAttributeInternal(SOTRNAME, value);
    }

    /**
     * Gets the attribute value for DAT_TO_PAY using the alias name DatToPay.
     * @return the DAT_TO_PAY
     */
    public Timestamp getDatToPay() {
        return (Timestamp) getAttributeInternal(DATTOPAY);
    }

    /**
     * Sets <code>value</code> as attribute value for DAT_TO_PAY using the alias name DatToPay.
     * @param value value to set the DAT_TO_PAY
     */
    public void setDatToPay(Timestamp value) {
        setAttributeInternal(DATTOPAY, value);
    }

    /**
     * Gets the attribute value for ADD_WORK using the alias name AddWork.
     * @return the ADD_WORK
     */
    public String getAddWork() {
        return (String) getAttributeInternal(ADDWORK);
    }

    /**
     * Sets <code>value</code> as attribute value for ADD_WORK using the alias name AddWork.
     * @param value value to set the ADD_WORK
     */
    public void setAddWork(String value) {
        setAttributeInternal(ADDWORK, value);
    }

    /**
     * Gets the attribute value for GROUP_ID using the alias name GroupId.
     * @return the GROUP_ID
     */
    public String getGroupId() {
        return (String) getAttributeInternal(GROUPID);
    }

    /**
     * Sets <code>value</code> as attribute value for GROUP_ID using the alias name GroupId.
     * @param value value to set the GROUP_ID
     */
    public void setGroupId(String value) {
        setAttributeInternal(GROUPID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute Groupname.
     * @return the Groupname
     */
    public String getGroupname() {
        return (String) getAttributeInternal(GROUPNAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute Groupname.
     * @param value value to set the  Groupname
     */
    public void setGroupname(String value) {
        setAttributeInternal(GROUPNAME, value);
    }

    /**
     * Gets the attribute value for MEASURE_ID using the alias name MeasureId.
     * @return the MEASURE_ID
     */
    public String getMeasureId() {
        return (String) getAttributeInternal(MEASUREID);
    }

    /**
     * Sets <code>value</code> as attribute value for MEASURE_ID using the alias name MeasureId.
     * @param value value to set the MEASURE_ID
     */
    public void setMeasureId(String value) {
        setAttributeInternal(MEASUREID, value);
    }

    /**
     * Gets the attribute value for PRICE_ADD using the alias name PriceAdd.
     * @return the PRICE_ADD
     */
    public BigDecimal getPriceAdd() {
        return (BigDecimal) getAttributeInternal(PRICEADD);
    }

    /**
     * Sets <code>value</code> as attribute value for PRICE_ADD using the alias name PriceAdd.
     * @param value value to set the PRICE_ADD
     */
    public void setPriceAdd(BigDecimal value) {
        setAttributeInternal(PRICEADD, value);
    }

    /**
     * Gets the attribute value for QUANTITY using the alias name Quantity.
     * @return the QUANTITY
     */
    public BigDecimal getQuantity() {
        return (BigDecimal) getAttributeInternal(QUANTITY);
    }

    /**
     * Sets <code>value</code> as attribute value for QUANTITY using the alias name Quantity.
     * @param value value to set the QUANTITY
     */
    public void setQuantity(BigDecimal value) {
        setAttributeInternal(QUANTITY, value);
    }

    /**
     * Gets the attribute value for the calculated attribute OtpuEditable.
     * @return the OtpuEditable
     */
    public BigDecimal getOtpuEditable() {
        return (BigDecimal) getAttributeInternal(OTPUEDITABLE);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute OtpuEditable.
     * @param value value to set the  OtpuEditable
     */
    public void setOtpuEditable(BigDecimal value) {
        setAttributeInternal(OTPUEDITABLE, value);
    }

    /**
     * Gets the view accessor <code>RowSet</code> OrdersView1.
     */
    public RowSet getOrdersView1() {
        return (RowSet) getAttributeInternal(ORDERSVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> NomenklaturaView1.
     */
    public RowSet getNomenklaturaView1() {
        return (RowSet) getAttributeInternal(NOMENKLATURAVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> KontragentsView1.
     */
    public RowSet getKontragentsView1() {
        return (RowSet) getAttributeInternal(KONTRAGENTSVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> MeasureUnitView1.
     */
    public RowSet getMeasureUnitView1() {
        return (RowSet) getAttributeInternal(MEASUREUNITVIEW1);
    }
}

