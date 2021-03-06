package ua.divas.view.client;

import java.util.Date;

import oracle.jbo.client.remote.ViewUsageImpl;

import ua.divas.view.common.UsersView;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Nov 21 15:56:52 EET 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class UsersViewClient extends ViewUsageImpl implements UsersView {
    /**
     * This is the default constructor (do not remove).
     */
    public UsersViewClient() {
    }


    public void acceptCode(String u_login, String p_code) {
        Object _ret = getApplicationModuleProxy().riInvokeExportedMethod(this, "acceptCode", new String[] {
                                                                         "java.lang.String", "java.lang.String"
        }, new Object[] { u_login, p_code });
        return;
    }

    public Boolean accessEnabled(String u_login) {
        Object _ret = getApplicationModuleProxy().riInvokeExportedMethod(this, "accessEnabled", new String[] {
                                                                         "java.lang.String" }, new Object[] {
                                                                         u_login });
        return (Boolean) _ret;
    }

    public void addUserToWls(String username, String psw, String desc) {
        Object _ret = getApplicationModuleProxy().riInvokeExportedMethod(this, "addUserToWls", new String[] {
                                                                         "java.lang.String", "java.lang.String",
                                                                         "java.lang.String"
        }, new Object[] { username, psw, desc });
        return;
    }

    public void changeUserPwdToWls(String username, String oldPassword, String newPassword) {
        Object _ret = getApplicationModuleProxy().riInvokeExportedMethod(this, "changeUserPwdToWls", new String[] {
                                                                         "java.lang.String", "java.lang.String",
                                                                         "java.lang.String"
        }, new Object[] { username, oldPassword, newPassword });
        return;
    }

    public String generateCode(String u_login, oracle.jbo.domain.Date p_date) {
        Object _ret = getApplicationModuleProxy().riInvokeExportedMethod(this, "generateCode", new String[] {
                                                                         "java.lang.String", "oracle.jbo.domain.Date"
        }, new Object[] { u_login, p_date });
        return (String) _ret;
    }

    public void resetUserPwdToWls(String username, String newPassword) {
        Object _ret = getApplicationModuleProxy().riInvokeExportedMethod(this, "resetUserPwdToWls", new String[] {
                                                                         "java.lang.String", "java.lang.String"
        }, new Object[] { username, newPassword });
        return;
    }

    public Boolean userExistsAndActive(String u_login) {
        Object _ret = getApplicationModuleProxy().riInvokeExportedMethod(this, "userExistsAndActive", new String[] {
                                                                         "java.lang.String" }, new Object[] {
                                                                         u_login });
        return (Boolean) _ret;
    }
}

