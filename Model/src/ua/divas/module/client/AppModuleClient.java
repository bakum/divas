package ua.divas.module.client;

import java.math.BigDecimal;

import java.util.Date;

import oracle.jbo.Key;
import oracle.jbo.RowIterator;
import oracle.jbo.client.remote.ApplicationModuleImpl;

import ua.divas.module.common.AppModule;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Tue Sep 16 22:46:51 EEST 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class AppModuleClient extends ApplicationModuleImpl implements AppModule {
    /**
     * This is the default constructor (do not remove).
     */
    public AppModuleClient() {
    }


    public void addNotification(String cutid, String desc, Date dat, String ObjId, String ContId) {
        Object _ret = this.riInvokeExportedMethod(this, "addNotification", new String[] {
                                                  "java.lang.String", "java.lang.String", "java.util.Date",
                                                  "java.lang.String", "java.lang.String"
        }, new Object[] { cutid, desc, dat, ObjId, ContId });
        return;
    }

    public void addPkoFromZamer(String kassaId, String kontragId, BigDecimal Summa) {
        Object _ret = this.riInvokeExportedMethod(this, "addPkoFromZamer", new String[] {
                                                  "java.lang.String", "java.lang.String", "java.math.BigDecimal"
        }, new Object[] { kassaId, kontragId, Summa });
        return;
    }

    public void addProfitDistrib(BigDecimal Summa) {
        Object _ret = this.riInvokeExportedMethod(this, "addProfitDistrib", new String[] { "java.math.BigDecimal" }, new Object[] {
                                                  Summa });
        return;
    }

    public void deleteChildren(RowIterator ri, Key selectedNodeKey) {
        Object _ret = this.riInvokeExportedMethod(this, "deleteChildren", new String[] {
                                                  "oracle.jbo.RowIterator", "oracle.jbo.Key" }, new Object[] {
                                                  ri, selectedNodeKey });
        return;
    }
}

