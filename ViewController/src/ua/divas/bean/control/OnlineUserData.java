package ua.divas.bean.control;

import java.sql.CallableStatement;
import java.sql.SQLException;

import java.sql.Types;

import java.util.Iterator;
import java.util.List;

import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCDataControl;

import oracle.jbo.JboException;

import ua.divas.module.AppModuleImpl;

public class OnlineUserData {

    private OnlineUser onlineUser;
    private List<OnlineUser> onlineUserList;
    protected static int VARCHAR2 = Types.VARCHAR;

    public void setOnlineUserObject(OnlineUser onlineUserObject) {
        this.onlineUser = onlineUserObject;
    }

    public OnlineUser getOnlineUserObject() {
        return onlineUser;
    }

    public void setOnlineUserList(List<OnlineUser> onlineUserList) {
        this.onlineUserList = onlineUserList;
    }

    public List<OnlineUser> getOnlineUserList() {
        return onlineUserList;
    }

    private int searchUser(String Id) {
        Iterator<OnlineUser> i = onlineUserList.iterator();
        int c = 0;
        while (i.hasNext()) {
            OnlineUser o = i.next();
            if (o.getId().matches(Id)) {
                return c;
            }
            c++;
        }
        return -1;
    }
    
    private String getUserId(String login) {
        String _id = (String)callStoredFunction(VARCHAR2, "USR_SETT.GET_USERID(?)", new Object[] { login });
        if (_id.equals("00000000-0000-0000-0000-000000000000"))
            return null;
        else
            return _id;
    }
    
    private Object callStoredFunction(int sqlReturnType, String stmt, Object[] bindVars) {
        CallableStatement st = null;
        BindingContext bindingContext = BindingContext.getCurrent();
        DCDataControl dc  = bindingContext.findDataControl("AppModuleDataControl"); // Name of application module in datacontrolBinding.cpx
        AppModuleImpl am = (AppModuleImpl)dc.getDataProvider();
        try {
            // 1. Create a JDBC CallabledStatement
            st = am.getDBTransaction().createCallableStatement("begin ? := " + stmt + ";end;", 0);
            // 2. Register the first bind variable for the return value
            st.registerOutParameter(1, sqlReturnType);
            if (bindVars != null) {
                // 3. Loop over values for the bind variables passed in, if any
                for (int z = 0; z < bindVars.length; z++) {
                    // 4. Set the value of user-supplied bind vars in the stmt
                    st.setObject(z + 2, bindVars[z]);
                }
            }
            // 5. Set the value of user-supplied bind vars in the stmt
            st.executeUpdate();
            // 6. Return the value of the first bind variable
            return st.getObject(1);
        } catch (SQLException e) {
            throw new JboException(e);
        } finally {
            if (st != null) {
                try {
                    // 7. Close the statement
                    st.close();
                } catch (SQLException e) {
                }
            }
        }
    }

    public void addOnlineUser(String login) {
        String userId = getUserId(login);
        int i = searchUser(userId);
        OnlineUser usr = new OnlineUser(userId, login);
        if (i >= 0) {            
            onlineUserList.add(usr);
        } else {
            onlineUserList.set(i, usr);
        }
    }

    public void removeOnlineUser(String userId) {
        Iterator<OnlineUser> i = onlineUserList.iterator();
        while (i.hasNext()) {
            OnlineUser o = i.next();
            if (o.getId().matches(userId)) {
                i.remove();
            }
        }
    }
}
