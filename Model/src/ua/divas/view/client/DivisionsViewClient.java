package ua.divas.view.client;

import oracle.jbo.client.remote.ViewUsageImpl;

import ua.divas.view.common.DivisionsView;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Tue Sep 16 20:35:34 EEST 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class DivisionsViewClient extends ViewUsageImpl implements DivisionsView {
    /**
     * This is the default constructor (do not remove).
     */
    public DivisionsViewClient() {
    }

    public void changeParentInDivisions(String Id, String ParentId) {
        Object _ret = getApplicationModuleProxy().riInvokeExportedMethod(this, "changeParentInDivisions", new String[] {
                                                                         "java.lang.String", "java.lang.String"
        }, new Object[] { Id, ParentId });
        return;
    }
}

