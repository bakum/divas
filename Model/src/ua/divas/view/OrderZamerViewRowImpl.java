package ua.divas.view;

import java.math.BigDecimal;

import java.sql.Timestamp;

import oracle.jbo.AttributeList;
import oracle.jbo.RowIterator;
import oracle.jbo.RowSet;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.ViewRowImpl;

import ua.divas.model.OrdersImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Wed Nov 05 22:49:41 EET 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class OrderZamerViewRowImpl extends ViewRowImpl {


    public static final int ENTITY_ORDERS = 0;

    @Override
    public boolean isAttributeUpdateable(int i) {
        BigDecimal editable = this.getOEditable();
        if (editable.intValue()==0) {
            return false;
        } else { 
        return super.isAttributeUpdateable(i);
            }
    }

    @Override
    protected void create(AttributeList attributeList) {
        this.setOEditable(new BigDecimal(1));
        //this.setForValidation(new Integer(2));
        super.create(attributeList);
    }

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        ActivitiesId,
        CurrId,
        Dat,
        Deleted,
        Discription,
        DivisionId,
        FirmId,
        Id,
        KassaId,
        KontragId,
        Kontragname,
        Kratnost,
        Kurs,
        Num,
        Posted,
        StatusId,
        OEditable,
        UserId,
        Version,
        ZamerId,
        Zamername,
        Adress,
        OrdersTpOplatyView,
        OrdersTpRashodyView,
        TypeOfActivitiesView1,
        CurrencyView1,
        DivisionsView1,
        FirmsView1,
        KassaView1,
        KontragentsView1,
        OrderStatusView1,
        UsersView1;
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


    public static final int ACTIVITIESID = AttributesEnum.ActivitiesId.index();
    public static final int CURRID = AttributesEnum.CurrId.index();
    public static final int DAT = AttributesEnum.Dat.index();
    public static final int DELETED = AttributesEnum.Deleted.index();
    public static final int DISCRIPTION = AttributesEnum.Discription.index();
    public static final int DIVISIONID = AttributesEnum.DivisionId.index();
    public static final int FIRMID = AttributesEnum.FirmId.index();
    public static final int ID = AttributesEnum.Id.index();
    public static final int KASSAID = AttributesEnum.KassaId.index();
    public static final int KONTRAGID = AttributesEnum.KontragId.index();
    public static final int KONTRAGNAME = AttributesEnum.Kontragname.index();
    public static final int KRATNOST = AttributesEnum.Kratnost.index();
    public static final int KURS = AttributesEnum.Kurs.index();
    public static final int NUM = AttributesEnum.Num.index();
    public static final int POSTED = AttributesEnum.Posted.index();
    public static final int STATUSID = AttributesEnum.StatusId.index();
    public static final int OEDITABLE = AttributesEnum.OEditable.index();
    public static final int USERID = AttributesEnum.UserId.index();
    public static final int VERSION = AttributesEnum.Version.index();
    public static final int ZAMERID = AttributesEnum.ZamerId.index();
    public static final int ZAMERNAME = AttributesEnum.Zamername.index();
    public static final int ADRESS = AttributesEnum.Adress.index();
    public static final int ORDERSTPOPLATYVIEW = AttributesEnum.OrdersTpOplatyView.index();
    public static final int ORDERSTPRASHODYVIEW = AttributesEnum.OrdersTpRashodyView.index();
    public static final int TYPEOFACTIVITIESVIEW1 = AttributesEnum.TypeOfActivitiesView1.index();
    public static final int CURRENCYVIEW1 = AttributesEnum.CurrencyView1.index();
    public static final int DIVISIONSVIEW1 = AttributesEnum.DivisionsView1.index();
    public static final int FIRMSVIEW1 = AttributesEnum.FirmsView1.index();
    public static final int KASSAVIEW1 = AttributesEnum.KassaView1.index();
    public static final int KONTRAGENTSVIEW1 = AttributesEnum.KontragentsView1.index();
    public static final int ORDERSTATUSVIEW1 = AttributesEnum.OrderStatusView1.index();
    public static final int USERSVIEW1 = AttributesEnum.UsersView1.index();

    /**
     * This is the default constructor (do not remove).
     */
    public OrderZamerViewRowImpl() {
    }

    /**
     * Gets Orders entity object.
     * @return the Orders
     */
    public OrdersImpl getOrders() {
        return (OrdersImpl) getEntity(ENTITY_ORDERS);
    }

    /**
     * Gets the attribute value for ACTIVITIES_ID using the alias name ActivitiesId.
     * @return the ACTIVITIES_ID
     */
    public String getActivitiesId() {
        return (String) getAttributeInternal(ACTIVITIESID);
    }

    /**
     * Sets <code>value</code> as attribute value for ACTIVITIES_ID using the alias name ActivitiesId.
     * @param value value to set the ACTIVITIES_ID
     */
    public void setActivitiesId(String value) {
        setAttributeInternal(ACTIVITIESID, value);
    }

    /**
     * Gets the attribute value for CURR_ID using the alias name CurrId.
     * @return the CURR_ID
     */
    public String getCurrId() {
        return (String) getAttributeInternal(CURRID);
    }

    /**
     * Sets <code>value</code> as attribute value for CURR_ID using the alias name CurrId.
     * @param value value to set the CURR_ID
     */
    public void setCurrId(String value) {
        setAttributeInternal(CURRID, value);
    }

    /**
     * Gets the attribute value for DAT using the alias name Dat.
     * @return the DAT
     */
    public Timestamp getDat() {
        return (Timestamp) getAttributeInternal(DAT);
    }

    /**
     * Sets <code>value</code> as attribute value for DAT using the alias name Dat.
     * @param value value to set the DAT
     */
    public void setDat(Timestamp value) {
        setAttributeInternal(DAT, value);
    }

    /**
     * Gets the attribute value for DELETED using the alias name Deleted.
     * @return the DELETED
     */
    public Integer getDeleted() {
        return (Integer) getAttributeInternal(DELETED);
    }

    /**
     * Sets <code>value</code> as attribute value for DELETED using the alias name Deleted.
     * @param value value to set the DELETED
     */
    public void setDeleted(Integer value) {
        setAttributeInternal(DELETED, value);
    }

    /**
     * Gets the attribute value for DISCRIPTION using the alias name Discription.
     * @return the DISCRIPTION
     */
    public String getDiscription() {
        return (String) getAttributeInternal(DISCRIPTION);
    }

    /**
     * Sets <code>value</code> as attribute value for DISCRIPTION using the alias name Discription.
     * @param value value to set the DISCRIPTION
     */
    public void setDiscription(String value) {
        setAttributeInternal(DISCRIPTION, value);
    }

    /**
     * Gets the attribute value for DIVISION_ID using the alias name DivisionId.
     * @return the DIVISION_ID
     */
    public String getDivisionId() {
        return (String) getAttributeInternal(DIVISIONID);
    }

    /**
     * Sets <code>value</code> as attribute value for DIVISION_ID using the alias name DivisionId.
     * @param value value to set the DIVISION_ID
     */
    public void setDivisionId(String value) {
        setAttributeInternal(DIVISIONID, value);
    }

    /**
     * Gets the attribute value for FIRM_ID using the alias name FirmId.
     * @return the FIRM_ID
     */
    public String getFirmId() {
        return (String) getAttributeInternal(FIRMID);
    }

    /**
     * Sets <code>value</code> as attribute value for FIRM_ID using the alias name FirmId.
     * @param value value to set the FIRM_ID
     */
    public void setFirmId(String value) {
        setAttributeInternal(FIRMID, value);
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
     * Gets the attribute value for KONTRAG_ID using the alias name KontragId.
     * @return the KONTRAG_ID
     */
    public String getKontragId() {
        return (String) getAttributeInternal(KONTRAGID);
    }

    /**
     * Sets <code>value</code> as attribute value for KONTRAG_ID using the alias name KontragId.
     * @param value value to set the KONTRAG_ID
     */
    public void setKontragId(String value) {
        setAttributeInternal(KONTRAGID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute Kontragname.
     * @return the Kontragname
     */
    public String getKontragname() {
        return (String) getAttributeInternal(KONTRAGNAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute Kontragname.
     * @param value value to set the  Kontragname
     */
    public void setKontragname(String value) {
        setAttributeInternal(KONTRAGNAME, value);
    }

    /**
     * Gets the attribute value for KRATNOST using the alias name Kratnost.
     * @return the KRATNOST
     */
    public Long getKratnost() {
        return (Long) getAttributeInternal(KRATNOST);
    }

    /**
     * Sets <code>value</code> as attribute value for KRATNOST using the alias name Kratnost.
     * @param value value to set the KRATNOST
     */
    public void setKratnost(Long value) {
        setAttributeInternal(KRATNOST, value);
    }

    /**
     * Gets the attribute value for KURS using the alias name Kurs.
     * @return the KURS
     */
    public BigDecimal getKurs() {
        return (BigDecimal) getAttributeInternal(KURS);
    }

    /**
     * Sets <code>value</code> as attribute value for KURS using the alias name Kurs.
     * @param value value to set the KURS
     */
    public void setKurs(BigDecimal value) {
        setAttributeInternal(KURS, value);
    }

    /**
     * Gets the attribute value for NUM using the alias name Num.
     * @return the NUM
     */
    public String getNum() {
        return (String) getAttributeInternal(NUM);
    }

    /**
     * Sets <code>value</code> as attribute value for NUM using the alias name Num.
     * @param value value to set the NUM
     */
    public void setNum(String value) {
        setAttributeInternal(NUM, value);
    }

    /**
     * Gets the attribute value for POSTED using the alias name Posted.
     * @return the POSTED
     */
    public Integer getPosted() {
        return (Integer) getAttributeInternal(POSTED);
    }

    /**
     * Sets <code>value</code> as attribute value for POSTED using the alias name Posted.
     * @param value value to set the POSTED
     */
    public void setPosted(Integer value) {
        setAttributeInternal(POSTED, value);
    }

    /**
     * Gets the attribute value for STATUS_ID using the alias name StatusId.
     * @return the STATUS_ID
     */
    public String getStatusId() {
        return (String) getAttributeInternal(STATUSID);
    }

    /**
     * Sets <code>value</code> as attribute value for STATUS_ID using the alias name StatusId.
     * @param value value to set the STATUS_ID
     */
    public void setStatusId(String value) {
        setAttributeInternal(STATUSID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute OEditable.
     * @return the OEditable
     */
    public BigDecimal getOEditable() {
        return (BigDecimal) getAttributeInternal(OEDITABLE);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute OEditable.
     * @param value value to set the  OEditable
     */
    public void setOEditable(BigDecimal value) {
        setAttributeInternal(OEDITABLE, value);
    }

    /**
     * Gets the attribute value for USER_ID using the alias name UserId.
     * @return the USER_ID
     */
    public String getUserId() {
        return (String) getAttributeInternal(USERID);
    }

    /**
     * Sets <code>value</code> as attribute value for USER_ID using the alias name UserId.
     * @param value value to set the USER_ID
     */
    public void setUserId(String value) {
        setAttributeInternal(USERID, value);
    }

    /**
     * Gets the attribute value for VERSION using the alias name Version.
     * @return the VERSION
     */
    public Timestamp getVersion() {
        return (Timestamp) getAttributeInternal(VERSION);
    }

    /**
     * Sets <code>value</code> as attribute value for VERSION using the alias name Version.
     * @param value value to set the VERSION
     */
    public void setVersion(Timestamp value) {
        setAttributeInternal(VERSION, value);
    }

    /**
     * Gets the attribute value for ZAMER_ID using the alias name ZamerId.
     * @return the ZAMER_ID
     */
    public String getZamerId() {
        return (String) getAttributeInternal(ZAMERID);
    }

    /**
     * Sets <code>value</code> as attribute value for ZAMER_ID using the alias name ZamerId.
     * @param value value to set the ZAMER_ID
     */
    public void setZamerId(String value) {
        setAttributeInternal(ZAMERID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute Zamername.
     * @return the Zamername
     */
    public String getZamername() {
        return (String) getAttributeInternal(ZAMERNAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute Zamername.
     * @param value value to set the  Zamername
     */
    public void setZamername(String value) {
        setAttributeInternal(ZAMERNAME, value);
    }

    /**
     * Gets the attribute value for the calculated attribute Adress.
     * @return the Adress
     */
    public String getAdress() {
        return (String) getAttributeInternal(ADRESS);
    }

    /**
     * Gets the associated <code>RowIterator</code> using master-detail link OrdersTpOplatyView.
     */
    public RowIterator getOrdersTpOplatyView() {
        return (RowIterator) getAttributeInternal(ORDERSTPOPLATYVIEW);
    }

    /**
     * Gets the associated <code>RowIterator</code> using master-detail link OrdersTpRashodyView.
     */
    public RowIterator getOrdersTpRashodyView() {
        return (RowIterator) getAttributeInternal(ORDERSTPRASHODYVIEW);
    }


    /**
     * Gets the view accessor <code>RowSet</code> TypeOfActivitiesView1.
     */
    public RowSet getTypeOfActivitiesView1() {
        return (RowSet) getAttributeInternal(TYPEOFACTIVITIESVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> CurrencyView1.
     */
    public RowSet getCurrencyView1() {
        return (RowSet) getAttributeInternal(CURRENCYVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> DivisionsView1.
     */
    public RowSet getDivisionsView1() {
        return (RowSet) getAttributeInternal(DIVISIONSVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> FirmsView1.
     */
    public RowSet getFirmsView1() {
        return (RowSet) getAttributeInternal(FIRMSVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> KassaView1.
     */
    public RowSet getKassaView1() {
        return (RowSet) getAttributeInternal(KASSAVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> KontragentsView1.
     */
    public RowSet getKontragentsView1() {
        return (RowSet) getAttributeInternal(KONTRAGENTSVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> OrderStatusView1.
     */
    public RowSet getOrderStatusView1() {
        return (RowSet) getAttributeInternal(ORDERSTATUSVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> UsersView1.
     */
    public RowSet getUsersView1() {
        return (RowSet) getAttributeInternal(USERSVIEW1);
    }
}

