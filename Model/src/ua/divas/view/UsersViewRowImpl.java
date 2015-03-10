package ua.divas.view;

import java.math.BigDecimal;

import java.sql.Timestamp;

import oracle.jbo.AttributeList;
import oracle.jbo.Row;
import oracle.jbo.RowIterator;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.ViewRowImpl;

import ua.divas.model.UsersImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Wed Oct 15 19:55:09 EEST 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class UsersViewRowImpl extends ViewRowImpl {


    public static final int ENTITY_USERS = 0;

    @Override
    public boolean isAttributeUpdateable(int i) {
        BigDecimal editable = this.getUEditable();
        if (editable.intValue()==0) {
            return false;
        } else { 
        return super.isAttributeUpdateable(i);
            }
    }

    @Override
    protected void create(AttributeList attributeList) {
        this.setUEditable(new BigDecimal(1));
        super.create(attributeList);
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
        UEditable,
        UDescription,
        IsZamer,
        OrdersView,
        UsersGroupsView,
        UserSettingsView,
        GroupmembersView,
        DivisionSotrView,
        KontragentsView,
        OrderZamerView,
        OrdersTpOplatyView,
        DivisionsView,
        OtherZatratyView;
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
    public static final int FIRSTNAME = AttributesEnum.FirstName.index();
    public static final int LASTNAME = AttributesEnum.LastName.index();
    public static final int EMAIL = AttributesEnum.Email.index();
    public static final int ISADMIN = AttributesEnum.IsAdmin.index();
    public static final int PASSWD = AttributesEnum.PassWd.index();
    public static final int LOGIN = AttributesEnum.Login.index();
    public static final int VERSION = AttributesEnum.Version.index();
    public static final int PREDEFINED = AttributesEnum.Predefined.index();
    public static final int UEDITABLE = AttributesEnum.UEditable.index();
    public static final int UDESCRIPTION = AttributesEnum.UDescription.index();
    public static final int ISZAMER = AttributesEnum.IsZamer.index();
    public static final int ORDERSVIEW = AttributesEnum.OrdersView.index();
    public static final int USERSGROUPSVIEW = AttributesEnum.UsersGroupsView.index();
    public static final int USERSETTINGSVIEW = AttributesEnum.UserSettingsView.index();
    public static final int GROUPMEMBERSVIEW = AttributesEnum.GroupmembersView.index();
    public static final int DIVISIONSOTRVIEW = AttributesEnum.DivisionSotrView.index();
    public static final int KONTRAGENTSVIEW = AttributesEnum.KontragentsView.index();
    public static final int ORDERZAMERVIEW = AttributesEnum.OrderZamerView.index();
    public static final int ORDERSTPOPLATYVIEW = AttributesEnum.OrdersTpOplatyView.index();
    public static final int DIVISIONSVIEW = AttributesEnum.DivisionsView.index();
    public static final int OTHERZATRATYVIEW = AttributesEnum.OtherZatratyView.index();

    /**
     * This is the default constructor (do not remove).
     */
    public UsersViewRowImpl() {
    }

    /**
     * Gets Users entity object.
     * @return the Users
     */
    public UsersImpl getUsers() {
        return (UsersImpl) getEntity(ENTITY_USERS);
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
     * Gets the attribute value for FIRST_NAME using the alias name FirstName.
     * @return the FIRST_NAME
     */
    public String getFirstName() {
        return (String) getAttributeInternal(FIRSTNAME);
    }

    /**
     * Sets <code>value</code> as attribute value for FIRST_NAME using the alias name FirstName.
     * @param value value to set the FIRST_NAME
     */
    public void setFirstName(String value) {
        setAttributeInternal(FIRSTNAME, value);
    }

    /**
     * Gets the attribute value for LAST_NAME using the alias name LastName.
     * @return the LAST_NAME
     */
    public String getLastName() {
        return (String) getAttributeInternal(LASTNAME);
    }

    /**
     * Sets <code>value</code> as attribute value for LAST_NAME using the alias name LastName.
     * @param value value to set the LAST_NAME
     */
    public void setLastName(String value) {
        setAttributeInternal(LASTNAME, value);
    }

    /**
     * Gets the attribute value for EMAIL using the alias name Email.
     * @return the EMAIL
     */
    public String getEmail() {
        return (String) getAttributeInternal(EMAIL);
    }

    /**
     * Sets <code>value</code> as attribute value for EMAIL using the alias name Email.
     * @param value value to set the EMAIL
     */
    public void setEmail(String value) {
        setAttributeInternal(EMAIL, value);
    }

    /**
     * Gets the attribute value for IS_ADMIN using the alias name IsAdmin.
     * @return the IS_ADMIN
     */
    public Integer getIsAdmin() {
        return (Integer) getAttributeInternal(ISADMIN);
    }

    /**
     * Sets <code>value</code> as attribute value for IS_ADMIN using the alias name IsAdmin.
     * @param value value to set the IS_ADMIN
     */
    public void setIsAdmin(Integer value) {
        setAttributeInternal(ISADMIN, value);
    }

    /**
     * Gets the attribute value for PASS_WD using the alias name PassWd.
     * @return the PASS_WD
     */
    public String getPassWd() {
        return (String) getAttributeInternal(PASSWD);
    }

    /**
     * Sets <code>value</code> as attribute value for PASS_WD using the alias name PassWd.
     * @param value value to set the PASS_WD
     */
    public void setPassWd(String value) {
        setAttributeInternal(PASSWD, value);
    }

    /**
     * Gets the attribute value for LOGIN using the alias name Login.
     * @return the LOGIN
     */
    public String getLogin() {
        return (String) getAttributeInternal(LOGIN);
    }

    /**
     * Sets <code>value</code> as attribute value for LOGIN using the alias name Login.
     * @param value value to set the LOGIN
     */
    public void setLogin(String value) {
        setAttributeInternal(LOGIN, value);
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
     * Gets the attribute value for the calculated attribute UEditable.
     * @return the UEditable
     */
    public BigDecimal getUEditable() {
        return (BigDecimal) getAttributeInternal(UEDITABLE);
    }

    /**
     * Sets <code>value</code> as the attribute value for the calculated attribute UEditable.
     * @param value value to set the  UEditable
     */
    public void setUEditable(BigDecimal value) {
        setAttributeInternal(UEDITABLE, value);
    }

    /**
     * Gets the attribute value for U_DESCRIPTION using the alias name UDescription.
     * @return the U_DESCRIPTION
     */
    public String getUDescription() {
        return (String) getAttributeInternal(UDESCRIPTION);
    }

    /**
     * Sets <code>value</code> as attribute value for U_DESCRIPTION using the alias name UDescription.
     * @param value value to set the U_DESCRIPTION
     */
    public void setUDescription(String value) {
        setAttributeInternal(UDESCRIPTION, value);
    }

    /**
     * Gets the attribute value for IS_ZAMER using the alias name IsZamer.
     * @return the IS_ZAMER
     */
    public Integer getIsZamer() {
        return (Integer) getAttributeInternal(ISZAMER);
    }

    /**
     * Sets <code>value</code> as attribute value for IS_ZAMER using the alias name IsZamer.
     * @param value value to set the IS_ZAMER
     */
    public void setIsZamer(Integer value) {
        setAttributeInternal(ISZAMER, value);
    }

    /**
     * Gets the associated <code>RowIterator</code> using master-detail link OrdersView.
     */
    public RowIterator getOrdersView() {
        return (RowIterator) getAttributeInternal(ORDERSVIEW);
    }

    /**
     * Gets the associated <code>RowIterator</code> using master-detail link UsersGroupsView.
     */
    public RowIterator getUsersGroupsView() {
        return (RowIterator) getAttributeInternal(USERSGROUPSVIEW);
    }

    /**
     * Gets the associated <code>Row</code> using master-detail link UserSettingsView.
     */
    public Row getUserSettingsView() {
        return (Row) getAttributeInternal(USERSETTINGSVIEW);
    }

    /**
     * Sets the master-detail link UserSettingsView between this object and <code>value</code>.
     */
    public void setUserSettingsView(Row value) {
        setAttributeInternal(USERSETTINGSVIEW, value);
    }

    /**
     * Gets the associated <code>RowIterator</code> using master-detail link GroupmembersView.
     */
    public RowIterator getGroupmembersView() {
        return (RowIterator) getAttributeInternal(GROUPMEMBERSVIEW);
    }

    /**
     * Gets the associated <code>RowIterator</code> using master-detail link DivisionSotrView.
     */
    public RowIterator getDivisionSotrView() {
        return (RowIterator) getAttributeInternal(DIVISIONSOTRVIEW);
    }

    /**
     * Gets the associated <code>RowIterator</code> using master-detail link KontragentsView.
     */
    public RowIterator getKontragentsView() {
        return (RowIterator) getAttributeInternal(KONTRAGENTSVIEW);
    }

    /**
     * Gets the associated <code>RowIterator</code> using master-detail link OrderZamerView.
     */
    public RowIterator getOrderZamerView() {
        return (RowIterator) getAttributeInternal(ORDERZAMERVIEW);
    }

    /**
     * Gets the associated <code>RowIterator</code> using master-detail link OrdersTpOplatyView.
     */
    public RowIterator getOrdersTpOplatyView() {
        return (RowIterator) getAttributeInternal(ORDERSTPOPLATYVIEW);
    }

    /**
     * Gets the associated <code>RowIterator</code> using master-detail link DivisionsView.
     */
    public RowIterator getDivisionsView() {
        return (RowIterator) getAttributeInternal(DIVISIONSVIEW);
    }

    /**
     * Gets the associated <code>RowIterator</code> using master-detail link OtherZatratyView.
     */
    public RowIterator getOtherZatratyView() {
        return (RowIterator) getAttributeInternal(OTHERZATRATYVIEW);
    }
}

