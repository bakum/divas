package ua.divas.view;

import java.sql.Timestamp;

import oracle.jbo.NameValuePairs;
import oracle.jbo.Row;
import oracle.jbo.Variable;
import oracle.jbo.common.VariableImpl;
import oracle.jbo.domain.Date;
import oracle.jbo.server.ViewObjectImpl;
import oracle.jbo.server.ViewRowSetImpl;

import ua.divas.classes.DivasView;
import ua.divas.view.common.OrdersView;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Oct 17 23:59:15 EEST 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class OrdersViewImpl extends DivasView implements OrdersView {
    /**
     * This is the default constructor (do not remove).
     */
    public OrdersViewImpl() {
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
    
    public String retrieveKassaId() {
        ViewRowSetImpl rs = this.getSettingsRowSet();
        Row row = rs.first();
        if (row != null) {
            String rv = (String) row.getAttribute("KassaId");
            return rv;
        }
        return null;
    }
    
    public String retrieveFirmaId() {
        ViewRowSetImpl rs = this.getSettingsRowSet();
        Row row = rs.first();
        if (row != null) {
            String rv = (String) row.getAttribute("FirmaId");
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
    
    public String retrieveStatusId() {
        ViewObjectImpl vo = (ViewObjectImpl) this.getRootApplicationModule().findViewObject("OrderStatusView1");
        ViewRowSetImpl rs =
            (ViewRowSetImpl) vo.findByViewCriteria(vo.getViewCriteria("FilterOrderStatusByNew"), -1,
                                                               vo.QUERY_MODE_SCAN_DATABASE_TABLES);
        Row row = rs.first();
        if (row != null) {
            String rv = (String) row.getAttribute("Id");
            return rv;
        }
        return null;
    }
    
    public void createContactDetail (String KonId, String Tel, String email, String Adress) {
        ViewObjectImpl vo = (ViewObjectImpl) this.getRootApplicationModule().findViewObject("ContactDetailsView1");
        NameValuePairs nvp = new NameValuePairs();
        try {
            nvp.setAttribute("KontragId", KonId);
            nvp.setAttribute("Phone", Tel);
            nvp.setAttribute("Email", email);
            nvp.setAttribute("Adress", Adress);
            vo.createAndInitRow(nvp);
            vo.executeQuery();
        } catch (Exception e) {
            // TODO: Add catch code
            e.printStackTrace();
        }
    }


    /**
     * Returns the variable value for Kname.
     * @return variable value for Kname
     */
    public String getKname() {
        return (String) ensureVariableManager().getVariableValue("Kname");
    }

    /**
     * Sets <code>value</code> for variable Kname.
     * @param value value to bind as Kname
     */
    public void setKname(String value) {
        ensureVariableManager().setVariableValue("Kname", value);
    }
    
    public void addEntry(String _id) {
        callStoredProcedure("ORDERS_ENTRY.orders_move_plan_acc(?)", new Object[] { _id });
    }
    
    public void removeEntry(String _id) {
        callStoredProcedure("ORDERS_ENTRY.orders_remove_plan_acc(?)", new Object[] { _id });
    }


}

