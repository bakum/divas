package ua.divas.view.common;

import oracle.jbo.ViewObject;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Nov 21 15:56:51 EET 2014
// ---------------------------------------------------------------------
public interface UsersView extends ViewObject {
    void addUserToWls(String username, String psw, String desc);

    void changeUserPwdToWls(String username, String oldPassword, String newPassword);

    void resetUserPwdToWls(String username, String newPassword);
}
