package ua.divas.view;

import java.math.BigDecimal;

import java.sql.Timestamp;

import oracle.jbo.AttributeList;
import oracle.jbo.RowSet;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.EntityImpl;
import oracle.jbo.server.ViewRowImpl;

import ua.divas.model.OrdersTpRashodyImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Sat Dec 27 22:23:50 EET 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class OrdersTpRashodyViewRowImpl extends ViewRowImpl {


    public static final int ENTITY_ORDERSTPRASHODY = 0;

    @Override
    public boolean isAttributeUpdateable(int i) {
        BigDecimal editable = this.getOtprEditable();
        if (editable.intValue()==0) {
            return false;
        } else { 
        return super.isAttributeUpdateable(i);
            }
    }

    @Override
    protected void create(AttributeList attributeList) {
        this.setOtprEditable(new BigDecimal(1));
        //this.setForValidation(new Integer(2));
        super.create(attributeList);
    }

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        Id,
        OrderId,
        DatRash,
        KontrId,
        Kontname,
        Summ,
        Description,
        ZatratyId,
        KassaId,
        Zatrname,
        OtprEditable,
        OrdersView1,
        KontragentsView1,
        ZatratyView1,
        KassaSettingsView1;
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
    public static final int DATRASH = AttributesEnum.DatRash.index();
    public static final int KONTRID = AttributesEnum.KontrId.index();
    public static final int KONTNAME = AttributesEnum.Kontname.index();
    public static final int SUMM = AttributesEnum.Summ.index();
    public static final int DESCRIPTION = AttributesEnum.Description.index();
    public static final int ZATRATYID = AttributesEnum.ZatratyId.index();
    public static final int KASSAID = AttributesEnum.KassaId.index();
    public static final int ZATRNAME = AttributesEnum.Zatrname.index();
    public static final int OTPREDITABLE = AttributesEnum.OtprEditable.index();
    public static final int ORDERSVIEW1 = AttributesEnum.OrdersView1.index();
    public static final int KONTRAGENTSVIEW1 = AttributesEnum.KontragentsView1.index();
    public static final int ZATRATYVIEW1 = AttributesEnum.ZatratyView1.index();
    public static final int KASSASETTINGSVIEW1 = AttributesEnum.KassaSettingsView1.index();

    /**
     * This is the default constructor (do not remove).
     */
    public OrdersTpRashodyViewRowImpl() {
    }

    /**
     * Gets OrdersTpRashody entity object.
     * @return the OrdersTpRashody
     */
    public OrdersTpRashodyImpl getOrdersTpRashody() {
        return (OrdersTpRashodyImpl) getEntity(ENTITY_ORDERSTPRASHODY);
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
     * Gets the attribute value for DAT_RASH using the alias name DatRash.
     * @return the DAT_RASH
     */
    public Timestamp getDatRash() {
        return (Timestamp) getAttributeInternal(DATRASH);
    }

    /**
     * Sets <code>value</code> as attribute value for DAT_RASH using the alias name DatRash.
     * @param value value to set the DAT_RASH
     */
    public void setDatRash(Timestamp value) {
        setAttributeInternal(DATRASH, value);
    }

    /**
     * Gets the attribute value for KONTR_ID using the alias name KontrId.
     * @return the KONTR_ID
     */
    public String getKontrId() {
        return (String) getAttributeInternal(KONTRID);
    }

    /**
     * Sets <code>value</code> as attribute value for KONTR_ID using the alias name KontrId.
     * @param value value to set the KONTR_ID
     */
    public void setKontrId(String value) {
        setAttributeInternal(KONTRID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute Kontname.
     * @return the Kontname
     */
    public String getKontname() {
        return (String) getAttributeInternal(KONTNAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute Kontname.
     * @param value value to set the  Kontname
     */
    public void setKontname(String value) {
        setAttributeInternal(KONTNAME, value);
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
     * Gets the attribute value for DESCRIPTION using the alias name Description.
     * @return the DESCRIPTION
     */
    public String getDescription() {
        return (String) getAttributeInternal(DESCRIPTION);
    }

    /**
     * Sets <code>value</code> as attribute value for DESCRIPTION using the alias name Description.
     * @param value value to set the DESCRIPTION
     */
    public void setDescription(String value) {
        setAttributeInternal(DESCRIPTION, value);
    }

    /**
     * Gets the attribute value for ZATRATY_ID using the alias name ZatratyId.
     * @return the ZATRATY_ID
     */
    public String getZatratyId() {
        return (String) getAttributeInternal(ZATRATYID);
    }

    /**
     * Sets <code>value</code> as attribute value for ZATRATY_ID using the alias name ZatratyId.
     * @param value value to set the ZATRATY_ID
     */
    public void setZatratyId(String value) {
        setAttributeInternal(ZATRATYID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute Zatrname.
     * @return the Zatrname
     */
    public String getZatrname() {
        return (String) getAttributeInternal(ZATRNAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute Zatrname.
     * @param value value to set the  Zatrname
     */
    public void setZatrname(String value) {
        setAttributeInternal(ZATRNAME, value);
    }

    /**
     * Gets the attribute value for the calculated attribute OtprEditable.
     * @return the OtprEditable
     */
    public BigDecimal getOtprEditable() {
        return (BigDecimal) getAttributeInternal(OTPREDITABLE);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute OtprEditable.
     * @param value value to set the  OtprEditable
     */
    public void setOtprEditable(BigDecimal value) {
        setAttributeInternal(OTPREDITABLE, value);
    }

    /**
     * Gets the attribute value for KASSA_ID using the alias name KassaId.
     * @return the KASSA_ID
     */
    public String getKassaId() {
        return (String) getAttributeInternal(KASSAID);
    }

    /**
     * Sets <code>value</code> as attribute value for KASSA_ID using the alias name KassaId.
     * @param value value to set the KASSA_ID
     */
    public void setKassaId(String value) {
        setAttributeInternal(KASSAID, value);
    }

    /**
     * Gets the view accessor <code>RowSet</code> OrdersView1.
     */
    public RowSet getOrdersView1() {
        return (RowSet) getAttributeInternal(ORDERSVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> KontragentsView1.
     */
    public RowSet getKontragentsView1() {
        return (RowSet) getAttributeInternal(KONTRAGENTSVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> ZatratyView1.
     */
    public RowSet getZatratyView1() {
        return (RowSet) getAttributeInternal(ZATRATYVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> KassaSettingsView1.
     */
    public RowSet getKassaSettingsView1() {
        return (RowSet) getAttributeInternal(KASSASETTINGSVIEW1);
    }
}

