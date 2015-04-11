package ua.divas.view;

import oracle.jbo.domain.Date;
import oracle.jbo.server.ViewObjectImpl;

import ua.divas.classes.DivasView;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Tue Apr 07 03:52:00 EEST 2015
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class CalendarViewImpl extends DivasView {
    /**
     * This is the default constructor (do not remove).
     */
    public CalendarViewImpl() {
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
     * Returns the bind variable value for Tz.
     * @return bind variable value for Tz
     */
    public String getTz() {
        return (String) getNamedWhereClauseParam("Tz");
    }

    /**
     * Sets <code>value</code> for bind variable Tz.
     * @param value value to bind as Tz
     */
    public void setTz(String value) {
        setNamedWhereClauseParam("Tz", value);
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
}
