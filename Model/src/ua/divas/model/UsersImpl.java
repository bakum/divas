package ua.divas.model;

import java.sql.Timestamp;

import java.util.UUID;

import oracle.jbo.Key;
import oracle.jbo.RowIterator;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.EntityDefImpl;
import oracle.jbo.server.EntityImpl;

import ua.divas.classes.DivasEntityNoDelete;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Mon Oct 13 20:28:02 EEST 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class UsersImpl extends DivasEntityNoDelete {
    @Override
    protected void callId() {
        this.setId(UUID.randomUUID().toString());
    }

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        Id,
        FirstName,
        LastName,
        Email,
        IsAdmin,
        PassWd,
        Login,
        Version,
        Predefined,
        UDescription,
        IsZamer,
        Orders,
        UsersGroups,
        UserSettings,
        Groupmembers,
        DivisionSotr,
        Kontragents,
        OrdersTpOplaty,
        Divisions,
        OtherZatraty,
        KassaSettings,
        NachislSettings,
        StartOst;
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
    public static final int FIRSTNAME = AttributesEnum.FirstName.index();
    public static final int LASTNAME = AttributesEnum.LastName.index();
    public static final int EMAIL = AttributesEnum.Email.index();
    public static final int ISADMIN = AttributesEnum.IsAdmin.index();
    public static final int PASSWD = AttributesEnum.PassWd.index();
    public static final int LOGIN = AttributesEnum.Login.index();
    public static final int VERSION = AttributesEnum.Version.index();
    public static final int PREDEFINED = AttributesEnum.Predefined.index();
    public static final int UDESCRIPTION = AttributesEnum.UDescription.index();
    public static final int ISZAMER = AttributesEnum.IsZamer.index();
    public static final int ORDERS = AttributesEnum.Orders.index();
    public static final int USERSGROUPS = AttributesEnum.UsersGroups.index();
    public static final int USERSETTINGS = AttributesEnum.UserSettings.index();
    public static final int GROUPMEMBERS = AttributesEnum.Groupmembers.index();
    public static final int DIVISIONSOTR = AttributesEnum.DivisionSotr.index();
    public static final int KONTRAGENTS = AttributesEnum.Kontragents.index();
    public static final int ORDERSTPOPLATY = AttributesEnum.OrdersTpOplaty.index();
    public static final int DIVISIONS = AttributesEnum.Divisions.index();
    public static final int OTHERZATRATY = AttributesEnum.OtherZatraty.index();
    public static final int KASSASETTINGS = AttributesEnum.KassaSettings.index();
    public static final int NACHISLSETTINGS = AttributesEnum.NachislSettings.index();
    public static final int STARTOST = AttributesEnum.StartOst.index();

    /**
     * This is the default constructor (do not remove).
     */
    public UsersImpl() {
    }

    /**
     * @return the definition object for this instance class.
     */
    public static synchronized EntityDefImpl getDefinitionObject() {
        return EntityDefImpl.findDefObject("ua.divas.model.Users");
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
     * Gets the attribute value for FirstName, using the alias name FirstName.
     * @return the value of FirstName
     */
    public String getFirstName() {
        return (String) getAttributeInternal(FIRSTNAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for FirstName.
     * @param value value to set the FirstName
     */
    public void setFirstName(String value) {
        setAttributeInternal(FIRSTNAME, value);
    }

    /**
     * Gets the attribute value for LastName, using the alias name LastName.
     * @return the value of LastName
     */
    public String getLastName() {
        return (String) getAttributeInternal(LASTNAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for LastName.
     * @param value value to set the LastName
     */
    public void setLastName(String value) {
        setAttributeInternal(LASTNAME, value);
    }

    /**
     * Gets the attribute value for Email, using the alias name Email.
     * @return the value of Email
     */
    public String getEmail() {
        return (String) getAttributeInternal(EMAIL);
    }

    /**
     * Sets <code>value</code> as the attribute value for Email.
     * @param value value to set the Email
     */
    public void setEmail(String value) {
        setAttributeInternal(EMAIL, value);
    }

    /**
     * Gets the attribute value for IsAdmin, using the alias name IsAdmin.
     * @return the value of IsAdmin
     */
    public Integer getIsAdmin() {
        return (Integer) getAttributeInternal(ISADMIN);
    }

    /**
     * Sets <code>value</code> as the attribute value for IsAdmin.
     * @param value value to set the IsAdmin
     */
    public void setIsAdmin(Integer value) {
        setAttributeInternal(ISADMIN, value);
    }

    /**
     * Gets the attribute value for PassWd, using the alias name PassWd.
     * @return the value of PassWd
     */
    public String getPassWd() {
        return (String) getAttributeInternal(PASSWD);
    }

    /**
     * Sets <code>value</code> as the attribute value for PassWd.
     * @param value value to set the PassWd
     */
    public void setPassWd(String value) {
        setAttributeInternal(PASSWD, value);
    }

    /**
     * Gets the attribute value for Login, using the alias name Login.
     * @return the value of Login
     */
    public String getLogin() {
        return (String) getAttributeInternal(LOGIN);
    }

    /**
     * Sets <code>value</code> as the attribute value for Login.
     * @param value value to set the Login
     */
    public void setLogin(String value) {
        setAttributeInternal(LOGIN, value);
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
     * Gets the attribute value for UDescription, using the alias name UDescription.
     * @return the value of UDescription
     */
    public String getUDescription() {
        return (String) getAttributeInternal(UDESCRIPTION);
    }

    /**
     * Sets <code>value</code> as the attribute value for UDescription.
     * @param value value to set the UDescription
     */
    public void setUDescription(String value) {
        setAttributeInternal(UDESCRIPTION, value);
    }

    /**
     * Gets the attribute value for IsZamer, using the alias name IsZamer.
     * @return the value of IsZamer
     */
    public Integer getIsZamer() {
        return (Integer) getAttributeInternal(ISZAMER);
    }

    /**
     * Sets <code>value</code> as the attribute value for IsZamer.
     * @param value value to set the IsZamer
     */
    public void setIsZamer(Integer value) {
        setAttributeInternal(ISZAMER, value);
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
    public RowIterator getUsersGroups() {
        return (RowIterator) getAttributeInternal(USERSGROUPS);
    }

    /**
     * @return the associated entity oracle.jbo.server.EntityImpl.
     */
    public UserSettingsImpl getUserSettings() {
        return (UserSettingsImpl) getAttributeInternal(USERSETTINGS);
    }

    /**
     * Sets <code>value</code> as the associated entity oracle.jbo.server.EntityImpl.
     */
    public void setUserSettings(UserSettingsImpl value) {
        setAttributeInternal(USERSETTINGS, value);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getGroupmembers() {
        return (RowIterator) getAttributeInternal(GROUPMEMBERS);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getDivisionSotr() {
        return (RowIterator) getAttributeInternal(DIVISIONSOTR);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getKontragents() {
        return (RowIterator) getAttributeInternal(KONTRAGENTS);
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
    public RowIterator getDivisions() {
        return (RowIterator) getAttributeInternal(DIVISIONS);
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
    public RowIterator getKassaSettings() {
        return (RowIterator) getAttributeInternal(KASSASETTINGS);
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
    public RowIterator getStartOst() {
        return (RowIterator) getAttributeInternal(STARTOST);
    }

    /**
     * @param id key constituent

     * @return a Key object based on given key constituents.
     */
    public static Key createPrimaryKey(String id) {
        return new Key(new Object[] { id });
    }


}

