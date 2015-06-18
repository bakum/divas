package ua.divas.model;

import java.sql.Timestamp;

import java.util.UUID;

import oracle.jbo.Key;
import oracle.jbo.RowIterator;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.EntityDefImpl;
import oracle.jbo.server.EntityImpl;

import ua.divas.classes.DivasEntity;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Tue Sep 16 17:38:03 EEST 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class DivisionsImpl extends DivasEntity {
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
        Fullname,
        Deleted,
        IsGroup,
        ParentId,
        Version,
        Predefined,
        MainUser,
        Divisions,
        ParentIdDivisions,
        Kassa,
        Orders,
        UserSettings,
        DivisionSotr,
        Users,
        OtherZatraty,
        NachislSettings,
        KontragSettings,
        StartOst,
        ProfitDistrib;
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
    public static final int FULLNAME = AttributesEnum.Fullname.index();
    public static final int DELETED = AttributesEnum.Deleted.index();
    public static final int ISGROUP = AttributesEnum.IsGroup.index();
    public static final int PARENTID = AttributesEnum.ParentId.index();
    public static final int VERSION = AttributesEnum.Version.index();
    public static final int PREDEFINED = AttributesEnum.Predefined.index();
    public static final int MAINUSER = AttributesEnum.MainUser.index();
    public static final int DIVISIONS = AttributesEnum.Divisions.index();
    public static final int PARENTIDDIVISIONS = AttributesEnum.ParentIdDivisions.index();
    public static final int KASSA = AttributesEnum.Kassa.index();
    public static final int ORDERS = AttributesEnum.Orders.index();
    public static final int USERSETTINGS = AttributesEnum.UserSettings.index();
    public static final int DIVISIONSOTR = AttributesEnum.DivisionSotr.index();
    public static final int USERS = AttributesEnum.Users.index();
    public static final int OTHERZATRATY = AttributesEnum.OtherZatraty.index();
    public static final int NACHISLSETTINGS = AttributesEnum.NachislSettings.index();
    public static final int KONTRAGSETTINGS = AttributesEnum.KontragSettings.index();
    public static final int STARTOST = AttributesEnum.StartOst.index();
    public static final int PROFITDISTRIB = AttributesEnum.ProfitDistrib.index();

    /**
     * This is the default constructor (do not remove).
     */
    public DivisionsImpl() {
    }

    /**
     * @return the definition object for this instance class.
     */
    public static synchronized EntityDefImpl getDefinitionObject() {
        return EntityDefImpl.findDefObject("ua.divas.model.Divisions");
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
     * Gets the attribute value for IsGroup, using the alias name IsGroup.
     * @return the value of IsGroup
     */
    public Integer getIsGroup() {
        return (Integer) getAttributeInternal(ISGROUP);
    }

    /**
     * Sets <code>value</code> as the attribute value for IsGroup.
     * @param value value to set the IsGroup
     */
    public void setIsGroup(Integer value) {
        setAttributeInternal(ISGROUP, value);
    }

    /**
     * Gets the attribute value for ParentId, using the alias name ParentId.
     * @return the value of ParentId
     */
    public String getParentId() {
        return (String) getAttributeInternal(PARENTID);
    }

    /**
     * Sets <code>value</code> as the attribute value for ParentId.
     * @param value value to set the ParentId
     */
    public void setParentId(String value) {
        setAttributeInternal(PARENTID, value);
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
     * Gets the attribute value for Predefined, using the alias name Predefined.
     * @return the value of Predefined
     */
    public Integer getPredefined() {
        return (Integer) getAttributeInternal(PREDEFINED);
    }

    /**
     * Sets <code>value</code> as the attribute value for Predefined.
     * @param value value to set the Predefined
     */
    public void setPredefined(Integer value) {
        setAttributeInternal(PREDEFINED, value);
    }

    /**
     * Gets the attribute value for MainUser, using the alias name MainUser.
     * @return the value of MainUser
     */
    public String getMainUser() {
        return (String) getAttributeInternal(MAINUSER);
    }

    /**
     * Sets <code>value</code> as the attribute value for MainUser.
     * @param value value to set the MainUser
     */
    public void setMainUser(String value) {
        setAttributeInternal(MAINUSER, value);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getDivisions() {
        return (RowIterator) getAttributeInternal(DIVISIONS);
    }

    /**
     * @return the associated entity DivisionsImpl.
     */
    public DivisionsImpl getParentIdDivisions() {
        return (DivisionsImpl) getAttributeInternal(PARENTIDDIVISIONS);
    }

    /**
     * Sets <code>value</code> as the associated entity DivisionsImpl.
     */
    public void setParentIdDivisions(DivisionsImpl value) {
        setAttributeInternal(PARENTIDDIVISIONS, value);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getKassa() {
        return (RowIterator) getAttributeInternal(KASSA);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getOrders() {
        return (RowIterator) getAttributeInternal(ORDERS);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getUserSettings() {
        return (RowIterator) getAttributeInternal(USERSETTINGS);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getDivisionSotr() {
        return (RowIterator) getAttributeInternal(DIVISIONSOTR);
    }

    /**
     * @return the associated entity UsersImpl.
     */
    public UsersImpl getUsers() {
        return (UsersImpl) getAttributeInternal(USERS);
    }

    /**
     * Sets <code>value</code> as the associated entity UsersImpl.
     */
    public void setUsers(UsersImpl value) {
        setAttributeInternal(USERS, value);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getOtherZatraty() {
        return (RowIterator) getAttributeInternal(OTHERZATRATY);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getNachislSettings() {
        return (RowIterator) getAttributeInternal(NACHISLSETTINGS);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getKontragSettings() {
        return (RowIterator) getAttributeInternal(KONTRAGSETTINGS);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getStartOst() {
        return (RowIterator) getAttributeInternal(STARTOST);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getProfitDistrib() {
        return (RowIterator) getAttributeInternal(PROFITDISTRIB);
    }

    /**
     * @param id key constituent

     * @return a Key object based on given key constituents.
     */
    public static Key createPrimaryKey(String id) {
        return new Key(new Object[] { id });
    }


}

