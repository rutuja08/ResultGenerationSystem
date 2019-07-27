/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;
import Conn.Connect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author rutu
 */
public class LoginValidCheck {
    
    public static boolean validate(String userid, String userpass)
    {
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        
        boolean status=false;
        try{    
            
             Class.forName(Connect.DRIVER);  
             con=DriverManager.getConnection(Connect.DB,Connect.DBUSER,Connect.DBPASS);  
             ps=con.prepareStatement("select user_id , password from AdminFaculty User where userid=? and password=?");  
             ps.setString(1,userid);  
             ps.setString(2,userpass);  
             rs=ps.executeQuery();  
             status=rs.next();  
        }catch(ClassNotFoundException | SQLException e)
        {
        }
        return false;
    }
    
}
