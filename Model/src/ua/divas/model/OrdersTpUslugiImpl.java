package ua.divas.model;

import java.math.BigDecimal;

import java.sql.Timestamp;

import java.util.UUID;

import oracle.jbo.Key;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.EntityDefImpl;
import oracle.jbo.server.EntityImpl;

import ua.divas.classes.DivasEntity;
import ua.divas.classes.DivasEntityNoDelete;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Tue Dec 09 14:20:19 EET 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class OrdersTpUslugiImpl extends DivasEntityNoDelete {

    @Override
    protected void callId() {
        this.setId(UUID.randomUUID().toString());
    }

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        Id,
        OrderId,
        NomId,
        Price,
        Summ,
        DatComplete,
        SotrId,
        DatToPay,
        AddWork,
        GroupId,
        MeasureId,
        PriceAdd,
        Quantity,
        Nomenklatura,
        Orders,
        Kontragents,
        Kontragents1,
        MeasureUnit;
        private static AttributesEnum[] vals = null;
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
    public static final int PRICE = AttributesEnum.Price.index();
    public static final int SUMM = AttributesEnum.Summ.index();
    public static final int DATCOMPLETE = AttributesEnum.DatComplete.index();
    public static final int SOTRID = AttributesEnum.SotrId.index();
    public static final int DATTOPAY = AttributesEnum.DatToPay.index();
    public static final int ADDWORK = AttributesEnum.AddWork.index();
    public static final int GROUPID = AttributesEnum.GroupId.index();
    public static final int MEASUREID = AttributesEnum.MeasureId.index();
    public static final int PRICEADD = AttributesEnum.PriceAdd.index();
    public static final int QUANTITY = AttributesEnum.Quantity.index();
    public static final int NOMENKLATURA = AttributesEnum.Nomenklatura.index();
    public static final int ORDERS = AttributesEnum.Orders.index();
    public static final int KONTRAGENTS = AttributesEnum.Kontragents.index();
    public static final int KONTRAGENTS1 = AttributesEnum.Kontragents1.index();
    public static final int MEASUREUNIT = AttributesEnum.MeasureUnit.index();

    /**
     * This is the default constructor (do not remove).
     */
    public OrdersTpUslugiImpl() {
    }

    /**
     * Gets the attribute value for Id, using the alias name Id.
     * @return the value of Id
     */
    public String getId() {
        return (String) getAttributeInternal(ID);
    }

    /**
     * Sets <code>value</code> as the attribute value for Id.
     * @param value value to set the Id
     */
    public void setId(String value) {
        setAttributeInternal(ID, value);
    }

    /**
     * Gets the attribute value for OrderId, using the alias name OrderId.
     * @return the value of OrderId
     */
    public String getOrderId() {
        return (String) getAttributeInternal(ORDERID);
    }

    /**
     * Sets <code>value</code> as the attribute value for OrderId.
     * @param value value to set the OrderId
     */
    public void setOrderId(String value) {
        setAttributeInternal(ORDERID, value);
    }

    /**
     * Gets the attribute value for NomId, using the alias name NomId.
     * @return the value of NomId
     */
    public String getNomId() {
        return (String) getAttributeInternal(NOMID);
    }

    /**
     * Sets <code>value</code> as the attribute value for NomId.
     * @param value value to set the NomId
     */
    public void setNomId(String value) {
        setAttributeInternal(NOMID, value);
    }

    /**
     * Gets the attribute value for Price, using the alias name Price.
     * @return the value of Price
     */
    public BigDecimal getPrice() {
        return (BigDecimal) getAttributeInternal(PRICE);
    }

    /**
     * Sets <code>value</code> as the attribute value for Price.
     * @param value value to set the Price
     */
    public void setPrice(BigDecimal value) {
        setAttributeInternal(PRICE, value);
    }

    /**
     * Gets the attribute value for Summ, using the alias name Summ.
     * @return the value of Summ
     */
    public BigDecimal getSumm() {
        return (BigDecimal) getAttributeInternal(SUMM);
    }

    /**
     * Sets <code>value</code> as the attribute value for Summ.
     * @param value value to set the Summ
     */
    public void setSumm(BigDecimal value) {
        setAttributeInternal(SUMM, value);
    }

    /**
     * Gets the attribute value for DatComplete, using the alias name DatComplete.
     * @return the value of DatComplete
     */
    public Timestamp getDatComplete() {
        return (Timestamp) getAttributeInternal(DATCOMPLETE);
    }

    /**
     * Sets <code>value</code> as the attribute value for DatComplete.
     * @param value value to set the DatComplete
     */
    public void setDatComplete(Timestamp value) {
        setAttributeInternal(DATCOMPLETE, value);
    }

    /**
     * Gets the attribute value for SotrId, using the alias name SotrId.
     * @return the value of SotrId
     */
    public String getSotrId() {
        return (String) getAttributeInternal(SOTRID);
    }

    /**
     * Sets <code>value</code> as the attribute value for SotrId.
     * @param value value to set the SotrId
     */
    public void setSotrId(String value) {
        setAttributeInternal(SOTRID, value);
    }

    /**
     * Gets the attribute value for DatToPay, using the alias name DatToPay.
     * @return the value of DatToPay
     */
    public Timestamp getDatToPay() {
        return (Timestamp) getAttributeInternal(DATTOPAY);
    }

    /**
     * Sets <code>value</code> as the attribute value for DatToPay.
     * @param value value to set the DatToPay
     */
    public void setDatToPay(Timestamp value) {
        setAttributeInternal(DATTOPAY, value);
    }

    /**
     * Gets the attribute value for AddWork, using the alias name AddWork.
     * @return the value of AddWork
     */
    public String getAddWork() {
        return (String) getAttributeInternal(ADDWORK);
    }

    /**
     * Sets <code>value</code> as the attribute value for AddWork.
     * @param value value to set the AddWork
     */
    public void setAddWork(String value) {
        setAttributeInternal(ADDWORK, value);
    }

    /**
     * Gets the attribute value for GroupId, using the alias name GroupId.
     * @return the value of GroupId
     */
    public String getGroupId() {
        return (String) getAttributeInternal(GROUPID);
    }

    /**
     * Sets <code>value</code> as the attribute value for GroupId.
     * @param value value to set the GroupId
     */
    public void setGroupId(String value) {
        setAttributeInternal(GROUPID, value);
    }

    /**
     * Gets the attribute value for MeasureId, using the alias name MeasureId.
     * @return the value of MeasureId
     */
    public String getMeasureId() {
        return (String) getAttributeInternal(MEASUREID);
    }

    /**
     * Sets <code>value</code> as the attribute value for MeasureId.
     * @param value value to set the MeasureId
     */
    public void setMeasureId(String value) {
        setAttributeInternal(MEASUREID, value);
    }

    /**
     * Gets the attribute value for PriceAdd, using the alias name PriceAdd.
     * @return the value of PriceAdd
     */
    public BigDecimal getPriceAdd() {
        return (BigDecimal) getAttributeInternal(PRICEADD);
    }

    /**
     * Sets <code>value</code> as the attribute value for PriceAdd.
     * @param value value to set the PriceAdd
     */
    public void setPriceAdd(BigDecimal value) {
        setAttributeInternal(PRICEADD, value);
    }

    /**
     * Gets the attribute value for Quantity, using the alias name Quantity.
     * @return the value of Quantity
     */
    public BigDecimal getQuantity() {
        return (BigDecimal) getAttributeInternal(QUANTITY);
    }

    /**
     * Sets <code>value</code> as the attribute value for Quantity.
     * @param value value to set the Quantity
     */
    public void setQuantity(BigDecimal value) {
        setAttributeInternal(QUANTITY, value);
    }

    /**
     * @return the associated entity NomenklaturaImpl.
     */
    public NomenklaturaImpl getNomenklatura() {
        return (NomenklaturaImpl) getAttributeInternal(NOMENKLATURA);
    }

    /**
     * Sets <code>value</code> as the associated entity NomenklaturaImpl.
     */
    public void setNomenklatura(NomenklaturaImpl value) {
        setAttributeInternal(NOMENKLATURA, value);
    }

    /**
     * @return the associated entity OrdersImpl.
     */
    public OrdersImpl getOrders() {
        return (OrdersImpl) getAttributeInternal(ORDERS);
    }

    /**
     * Sets <code>value</code> as the associated entity OrdersImpl.
     */
    public void setOrders(OrdersImpl value) {
        setAttributeInternal(ORDERS, value);
    }

    /**
     * @return the associated entity KontragentsImpl.
     */
    public KontragentsImpl getKontragents() {
        return (KontragentsImpl) getAttributeInternal(KONTRAGENTS);
    }

    /**
     * Sets <code>value</code> as the associated entity KontragentsImpl.
     */
    public void setKontragents(KontragentsImpl value) {
        setAttributeInternal(KONTRAGENTS, value);
    }

    /**
     * @return the associated entity KontragentsImpl.
     */
    public KontragentsImpl getKontragents1() {
        return (KontragentsImpl) getAttributeInternal(KONTRAGENTS1);
    }

    /**
     * Sets <code>value</code> as the associated entity KontragentsImpl.
     */
    public void setKontragents1(KontragentsImpl value) {
        setAttributeInternal(KONTRAGENTS1, value);
    }

    /**
     * @return the associated entity oracle.jbo.server.EntityImpl.
     */
    public EntityImpl getMeasureUnit() {
        return (EntityImpl) getAttributeInternal(MEASUREUNIT);
    }

    /**
     * Sets <code>value</code> as the associated entity oracle.jbo.server.EntityImpl.
     */
    public void setMeasureUnit(EntityImpl value) {
        setAttributeInternal(MEASUREUNIT, value);
    }

    /**
     * @param id key constituent

     * @return a Key object based on given key constituents.
     */
    public static Key createPrimaryKey(String id) {
        return new Key(new Object[] { id });
    }

    /**
     * @return the definition object for this instance class.
     */
    public static synchronized EntityDefImpl getDefinitionObject() {
        return EntityDefImpl.findDefObject("ua.divas.model.OrdersTpUslugi");
    }
}

