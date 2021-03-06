package ua.divas.view;

import java.math.BigDecimal;

import oracle.jbo.Row;
import oracle.jbo.Variable;
import oracle.jbo.common.VariableImpl;
import oracle.jbo.server.ViewObjectImpl;
import oracle.jbo.server.ViewRowSetImpl;

import ua.divas.view.common.NachislSettingsView;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Wed May 20 23:09:00 EEST 2015
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class NachislSettingsViewImpl extends ViewObjectImpl implements NachislSettingsView {
    /**
     * This is the default constructor (do not remove).
     */
    public NachislSettingsViewImpl() {
    }
    
    private ViewRowSetImpl getSettingsRowSet(String pId) {
        VariableImpl z = new VariableImpl();
        z.setName("pId");
        ViewObjectImpl vo = (ViewObjectImpl) this.getRootApplicationModule().findViewObject("PaySettingsView1");
        ViewRowSetImpl rs =
            (ViewRowSetImpl) vo.findByViewCriteriaWithBindVars(vo.getViewCriteria("FindByIdFix"), -1,
                                                               vo.QUERY_MODE_SCAN_DATABASE_TABLES, new Variable[] { z }, new Object[] {
                                                               pId });
        return rs;
    }
    
    public BigDecimal retrieveSumm(String pId) {
        ViewRowSetImpl rs = this.getSettingsRowSet(pId);
        Row row = rs.first();
        if (row != null) {
            BigDecimal summa = (BigDecimal) row.getAttribute("Summa");
            return summa;
        }
        return null;
    }
}

