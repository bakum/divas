package ua.divas.bean.control;

import java.util.Date;

public class OnlineUser {

    private String Id;
    private String Login;
    private Date loginDate;

    public OnlineUser() {
        super();
    }

    public OnlineUser(String Id, String login) {
        setId(Id);
        setLogin(login);
        setLoginDate(new Date());
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getId() {
        return Id;
    }

    public void setLogin(String Login) {
        this.Login = Login;
    }

    public String getLogin() {
        return Login;
    }

    public void setLoginDate(Date loginDate) {
        this.loginDate = loginDate;
    }

    public Date getLoginDate() {
        return loginDate;
    }

}
