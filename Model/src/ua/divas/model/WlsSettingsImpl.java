package ua.divas.model;

import java.util.UUID;

import oracle.jbo.Key;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.EntityDefImpl;
import oracle.jbo.server.EntityImpl;

import ua.divas.classes.DivasEntityNoDelete;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Apr 03 22:20:45 EEST 2015
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class WlsSettingsImpl extends DivasEntityNoDelete {
    
    @Override
    protected void callId() {
        this.setId(UUID.randomUUID().toString());
    }
    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        Id,
        Port,
        Username,
        Password,
        Host;
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
    public static final int PORT = AttributesEnum.Port.index();
    public static final int USERNAME = AttributesEnum.Username.index();
    public static final int PASSWORD = AttributesEnum.Password.index();
    public static final int HOST = AttributesEnum.Host.index();

    /**
     * This is the default constructor (do not remove).
     */
    public WlsSettingsImpl() {
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
     * Gets the attribute value for Port, using the alias name Port.
     * @return the value of Port
     */
    public String getPort() {
        return (String) getAttributeInternal(PORT);
    }

    /**
     * Sets <code>value</code> as the attribute value for Port.
     * @param value value to set the Port
     */
    public void setPort(String value) {
        setAttributeInternal(PORT, value);
    }

    /**
     * Gets the attribute value for Username, using the alias name Username.
     * @return the value of Username
     */
    public String getUsername() {
        return (String) getAttributeInternal(USERNAME);
    }

    /**
     * Sets <code>value</code> as the attribute value for Username.
     * @param value value to set the Username
     */
    public void setUsername(String value) {
        setAttributeInternal(USERNAME, value);
    }

    /**
     * Gets the attribute value for Password, using the alias name Password.
     * @return the value of Password
     */
    public String getPassword() {
        return (String) getAttributeInternal(PASSWORD);
    }

    /**
     * Sets <code>value</code> as the attribute value for Password.
     * @param value value to set the Password
     */
    public void setPassword(String value) {
        setAttributeInternal(PASSWORD, value);
    }

    /**
     * Gets the attribute value for Host, using the alias name Host.
     * @return the value of Host
     */
    public String getHost() {
        return (String) getAttributeInternal(HOST);
    }

    /**
     * Sets <code>value</code> as the attribute value for Host.
     * @param value value to set the Host
     */
    public void setHost(String value) {
        setAttributeInternal(HOST, value);
    }

    /**
     * @param id key constituent

     * @return a Key object based on given key constituents.
     */
    public static Key createPrimaryKey(String id) {
        return new Key(new Object[] { id });
    }

    /**
     * @return the definition object for this instance class.
     */
    public static synchronized EntityDefImpl getDefinitionObject() {
        return EntityDefImpl.findDefObject("ua.divas.model.WlsSettings");
    }
}

