package ua.divas.model;

import java.math.BigDecimal;

import java.sql.Timestamp;

import java.util.UUID;

import oracle.jbo.Key;
import oracle.jbo.RowIterator;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.EntityDefImpl;
import oracle.jbo.server.EntityImpl;

import oracle.jbo.server.TransactionEvent;

import ua.divas.classes.DivasEntity;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Mon Sep 15 11:26:53 EEST 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class OrdersImpl extends DivasEntity {

    @Override
    protected void doDML(int i, TransactionEvent transactionEvent) {
        super.doDML(i, transactionEvent);
        String _id = this.getId();
        callStoredProcedure("ORDERS_ENTRY.orders_move_plan_acc(?)", new Object[] { _id });
    }

    @Override
    protected void callDeleted() {
        this.setDeleted(1);
    }

    @Override
    protected void callId() {
        this.setId(UUID.randomUUID().toString());
    }

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        Id,
        Dat,
        Num,
        KontragId,
        CurrId,
        KassaId,
        DivisionId,
        UserId,
        Kurs,
        Kratnost,
        Discription,
        Deleted,
        Version,
        Posted,
        FirmId,
        ActivitiesId,
        StatusId,
        ZamerId,
        DatComplete,
        DatZam,
        SummPlan,
        Currency,
        Divisions,
        Firms,
        Kassa,
        Kontragents,
        OrderStatus,
        TypeOfActivities,
        Users,
        OrdersTpUslugi,
        Kontragents1,
        OrdersTpOplaty,
        OrdersTpRashody,
        OrdersTpRashody1;
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
    public static final int DAT = AttributesEnum.Dat.index();
    public static final int NUM = AttributesEnum.Num.index();
    public static final int KONTRAGID = AttributesEnum.KontragId.index();
    public static final int CURRID = AttributesEnum.CurrId.index();
    public static final int KASSAID = AttributesEnum.KassaId.index();
    public static final int DIVISIONID = AttributesEnum.DivisionId.index();
    public static final int USERID = AttributesEnum.UserId.index();
    public static final int KURS = AttributesEnum.Kurs.index();
    public static final int KRATNOST = AttributesEnum.Kratnost.index();
    public static final int DISCRIPTION = AttributesEnum.Discription.index();
    public static final int DELETED = AttributesEnum.Deleted.index();
    public static final int VERSION = AttributesEnum.Version.index();
    public static final int POSTED = AttributesEnum.Posted.index();
    public static final int FIRMID = AttributesEnum.FirmId.index();
    public static final int ACTIVITIESID = AttributesEnum.ActivitiesId.index();
    public static final int STATUSID = AttributesEnum.StatusId.index();
    public static final int ZAMERID = AttributesEnum.ZamerId.index();
    public static final int DATCOMPLETE = AttributesEnum.DatComplete.index();
    public static final int DATZAM = AttributesEnum.DatZam.index();
    public static final int SUMMPLAN = AttributesEnum.SummPlan.index();
    public static final int CURRENCY = AttributesEnum.Currency.index();
    public static final int DIVISIONS = AttributesEnum.Divisions.index();
    public static final int FIRMS = AttributesEnum.Firms.index();
    public static final int KASSA = AttributesEnum.Kassa.index();
    public static final int KONTRAGENTS = AttributesEnum.Kontragents.index();
    public static final int ORDERSTATUS = AttributesEnum.OrderStatus.index();
    public static final int TYPEOFACTIVITIES = AttributesEnum.TypeOfActivities.index();
    public static final int USERS = AttributesEnum.Users.index();
    public static final int ORDERSTPUSLUGI = AttributesEnum.OrdersTpUslugi.index();
    public static final int KONTRAGENTS1 = AttributesEnum.Kontragents1.index();
    public static final int ORDERSTPOPLATY = AttributesEnum.OrdersTpOplaty.index();
    public static final int ORDERSTPRASHODY = AttributesEnum.OrdersTpRashody.index();
    public static final int ORDERSTPRASHODY1 = AttributesEnum.OrdersTpRashody1.index();

    /**
     * This is the default constructor (do not remove).
     */
    public OrdersImpl() {
    }

    /**
     * @return the definition object for this instance class.
     */
    public static synchronized EntityDefImpl getDefinitionObject() {
        return EntityDefImpl.findDefObject("ua.divas.model.Orders");
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
     * Gets the attribute value for Dat, using the alias name Dat.
     * @return the value of Dat
     */
    public Timestamp getDat() {
        return (Timestamp) getAttributeInternal(DAT);
    }

    /**
     * Sets <code>value</code> as the attribute value for Dat.
     * @param value value to set the Dat
     */
    public void setDat(Timestamp value) {
        setAttributeInternal(DAT, value);
    }

    /**
     * Gets the attribute value for Num, using the alias name Num.
     * @return the value of Num
     */
    public String getNum() {
        return (String) getAttributeInternal(NUM);
    }

    /**
     * Sets <code>value</code> as the attribute value for Num.
     * @param value value to set the Num
     */
    public void setNum(String value) {
        setAttributeInternal(NUM, value);
    }

    /**
     * Gets the attribute value for KontragId, using the alias name KontragId.
     * @return the value of KontragId
     */
    public String getKontragId() {
        return (String) getAttributeInternal(KONTRAGID);
    }

    /**
     * Sets <code>value</code> as the attribute value for KontragId.
     * @param value value to set the KontragId
     */
    public void setKontragId(String value) {
        setAttributeInternal(KONTRAGID, value);
    }

    /**
     * Gets the attribute value for CurrId, using the alias name CurrId.
     * @return the value of CurrId
     */
    public String getCurrId() {
        return (String) getAttributeInternal(CURRID);
    }

    /**
     * Sets <code>value</code> as the attribute value for CurrId.
     * @param value value to set the CurrId
     */
    public void setCurrId(String value) {
        setAttributeInternal(CURRID, value);
    }

    /**
     * Gets the attribute value for KassaId, using the alias name KassaId.
     * @return the value of KassaId
     */
    public String getKassaId() {
        return (String) getAttributeInternal(KASSAID);
    }

    /**
     * Sets <code>value</code> as the attribute value for KassaId.
     * @param value value to set the KassaId
     */
    public void setKassaId(String value) {
        setAttributeInternal(KASSAID, value);
    }

    /**
     * Gets the attribute value for DivisionId, using the alias name DivisionId.
     * @return the value of DivisionId
     */
    public String getDivisionId() {
        return (String) getAttributeInternal(DIVISIONID);
    }

    /**
     * Sets <code>value</code> as the attribute value for DivisionId.
     * @param value value to set the DivisionId
     */
    public void setDivisionId(String value) {
        setAttributeInternal(DIVISIONID, value);
    }

    /**
     * Gets the attribute value for UserId, using the alias name UserId.
     * @return the value of UserId
     */
    public String getUserId() {
        return (String) getAttributeInternal(USERID);
    }

    /**
     * Sets <code>value</code> as the attribute value for UserId.
     * @param value value to set the UserId
     */
    public void setUserId(String value) {
        setAttributeInternal(USERID, value);
    }

    /**
     * Gets the attribute value for Kurs, using the alias name Kurs.
     * @return the value of Kurs
     */
    public BigDecimal getKurs() {
        return (BigDecimal) getAttributeInternal(KURS);
    }

    /**
     * Sets <code>value</code> as the attribute value for Kurs.
     * @param value value to set the Kurs
     */
    public void setKurs(BigDecimal value) {
        setAttributeInternal(KURS, value);
    }

    /**
     * Gets the attribute value for Kratnost, using the alias name Kratnost.
     * @return the value of Kratnost
     */
    public Long getKratnost() {
        return (Long) getAttributeInternal(KRATNOST);
    }

    /**
     * Sets <code>value</code> as the attribute value for Kratnost.
     * @param value value to set the Kratnost
     */
    public void setKratnost(Long value) {
        setAttributeInternal(KRATNOST, value);
    }

    /**
     * Gets the attribute value for Discription, using the alias name Discription.
     * @return the value of Discription
     */
    public String getDiscription() {
        return (String) getAttributeInternal(DISCRIPTION);
    }

    /**
     * Sets <code>value</code> as the attribute value for Discription.
     * @param value value to set the Discription
     */
    public void setDiscription(String value) {
        setAttributeInternal(DISCRIPTION, value);
    }

    /**
     * Gets the attribute value for Deleted, using the alias name Deleted.
     * @return the value of Deleted
     */
    public Integer getDeleted() {
        return (Integer) getAttributeInternal(DELETED);
    }

    /**
     * Sets <code>value</code> as the attribute value for Deleted.
     * @param value value to set the Deleted
     */
    public void setDeleted(Integer value) {
        setAttributeInternal(DELETED, value);
    }

    /**
     * Gets the attribute value for Version, using the alias name Version.
     * @return the value of Version
     */
    public Timestamp getVersion() {
        return (Timestamp) getAttributeInternal(VERSION);
    }

    /**
     * Sets <code>value</code> as the attribute value for Version.
     * @param value value to set the Version
     */
    public void setVersion(Timestamp value) {
        setAttributeInternal(VERSION, value);
    }

    /**
     * Gets the attribute value for Posted, using the alias name Posted.
     * @return the value of Posted
     */
    public Integer getPosted() {
        return (Integer) getAttributeInternal(POSTED);
    }

    /**
     * Sets <code>value</code> as the attribute value for Posted.
     * @param value value to set the Posted
     */
    public void setPosted(Integer value) {
        setAttributeInternal(POSTED, value);
    }

    /**
     * Gets the attribute value for FirmId, using the alias name FirmId.
     * @return the value of FirmId
     */
    public String getFirmId() {
        return (String) getAttributeInternal(FIRMID);
    }

    /**
     * Sets <code>value</code> as the attribute value for FirmId.
     * @param value value to set the FirmId
     */
    public void setFirmId(String value) {
        setAttributeInternal(FIRMID, value);
    }

    /**
     * Gets the attribute value for ActivitiesId, using the alias name ActivitiesId.
     * @return the value of ActivitiesId
     */
    public String getActivitiesId() {
        return (String) getAttributeInternal(ACTIVITIESID);
    }

    /**
     * Sets <code>value</code> as the attribute value for ActivitiesId.
     * @param value value to set the ActivitiesId
     */
    public void setActivitiesId(String value) {
        setAttributeInternal(ACTIVITIESID, value);
    }

    /**
     * Gets the attribute value for StatusId, using the alias name StatusId.
     * @return the value of StatusId
     */
    public String getStatusId() {
        return (String) getAttributeInternal(STATUSID);
    }

    /**
     * Sets <code>value</code> as the attribute value for StatusId.
     * @param value value to set the StatusId
     */
    public void setStatusId(String value) {
        setAttributeInternal(STATUSID, value);
    }

    /**
     * Gets the attribute value for ZamerId, using the alias name ZamerId.
     * @return the value of ZamerId
     */
    public String getZamerId() {
        return (String) getAttributeInternal(ZAMERID);
    }

    /**
     * Sets <code>value</code> as the attribute value for ZamerId.
     * @param value value to set the ZamerId
     */
    public void setZamerId(String value) {
        setAttributeInternal(ZAMERID, value);
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
     * Gets the attribute value for DatZam, using the alias name DatZam.
     * @return the value of DatZam
     */
    public Timestamp getDatZam() {
        return (Timestamp) getAttributeInternal(DATZAM);
    }

    /**
     * Sets <code>value</code> as the attribute value for DatZam.
     * @param value value to set the DatZam
     */
    public void setDatZam(Timestamp value) {
        setAttributeInternal(DATZAM, value);
    }

    /**
     * Gets the attribute value for SummPlan, using the alias name SummPlan.
     * @return the value of SummPlan
     */
    public BigDecimal getSummPlan() {
        return (BigDecimal) getAttributeInternal(SUMMPLAN);
    }

    /**
     * Sets <code>value</code> as the attribute value for SummPlan.
     * @param value value to set the SummPlan
     */
    public void setSummPlan(BigDecimal value) {
        setAttributeInternal(SUMMPLAN, value);
    }

    /**
     * @return the associated entity CurrencyImpl.
     */
    public CurrencyImpl getCurrency() {
        return (CurrencyImpl) getAttributeInternal(CURRENCY);
    }

    /**
     * Sets <code>value</code> as the associated entity CurrencyImpl.
     */
    public void setCurrency(CurrencyImpl value) {
        setAttributeInternal(CURRENCY, value);
    }

    /**
     * @return the associated entity oracle.jbo.server.EntityImpl.
     */
    public DivisionsImpl getDivisions() {
        return (DivisionsImpl) getAttributeInternal(DIVISIONS);
    }

    /**
     * Sets <code>value</code> as the associated entity oracle.jbo.server.EntityImpl.
     */
    public void setDivisions(DivisionsImpl value) {
        setAttributeInternal(DIVISIONS, value);
    }

    /**
     * @return the associated entity oracle.jbo.server.EntityImpl.
     */
    public FirmsImpl getFirms() {
        return (FirmsImpl) getAttributeInternal(FIRMS);
    }

    /**
     * Sets <code>value</code> as the associated entity oracle.jbo.server.EntityImpl.
     */
    public void setFirms(FirmsImpl value) {
        setAttributeInternal(FIRMS, value);
    }

    /**
     * @return the associated entity oracle.jbo.server.EntityImpl.
     */
    public KassaImpl getKassa() {
        return (KassaImpl) getAttributeInternal(KASSA);
    }

    /**
     * Sets <code>value</code> as the associated entity oracle.jbo.server.EntityImpl.
     */
    public void setKassa(KassaImpl value) {
        setAttributeInternal(KASSA, value);
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
     * @return the associated entity oracle.jbo.server.EntityImpl.
     */
    public EntityImpl getOrderStatus() {
        return (EntityImpl) getAttributeInternal(ORDERSTATUS);
    }

    /**
     * Sets <code>value</code> as the associated entity oracle.jbo.server.EntityImpl.
     */
    public void setOrderStatus(EntityImpl value) {
        setAttributeInternal(ORDERSTATUS, value);
    }

    /**
     * @return the associated entity oracle.jbo.server.EntityImpl.
     */
    public TypeOfActivitiesImpl getTypeOfActivities() {
        return (TypeOfActivitiesImpl) getAttributeInternal(TYPEOFACTIVITIES);
    }

    /**
     * Sets <code>value</code> as the associated entity oracle.jbo.server.EntityImpl.
     */
    public void setTypeOfActivities(TypeOfActivitiesImpl value) {
        setAttributeInternal(TYPEOFACTIVITIES, value);
    }

    /**
     * @return the associated entity oracle.jbo.server.EntityImpl.
     */
    public UsersImpl getUsers() {
        return (UsersImpl) getAttributeInternal(USERS);
    }

    /**
     * Sets <code>value</code> as the associated entity oracle.jbo.server.EntityImpl.
     */
    public void setUsers(UsersImpl value) {
        setAttributeInternal(USERS, value);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getOrdersTpUslugi() {
        return (RowIterator) getAttributeInternal(ORDERSTPUSLUGI);
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
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getOrdersTpOplaty() {
        return (RowIterator) getAttributeInternal(ORDERSTPOPLATY);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getOrdersTpRashody() {
        return (RowIterator) getAttributeInternal(ORDERSTPRASHODY);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getOrdersTpRashody1() {
        return (RowIterator) getAttributeInternal(ORDERSTPRASHODY1);
    }

    /**
     * @param id key constituent

     * @return a Key object based on given key constituents.
     */
    public static Key createPrimaryKey(String id) {
        return new Key(new Object[] { id });
    }


}

