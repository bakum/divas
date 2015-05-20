package ua.divas.model;

import java.math.BigDecimal;

import java.sql.Timestamp;

import java.util.UUID;

import oracle.jbo.Key;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.EntityDefImpl;
import oracle.jbo.server.EntityImpl;

import ua.divas.classes.DivasEntityNoDelete;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Tue May 19 13:40:49 EEST 2015
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class PaySettingsImpl extends DivasEntityNoDelete {

    @Override
    protected void callId() {
        this.setId(UUID.randomUUID().toString());
    }

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        Id,
        Name,
        Fullname,
        Stavka,
        Description,
        Version,
        BaseId,
        Summa,
        BaseOfCalc;
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
    public static final int NAME = AttributesEnum.Name.index();
    public static final int FULLNAME = AttributesEnum.Fullname.index();
    public static final int STAVKA = AttributesEnum.Stavka.index();
    public static final int DESCRIPTION = AttributesEnum.Description.index();
    public static final int VERSION = AttributesEnum.Version.index();
    public static final int BASEID = AttributesEnum.BaseId.index();
    public static final int SUMMA = AttributesEnum.Summa.index();
    public static final int BASEOFCALC = AttributesEnum.BaseOfCalc.index();

    /**
     * This is the default constructor (do not remove).
     */
    public PaySettingsImpl() {
    }

    /**
     * @return the definition object for this instance class.
     */
    public static synchronized EntityDefImpl getDefinitionObject() {
        return EntityDefImpl.findDefObject("ua.divas.model.PaySettings");
    }


    public String getBaseName(String id) {
        return (String) callStoredFunction(VARCHAR2, "UTILITY.retrieve_name_baseofcalc(?)", new Object[] { id });
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
     * Gets the attribute value for Name, using the alias name Name.
     * @return the value of Name
     */
    public String getName() {
        return (String) getAttributeInternal(NAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for Name.
     * @param value value to set the Name
     */
    public void setName(String value) {
        setAttributeInternal(NAME, value);
    }

    /**
     * Gets the attribute value for Fullname, using the alias name Fullname.
     * @return the value of Fullname
     */
    public String getFullname() {
        return (String) getAttributeInternal(FULLNAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for Fullname.
     * @param value value to set the Fullname
     */
    public void setFullname(String value) {
        setAttributeInternal(FULLNAME, value);
    }

    /**
     * Gets the attribute value for Stavka, using the alias name Stavka.
     * @return the value of Stavka
     */
    public BigDecimal getStavka() {
        return (BigDecimal) getAttributeInternal(STAVKA);
    }

    /**
     * Sets <code>value</code> as the attribute value for Stavka.
     * @param value value to set the Stavka
     */
    public void setStavka(BigDecimal value) {
        setAttributeInternal(STAVKA, value);
    }

    /**
     * Gets the attribute value for Description, using the alias name Description.
     * @return the value of Description
     */
    public String getDescription() {
        return (String) getAttributeInternal(DESCRIPTION);
    }

    /**
     * Sets <code>value</code> as the attribute value for Description.
     * @param value value to set the Description
     */
    public void setDescription(String value) {
        setAttributeInternal(DESCRIPTION, value);
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
     * Gets the attribute value for BaseId, using the alias name BaseId.
     * @return the value of BaseId
     */
    public String getBaseId() {
        return (String) getAttributeInternal(BASEID);
    }

    /**
     * Sets <code>value</code> as the attribute value for BaseId.
     * @param value value to set the BaseId
     */
    public void setBaseId(String value) {
        setAttributeInternal(BASEID, value);
    }

    /**
     * Gets the attribute value for Summa, using the alias name Summa.
     * @return the value of Summa
     */
    public BigDecimal getSumma() {
        return (BigDecimal) getAttributeInternal(SUMMA);
    }

    /**
     * Sets <code>value</code> as the attribute value for Summa.
     * @param value value to set the Summa
     */
    public void setSumma(BigDecimal value) {
        setAttributeInternal(SUMMA, value);
    }

    /**
     * @return the associated entity oracle.jbo.server.EntityImpl.
     */
    public EntityImpl getBaseOfCalc() {
        return (EntityImpl) getAttributeInternal(BASEOFCALC);
    }

    /**
     * Sets <code>value</code> as the associated entity oracle.jbo.server.EntityImpl.
     */
    public void setBaseOfCalc(EntityImpl value) {
        setAttributeInternal(BASEOFCALC, value);
    }

    /**
     * @param id key constituent

     * @return a Key object based on given key constituents.
     */
    public static Key createPrimaryKey(String id) {
        return new Key(new Object[] { id });
    }

    /**
     * Validation method for PaySettings.
     */
    public boolean validatePaySettings1() {
        String bId = getBaseId();
        String bName = getBaseName(bId);
        BigDecimal sm = getSumma();
        if (!bName.equals("Процент") && (sm == null || sm.floatValue() == 0)) {
            return false;
        }
        return true;
    }


    /**
     * Validation method for PaySettings.
     */
    public boolean validatePaySettings() {
        String bName = getBaseName(getBaseId());
        BigDecimal st = getStavka();
        if (bName.equals("Процент") && (st == null || st.floatValue() == 0)) {
            return false;
        }
        return true;
    }


}

