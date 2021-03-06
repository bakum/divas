package ua.divas.view;

import oracle.jbo.server.ViewObjectImpl;

import ua.divas.classes.DivasView;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Thu Aug 27 19:44:53 EEST 2015
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class VwInsideMasterImpl extends DivasView {
    /**
     * This is the default constructor (do not remove).
     */
    public VwInsideMasterImpl() {
    }

    /**
     * Returns the variable value for p_divname.
     * @return variable value for p_divname
     */
    public String getp_divname() {
        return (String) ensureVariableManager().getVariableValue("p_divname");
    }

    /**
     * Sets <code>value</code> for variable p_divname.
     * @param value value to bind as p_divname
     */
    public void setp_divname(String value) {
        ensureVariableManager().setVariableValue("p_divname", value);
    }

    /**
     * Returns the bind variable value for u_name.
     * @return bind variable value for u_name
     */
    public String getu_name() {
        return (String) getNamedWhereClauseParam("u_name");
    }

    /**
     * Sets <code>value</code> for bind variable u_name.
     * @param value value to bind as u_name
     */
    public void setu_name(String value) {
        setNamedWhereClauseParam("u_name", value);
    }
}

