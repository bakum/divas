package ua.divas.view;

import java.math.BigDecimal;

import java.sql.Timestamp;

import oracle.jbo.AttributeList;
import oracle.jbo.RowIterator;
import oracle.jbo.domain.Number;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.ViewRowImpl;

import ua.divas.model.KontragentsImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Sun Apr 26 14:27:32 EEST 2015
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class ProrabViewRowImpl extends ViewRowImpl {


    public static final int ENTITY_KONTRAGENTS = 0;

    @Override
    public boolean isAttributeUpdateable(int i) {
        BigDecimal editable = this.getEditable();
        if (editable.intValue()==0) {
            return false;
        } else { 
        return super.isAttributeUpdateable(i);
            }
    }

    @Override
    protected void create(AttributeList attributeList) {
        this.setEditable(new BigDecimal(1));
        //this.setForValidation(new Integer(2));
        super.create(attributeList);
    }

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        Deleted,
        Fullname,
        Id,
        Inn,
        IsBuyer,
        IsGroup,
        IsMeasurer,
        IsSupplier,
        Kpp,
        Namefull,
        Okpo,
        ParentId,
        Predefined,
        Editable,
        UrFiz,
        UserId,
        Version,
        TotalSumm,
        TotalOrderSumm,
        DebtSupplier,
        ProrabReport,
        VwSupplierMoves;
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


    public static final int DELETED = AttributesEnum.Deleted.index();
    public static final int FULLNAME = AttributesEnum.Fullname.index();
    public static final int ID = AttributesEnum.Id.index();
    public static final int INN = AttributesEnum.Inn.index();
    public static final int ISBUYER = AttributesEnum.IsBuyer.index();
    public static final int ISGROUP = AttributesEnum.IsGroup.index();
    public static final int ISMEASURER = AttributesEnum.IsMeasurer.index();
    public static final int ISSUPPLIER = AttributesEnum.IsSupplier.index();
    public static final int KPP = AttributesEnum.Kpp.index();
    public static final int NAMEFULL = AttributesEnum.Namefull.index();
    public static final int OKPO = AttributesEnum.Okpo.index();
    public static final int PARENTID = AttributesEnum.ParentId.index();
    public static final int PREDEFINED = AttributesEnum.Predefined.index();
    public static final int EDITABLE = AttributesEnum.Editable.index();
    public static final int URFIZ = AttributesEnum.UrFiz.index();
    public static final int USERID = AttributesEnum.UserId.index();
    public static final int VERSION = AttributesEnum.Version.index();
    public static final int TOTALSUMM = AttributesEnum.TotalSumm.index();
    public static final int TOTALORDERSUMM = AttributesEnum.TotalOrderSumm.index();
    public static final int DEBTSUPPLIER = AttributesEnum.DebtSupplier.index();
    public static final int PRORABREPORT = AttributesEnum.ProrabReport.index();
    public static final int VWSUPPLIERMOVES = AttributesEnum.VwSupplierMoves.index();

    /**
     * This is the default constructor (do not remove).
     */
    public ProrabViewRowImpl() {
    }

    /**
     * Gets Kontragents entity object.
     * @return the Kontragents
     */
    public KontragentsImpl getKontragents() {
        return (KontragentsImpl) getEntity(ENTITY_KONTRAGENTS);
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
     * Gets the attribute value for FULLNAME using the alias name Fullname.
     * @return the FULLNAME
     */
    public String getFullname() {
        return (String) getAttributeInternal(FULLNAME);
    }

    /**
     * Sets <code>value</code> as attribute value for FULLNAME using the alias name Fullname.
     * @param value value to set the FULLNAME
     */
    public void setFullname(String value) {
        setAttributeInternal(FULLNAME, value);
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
     * Gets the attribute value for INN using the alias name Inn.
     * @return the INN
     */
    public String getInn() {
        return (String) getAttributeInternal(INN);
    }

    /**
     * Sets <code>value</code> as attribute value for INN using the alias name Inn.
     * @param value value to set the INN
     */
    public void setInn(String value) {
        setAttributeInternal(INN, value);
    }

    /**
     * Gets the attribute value for IS_BUYER using the alias name IsBuyer.
     * @return the IS_BUYER
     */
    public Integer getIsBuyer() {
        return (Integer) getAttributeInternal(ISBUYER);
    }

    /**
     * Sets <code>value</code> as attribute value for IS_BUYER using the alias name IsBuyer.
     * @param value value to set the IS_BUYER
     */
    public void setIsBuyer(Integer value) {
        setAttributeInternal(ISBUYER, value);
    }

    /**
     * Gets the attribute value for IS_GROUP using the alias name IsGroup.
     * @return the IS_GROUP
     */
    public Integer getIsGroup() {
        return (Integer) getAttributeInternal(ISGROUP);
    }

    /**
     * Sets <code>value</code> as attribute value for IS_GROUP using the alias name IsGroup.
     * @param value value to set the IS_GROUP
     */
    public void setIsGroup(Integer value) {
        setAttributeInternal(ISGROUP, value);
    }

    /**
     * Gets the attribute value for IS_MEASURER using the alias name IsMeasurer.
     * @return the IS_MEASURER
     */
    public Integer getIsMeasurer() {
        return (Integer) getAttributeInternal(ISMEASURER);
    }

    /**
     * Sets <code>value</code> as attribute value for IS_MEASURER using the alias name IsMeasurer.
     * @param value value to set the IS_MEASURER
     */
    public void setIsMeasurer(Integer value) {
        setAttributeInternal(ISMEASURER, value);
    }

    /**
     * Gets the attribute value for IS_SUPPLIER using the alias name IsSupplier.
     * @return the IS_SUPPLIER
     */
    public Integer getIsSupplier() {
        return (Integer) getAttributeInternal(ISSUPPLIER);
    }

    /**
     * Sets <code>value</code> as attribute value for IS_SUPPLIER using the alias name IsSupplier.
     * @param value value to set the IS_SUPPLIER
     */
    public void setIsSupplier(Integer value) {
        setAttributeInternal(ISSUPPLIER, value);
    }

    /**
     * Gets the attribute value for KPP using the alias name Kpp.
     * @return the KPP
     */
    public String getKpp() {
        return (String) getAttributeInternal(KPP);
    }

    /**
     * Sets <code>value</code> as attribute value for KPP using the alias name Kpp.
     * @param value value to set the KPP
     */
    public void setKpp(String value) {
        setAttributeInternal(KPP, value);
    }

    /**
     * Gets the attribute value for NAMEFULL using the alias name Namefull.
     * @return the NAMEFULL
     */
    public String getNamefull() {
        return (String) getAttributeInternal(NAMEFULL);
    }

    /**
     * Sets <code>value</code> as attribute value for NAMEFULL using the alias name Namefull.
     * @param value value to set the NAMEFULL
     */
    public void setNamefull(String value) {
        setAttributeInternal(NAMEFULL, value);
    }

    /**
     * Gets the attribute value for OKPO using the alias name Okpo.
     * @return the OKPO
     */
    public String getOkpo() {
        return (String) getAttributeInternal(OKPO);
    }

    /**
     * Sets <code>value</code> as attribute value for OKPO using the alias name Okpo.
     * @param value value to set the OKPO
     */
    public void setOkpo(String value) {
        setAttributeInternal(OKPO, value);
    }

    /**
     * Gets the attribute value for PARENT_ID using the alias name ParentId.
     * @return the PARENT_ID
     */
    public String getParentId() {
        return (String) getAttributeInternal(PARENTID);
    }

    /**
     * Sets <code>value</code> as attribute value for PARENT_ID using the alias name ParentId.
     * @param value value to set the PARENT_ID
     */
    public void setParentId(String value) {
        setAttributeInternal(PARENTID, value);
    }

    /**
     * Gets the attribute value for PREDEFINED using the alias name Predefined.
     * @return the PREDEFINED
     */
    public Integer getPredefined() {
        return (Integer) getAttributeInternal(PREDEFINED);
    }

    /**
     * Sets <code>value</code> as attribute value for PREDEFINED using the alias name Predefined.
     * @param value value to set the PREDEFINED
     */
    public void setPredefined(Integer value) {
        setAttributeInternal(PREDEFINED, value);
    }

    /**
     * Gets the attribute value for the calculated attribute Editable.
     * @return the Editable
     */
    public BigDecimal getEditable() {
        return (BigDecimal) getAttributeInternal(EDITABLE);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute Editable.
     * @param value value to set the  Editable
     */
    public void setEditable(BigDecimal value) {
        setAttributeInternal(EDITABLE, value);
    }

    /**
     * Gets the attribute value for UR_FIZ using the alias name UrFiz.
     * @return the UR_FIZ
     */
    public Integer getUrFiz() {
        return (Integer) getAttributeInternal(URFIZ);
    }

    /**
     * Sets <code>value</code> as attribute value for UR_FIZ using the alias name UrFiz.
     * @param value value to set the UR_FIZ
     */
    public void setUrFiz(Integer value) {
        setAttributeInternal(URFIZ, value);
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
     * Gets the attribute value for the calculated attribute TotalSumm.
     * @return the TotalSumm
     */
    public Number getTotalSumm() {
        return (Number) getAttributeInternal(TOTALSUMM);
    }

    /**
     * Gets the attribute value for the calculated attribute TotalOrderSumm.
     * @return the TotalOrderSumm
     */
    public Number getTotalOrderSumm() {
        return (Number) getAttributeInternal(TOTALORDERSUMM);
    }

    /**
     * Gets the attribute value for the calculated attribute DebtSupplier.
     * @return the DebtSupplier
     */
    public Number getDebtSupplier() {
        return (Number) getAttributeInternal(DEBTSUPPLIER);
    }

    /**
     * Gets the associated <code>RowIterator</code> using master-detail link ProrabReport.
     */
    public RowIterator getProrabReport() {
        return (RowIterator) getAttributeInternal(PRORABREPORT);
    }

    /**
     * Gets the associated <code>RowIterator</code> using master-detail link VwSupplierMoves.
     */
    public RowIterator getVwSupplierMoves() {
        return (RowIterator) getAttributeInternal(VWSUPPLIERMOVES);
    }
}

