/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author rutu
 */
public class Login  implements SessionAware{
    private String userid,userpass;  

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }
    public String getUserpass() {
        return userpass;
    }

    public void setUserpass(String userpass) {
        this.userpass = userpass;
    }
    
    SessionMap sessionmap;  

    public void setSession(Map map) {
        sessionmap=(SessionMap)map;  
        sessionmap.put("login","true");
      
    }
    
    public String logout(){  
        sessionmap.invalidate();  
        return "success";  
    } 
    
    public String execute(){  
    if(LoginValidCheck.validate(userid, userpass)){  
        return "success";  
    }  
    else{  
        return "error";  
    }  
}  
}
