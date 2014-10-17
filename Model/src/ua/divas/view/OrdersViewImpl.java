package ua.divas.view;

import oracle.jbo.Row;
import oracle.jbo.Variable;
import oracle.jbo.common.VariableImpl;
import oracle.jbo.server.ViewObjectImpl;
import oracle.jbo.server.ViewRowSetImpl;

import ua.divas.classes.DivasView;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Oct 17 23:59:15 EEST 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class OrdersViewImpl extends DivasView {
    /**
     * This is the default constructor (do not remove).
     */
    public OrdersViewImpl() {
    }

    public String retrieveCurrencyId() {
        VariableImpl z = new VariableImpl();
        z.setName("UserKey");
        ViewObjectImpl vo = (ViewObjectImpl) this.getRootApplicationModule().findViewObject("UserSettingsView1");
        /* ViewRowSetImpl rs =
            (ViewRowSetImpl) vo.findByViewCriteria(vo.getViewCriteria("FilterSettingsByUser"), -1,
                                                   vo.QUERY_MODE_SCAN_DATABASE_TABLES); */
        ViewRowSetImpl rs =
            (ViewRowSetImpl) vo.findByViewCriteriaWithBindVars(vo.getViewCriteria("FilterSettingsByUser"), -1,
                                                               vo.QUERY_MODE_SCAN_DATABASE_TABLES, new Variable[] { z }, 
                                                               new Object[] { this.getSessionUserId() });
        Row row = rs.first();
        if (row != null) {
            String rv = (String) row.getAttribute("CurrencyId");
            return rv;
        }
        return null;
    }
}

