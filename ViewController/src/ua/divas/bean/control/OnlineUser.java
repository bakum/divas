package ua.divas.bean.control;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

import java.text.SimpleDateFormat;

import java.util.Date;

public class OnlineUser {

    private String Id;
    private String Login;
    private Long loginDate;
    private Date logDate;
    private String ipAdress;

    public String getIpAdress() {
        return ipAdress;
    }

    public Date getLogDate() {
        return new Date(this.loginDate);
    }

    public OnlineUser() {
        super();
    }

    public OnlineUser(String Id, String login) {
        setId(Id);
        setLogin(login);
        setLoginDate(System.currentTimeMillis());
        
        try {
            URL connection = new URL("http://agentgatech.appspot.com");
            URLConnection con = connection.openConnection();
            String str = null;
            BufferedReader reader = new BufferedReader(new InputStreamReader(con.getInputStream()));
            str = reader.readLine();
            ipAdress = str;
            //System.out.println(str);
        } catch (MalformedURLException murle) {
            ipAdress = "Inaccessible";
        } catch (IOException ioe) {
            ipAdress = "Inaccessible";
        }
    }

    public String loginDateToString() {
        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
        Date loginDateTime = new Date(this.loginDate);
        return format.format(loginDateTime);
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

    public void setLoginDate(Long loginDate) {
        this.loginDate = loginDate;
    }

    public Long getLoginDate() {
        return loginDate;
    }

    public String toString() {
        return Login+"("+Id+")";
    }

}
