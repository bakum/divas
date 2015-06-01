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
// ---    Thu Oct 16 19:54:02 EEST 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class TypeOfActivitiesImpl extends DivasEntityNoDelete {
    @Override
    protected void callId() {
        this.setId(UUID.randomUUID().toString());
    }

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        Id,
        Version,
        Fullname,
        Moves,
        Orders,
        UserSettings,
        OtherZatraty,
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
    public static final int VERSION = AttributesEnum.Version.index();
    public static final int FULLNAME = AttributesEnum.Fullname.index();
    public static final int MOVES = AttributesEnum.Moves.index();
    public static final int ORDERS = AttributesEnum.Orders.index();
    public static final int USERSETTINGS = AttributesEnum.UserSettings.index();
    public static final int OTHERZATRATY = AttributesEnum.OtherZatraty.index();
    public static final int STARTOST = AttributesEnum.StartOst.index();

    /**
     * This is the default constructor (do not remove).
     */
    public TypeOfActivitiesImpl() {
    }

    /**
     * @return the definition object for this instance class.
     */
    public static synchronized EntityDefImpl getDefinitionObject() {
        return EntityDefImpl.findDefObject("ua.divas.model.TypeOfActivities");
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
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getMoves() {
        return (RowIterator) getAttributeInternal(MOVES);
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
    public RowIterator getOtherZatraty() {
        return (RowIterator) getAttributeInternal(OTHERZATRATY);
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

