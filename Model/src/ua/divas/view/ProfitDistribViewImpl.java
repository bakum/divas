package ua.divas.view;

import oracle.jbo.Row;
import oracle.jbo.Variable;
import oracle.jbo.common.VariableImpl;
import oracle.jbo.server.ViewObjectImpl;
import oracle.jbo.server.ViewRowSetImpl;

import ua.divas.classes.DivasView;
import ua.divas.view.common.ProfitDistribView;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Thu Jun 18 10:27:38 EEST 2015
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class ProfitDistribViewImpl extends DivasView implements ProfitDistribView {
    /**
     * This is the default constructor (do not remove).
     */
    public ProfitDistribViewImpl() {
    }
    
    public void addEntry(String _id) {
        callStoredProcedure("PROFIT_ENTRY.profit_move_plan_acc(?)", new Object[] { _id });
    }
    
    public void removeEntry(String _id) {
        callStoredProcedure("PROFIT_ENTRY.profit_remove_plan_acc(?)", new Object[] { _id });
    }
    
    private ViewRowSetImpl getSettingsRowSet() {
        VariableImpl z = new VariableImpl();
        z.setName("UserKey");
        ViewObjectImpl vo = (ViewObjectImpl) this.getRootApplicationModule().findViewObject("UserSettingsView1");
        ViewRowSetImpl rs =
            (ViewRowSetImpl) vo.findByViewCriteriaWithBindVars(vo.getViewCriteria("FilterSettingsByUser"), -1,
                                                               vo.QUERY_MODE_SCAN_DATABASE_TABLES, new Variable[] { z }, new Object[] {
                                                               this.getSessionUserId() });
        return rs;
    }
    
    public String retrieveCurrencyId() {
        ViewRowSetImpl rs = this.getSettingsRowSet();
        Row row = rs.first();
        if (row != null) {
            String rv = (String) row.getAttribute("CurrencyId");
            return rv;
        }
        return null;
    }
    
    public String retrieveDivisionId() {
        ViewRowSetImpl rs = this.getSettingsRowSet();
        Row row = rs.first();
        if (row != null) {
            String rv = (String) row.getAttribute("DivisionId");
            return rv;
        }
        return null;
    }
    
    public String retrieveActivitiesId() {
        ViewRowSetImpl rs = this.getSettingsRowSet();
        Row row = rs.first();
        if (row != null) {
            String rv = (String) row.getAttribute("ActivitiesId");
            return rv;
        }
        return null;
    }
}

