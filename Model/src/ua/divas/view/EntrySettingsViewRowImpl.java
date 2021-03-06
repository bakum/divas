package ua.divas.view;

import java.math.BigDecimal;

import java.sql.Timestamp;

import oracle.jbo.AttributeList;
import oracle.jbo.RowSet;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.ViewRowImpl;

import ua.divas.model.EntrySettingsImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Sat Dec 20 16:08:55 EET 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class EntrySettingsViewRowImpl extends ViewRowImpl {


    public static final int ENTITY_ENTRYSETTINGS = 0;

    @Override
    public boolean isAttributeUpdateable(int i) {
        BigDecimal editable = this.getEsEditable();
        if (editable.intValue()==0) {
            return false;
        } else { 
        return super.isAttributeUpdateable(i);
            }
    }

    @Override
    protected void create(AttributeList attributeList) {
        this.setEsEditable(new BigDecimal(1));
        super.create(attributeList);
    }

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        Id,
        TypedefId,
        TypedefName,
        PlanAccDebId,
        Planaccdebname,
        PlanAccKredId,
        Planacckredname,
        EsEditable,
        Version,
        Chain,
        Description,
        TypeDefView1,
        PlanAccView1;
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
    public static final int TYPEDEFID = AttributesEnum.TypedefId.index();
    public static final int TYPEDEFNAME = AttributesEnum.TypedefName.index();
    public static final int PLANACCDEBID = AttributesEnum.PlanAccDebId.index();
    public static final int PLANACCDEBNAME = AttributesEnum.Planaccdebname.index();
    public static final int PLANACCKREDID = AttributesEnum.PlanAccKredId.index();
    public static final int PLANACCKREDNAME = AttributesEnum.Planacckredname.index();
    public static final int ESEDITABLE = AttributesEnum.EsEditable.index();
    public static final int VERSION = AttributesEnum.Version.index();
    public static final int CHAIN = AttributesEnum.Chain.index();
    public static final int DESCRIPTION = AttributesEnum.Description.index();
    public static final int TYPEDEFVIEW1 = AttributesEnum.TypeDefView1.index();
    public static final int PLANACCVIEW1 = AttributesEnum.PlanAccView1.index();

    /**
     * This is the default constructor (do not remove).
     */
    public EntrySettingsViewRowImpl() {
    }

    /**
     * Gets EntrySettings entity object.
     * @return the EntrySettings
     */
    public EntrySettingsImpl getEntrySettings() {
        return (EntrySettingsImpl) getEntity(ENTITY_ENTRYSETTINGS);
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
     * Gets the attribute value for TYPEDEF_ID using the alias name TypedefId.
     * @return the TYPEDEF_ID
     */
    public String getTypedefId() {
        return (String) getAttributeInternal(TYPEDEFID);
    }

    /**
     * Sets <code>value</code> as attribute value for TYPEDEF_ID using the alias name TypedefId.
     * @param value value to set the TYPEDEF_ID
     */
    public void setTypedefId(String value) {
        setAttributeInternal(TYPEDEFID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute TypedefName.
     * @return the TypedefName
     */
    public String getTypedefName() {
        return (String) getAttributeInternal(TYPEDEFNAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute TypedefName.
     * @param value value to set the  TypedefName
     */
    public void setTypedefName(String value) {
        setAttributeInternal(TYPEDEFNAME, value);
    }

    /**
     * Gets the attribute value for PLAN_ACC_DEB_ID using the alias name PlanAccDebId.
     * @return the PLAN_ACC_DEB_ID
     */
    public String getPlanAccDebId() {
        return (String) getAttributeInternal(PLANACCDEBID);
    }

    /**
     * Sets <code>value</code> as attribute value for PLAN_ACC_DEB_ID using the alias name PlanAccDebId.
     * @param value value to set the PLAN_ACC_DEB_ID
     */
    public void setPlanAccDebId(String value) {
        setAttributeInternal(PLANACCDEBID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute Planaccdebname.
     * @return the Planaccdebname
     */
    public String getPlanaccdebname() {
        return (String) getAttributeInternal(PLANACCDEBNAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute Planaccdebname.
     * @param value value to set the  Planaccdebname
     */
    public void setPlanaccdebname(String value) {
        setAttributeInternal(PLANACCDEBNAME, value);
    }

    /**
     * Gets the attribute value for PLAN_ACC_KRED_ID using the alias name PlanAccKredId.
     * @return the PLAN_ACC_KRED_ID
     */
    public String getPlanAccKredId() {
        return (String) getAttributeInternal(PLANACCKREDID);
    }

    /**
     * Sets <code>value</code> as attribute value for PLAN_ACC_KRED_ID using the alias name PlanAccKredId.
     * @param value value to set the PLAN_ACC_KRED_ID
     */
    public void setPlanAccKredId(String value) {
        setAttributeInternal(PLANACCKREDID, value);
    }

    /**
     * Gets the attribute value for the calculated attribute Planacckredname.
     * @return the Planacckredname
     */
    public String getPlanacckredname() {
        return (String) getAttributeInternal(PLANACCKREDNAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute Planacckredname.
     * @param value value to set the  Planacckredname
     */
    public void setPlanacckredname(String value) {
        setAttributeInternal(PLANACCKREDNAME, value);
    }

    /**
     * Gets the attribute value for the calculated attribute EsEditable.
     * @return the EsEditable
     */
    public BigDecimal getEsEditable() {
        return (BigDecimal) getAttributeInternal(ESEDITABLE);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute EsEditable.
     * @param value value to set the  EsEditable
     */
    public void setEsEditable(BigDecimal value) {
        setAttributeInternal(ESEDITABLE, value);
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
     * Gets the attribute value for CHAIN using the alias name Chain.
     * @return the CHAIN
     */
    public Long getChain() {
        return (Long) getAttributeInternal(CHAIN);
    }

    /**
     * Sets <code>value</code> as attribute value for CHAIN using the alias name Chain.
     * @param value value to set the CHAIN
     */
    public void setChain(Long value) {
        setAttributeInternal(CHAIN, value);
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
     * Gets the view accessor <code>RowSet</code> TypeDefView1.
     */
    public RowSet getTypeDefView1() {
        return (RowSet) getAttributeInternal(TYPEDEFVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> PlanAccView1.
     */
    public RowSet getPlanAccView1() {
        return (RowSet) getAttributeInternal(PLANACCVIEW1);
    }
}

