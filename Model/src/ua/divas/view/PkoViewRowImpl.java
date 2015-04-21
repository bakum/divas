package ua.divas.view;

import java.math.BigDecimal;

import java.sql.Timestamp;

import oracle.jbo.AttributeList;
import oracle.jbo.RowIterator;
import oracle.jbo.RowSet;
import oracle.jbo.domain.BFileDomain;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.ViewRowImpl;

import ua.divas.model.PkoImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Sun Apr 19 14:03:43 EEST 2015
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class PkoViewRowImpl extends ViewRowImpl {

    public static final int ENTITY_PKO = 0;

    @Override
    public boolean isAttributeUpdateable(int i) {
        BigDecimal editable = this.getPEditable();
        if (editable.intValue()==0) {
            return false;
        } else { 
        return super.isAttributeUpdateable(i);
            }
    }

    @Override
    protected void create(AttributeList attributeList) {
        this.setPEditable(new BigDecimal(1));
        //this.setForValidation(new Integer(2));
        super.create(attributeList);
    }

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        Id,
        Dat,
        Num,
        Deleted,
        Posted,
        DivisionId,
        UserId,
        Comments,
        Version,
        CurrId,
        KassaId,
        ActivitiesId,
        OperationId,
        KontragId,
        Kontragname,
        Summa,
        PEditable,
        VwPkoMoves,
        DivisionsView1,
        UsersView1,
        CurrencyView1,
        KassaView1,
        TypeOfActivitiesView1,
        OperationPkoView1,
        KontragentsView1;
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
    public static final int DAT = AttributesEnum.Dat.index();
    public static final int NUM = AttributesEnum.Num.index();
    public static final int DELETED = AttributesEnum.Deleted.index();
    public static final int POSTED = AttributesEnum.Posted.index();
    public static final int DIVISIONID = AttributesEnum.DivisionId.index();
    public static final int USERID = AttributesEnum.UserId.index();
    public static final int COMMENTS = AttributesEnum.Comments.index();
    public static final int VERSION = AttributesEnum.Version.index();
    public static final int CURRID = AttributesEnum.CurrId.index();
    public static final int KASSAID = AttributesEnum.KassaId.index();
    public static final int ACTIVITIESID = AttributesEnum.ActivitiesId.index();
    public static final int OPERATIONID = AttributesEnum.OperationId.index();
    public static final int KONTRAGID = AttributesEnum.KontragId.index();
    public static final int KONTRAGNAME = AttributesEnum.Kontragname.index();
    public static final int SUMMA = AttributesEnum.Summa.index();
    public static final int PEDITABLE = AttributesEnum.PEditable.index();
    public static final int VWPKOMOVES = AttributesEnum.VwPkoMoves.index();
    public static final int DIVISIONSVIEW1 = AttributesEnum.DivisionsView1.index();
    public static final int USERSVIEW1 = AttributesEnum.UsersView1.index();
    public static final int CURRENCYVIEW1 = AttributesEnum.CurrencyView1.index();
    public static final int KASSAVIEW1 = AttributesEnum.KassaView1.index();
    public static final int TYPEOFACTIVITIESVIEW1 = AttributesEnum.TypeOfActivitiesView1.index();
    public static final int OPERATIONPKOVIEW1 = AttributesEnum.OperationPkoView1.index();
    public static final int KONTRAGENTSVIEW1 = AttributesEnum.KontragentsView1.index();

    /**
     * This is the default constructor (do not remove).
     */
    public PkoViewRowImpl() {
    }

    /**
     * Gets Pko entity object.
     * @return the Pko
     */
    public PkoImpl getPko() {
        return (PkoImpl) getEntity(ENTITY_PKO);
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
     * Gets the attribute value for COMMENTS using the alias name Comments.
     * @return the COMMENTS
     */
    public String getComments() {
        return (String) getAttributeInternal(COMMENTS);
    }

    /**
     * Sets <code>value</code> as attribute value for COMMENTS using the alias name Comments.
     * @param value value to set the COMMENTS
     */
    public void setComments(String value) {
        setAttributeInternal(COMMENTS, value);
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
     * Gets the attribute value for OPERATION_ID using the alias name OperationId.
     * @return the OPERATION_ID
     */
    public String getOperationId() {
        return (String) getAttributeInternal(OPERATIONID);
    }

    /**
     * Sets <code>value</code> as attribute value for OPERATION_ID using the alias name OperationId.
     * @param value value to set the OPERATION_ID
     */
    public void setOperationId(String value) {
        setAttributeInternal(OPERATIONID, value);
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
     * Gets the attribute value for SUMMA using the alias name Summa.
     * @return the SUMMA
     */
    public BigDecimal getSumma() {
        return (BigDecimal) getAttributeInternal(SUMMA);
    }

    /**
     * Sets <code>value</code> as attribute value for SUMMA using the alias name Summa.
     * @param value value to set the SUMMA
     */
    public void setSumma(BigDecimal value) {
        setAttributeInternal(SUMMA, value);
    }

    /**
     * Gets the attribute value for the calculated attribute PEditable.
     * @return the PEditable
     */
    public BigDecimal getPEditable() {
        return (BigDecimal) getAttributeInternal(PEDITABLE);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute PEditable.
     * @param value value to set the  PEditable
     */
    public void setPEditable(BigDecimal value) {
        setAttributeInternal(PEDITABLE, value);
    }

    /**
     * Gets the associated <code>RowIterator</code> using master-detail link VwPkoMoves.
     */
    public RowIterator getVwPkoMoves() {
        return (RowIterator) getAttributeInternal(VWPKOMOVES);
    }

    /**
     * Gets the view accessor <code>RowSet</code> DivisionsView1.
     */
    public RowSet getDivisionsView1() {
        return (RowSet) getAttributeInternal(DIVISIONSVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> UsersView1.
     */
    public RowSet getUsersView1() {
        return (RowSet) getAttributeInternal(USERSVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> CurrencyView1.
     */
    public RowSet getCurrencyView1() {
        return (RowSet) getAttributeInternal(CURRENCYVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> KassaView1.
     */
    public RowSet getKassaView1() {
        return (RowSet) getAttributeInternal(KASSAVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> TypeOfActivitiesView1.
     */
    public RowSet getTypeOfActivitiesView1() {
        return (RowSet) getAttributeInternal(TYPEOFACTIVITIESVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> OperationPkoView1.
     */
    public RowSet getOperationPkoView1() {
        return (RowSet) getAttributeInternal(OPERATIONPKOVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> KontragentsView1.
     */
    public RowSet getKontragentsView1() {
        return (RowSet) getAttributeInternal(KONTRAGENTSVIEW1);
    }
}

