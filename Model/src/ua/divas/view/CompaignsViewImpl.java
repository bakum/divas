package ua.divas.view;

import oracle.adf.model.BindingContext;

import oracle.jbo.server.ViewObjectImpl;

import ua.divas.classes.DivasView;
import ua.divas.module.AppModuleImpl;
import ua.divas.view.common.CompaignsView;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Sep 12 20:43:41 EEST 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class CompaignsViewImpl extends DivasView implements CompaignsView {
    /**
     * This is the default constructor (do not remove).
     */
    public CompaignsViewImpl() {
    }
    
    public void addKonragentToCallList(String KonId, String CompId) {
        //AppModuleImpl am = (AppModuleImpl)BindingContext.getCurrent().getDefaultDataControl().getApplicationModule();
        callStoredProcedure("UTILITY.add_kontragent_to_call_list(?,?)", new Object[] {KonId,CompId});
        //am.getTransaction().commit();
    }
    
    public void removeKonragentFromCallList(String KonId) {
        //AppModuleImpl am = (AppModuleImpl)BindingContext.getCurrent().getDefaultDataControl().getApplicationModule();
        callStoredProcedure("UTILITY.rem_kontragent_from_call_list(?)", new Object[] {KonId});
        //am.getTransaction().commit();
    }
}

