package ua.divas.view;

import oracle.jbo.domain.Date;
import oracle.jbo.server.ViewObjectImpl;

import ua.divas.classes.DivasView;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Mon Apr 20 21:11:18 EEST 2015
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class VwNotificationCalendarViewImpl extends DivasView {
    /**
     * This is the default constructor (do not remove).
     */
    public VwNotificationCalendarViewImpl() {
    }

    /**
     * Returns the bind variable value for StartDat.
     * @return bind variable value for StartDat
     */
    public Date getStartDat() {
        return (Date) getNamedWhereClauseParam("StartDat");
    }

    /**
     * Sets <code>value</code> for bind variable StartDat.
     * @param value value to bind as StartDat
     */
    public void setStartDat(Date value) {
        setNamedWhereClauseParam("StartDat", value);
    }

    /**
     * Returns the bind variable value for EndDat.
     * @return bind variable value for EndDat
     */
    public Date getEndDat() {
        return (Date) getNamedWhereClauseParam("EndDat");
    }

    /**
     * Sets <code>value</code> for bind variable EndDat.
     * @param value value to bind as EndDat
     */
    public void setEndDat(Date value) {
        setNamedWhereClauseParam("EndDat", value);
    }

    /**
     * Returns the bind variable value for tZ.
     * @return bind variable value for tZ
     */
    public String gettZ() {
        return (String) getNamedWhereClauseParam("tZ");
    }

    /**
     * Sets <code>value</code> for bind variable tZ.
     * @param value value to bind as tZ
     */
    public void settZ(String value) {
        setNamedWhereClauseParam("tZ", value);
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
