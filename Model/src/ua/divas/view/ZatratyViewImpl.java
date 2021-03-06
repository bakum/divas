package ua.divas.view;

import oracle.jbo.server.ViewObjectImpl;

import ua.divas.classes.DivasView;
import ua.divas.view.common.ZatratyView;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Sat Dec 27 23:34:28 EET 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class ZatratyViewImpl extends DivasView implements ZatratyView {
    /**
     * This is the default constructor (do not remove).
     */
    public ZatratyViewImpl() {
    }
    
    public void createZatraty(String p_name) {
        callStoredProcedure("UTILITY.createZatraty(?)", new Object[] {p_name});
    }

    /**
     * Returns the variable value for Zatr.
     * @return variable value for Zatr
     */
    public String getZatr() {
        return (String) ensureVariableManager().getVariableValue("Zatr");
    }

    /**
     * Sets <code>value</code> for variable Zatr.
     * @param value value to bind as Zatr
     */
    public void setZatr(String value) {
        ensureVariableManager().setVariableValue("Zatr", value);
    }
}

