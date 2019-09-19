/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;
import java.sql.*;
import static bean.Provider.*;
/**
 *
 * @author rutu
 */
public class ConnectionProvider {
  
    private static Connection con = null;
    private static Connection con_f = null;
    
    static{
        try{
               Class.forName(DRIVER);  
               con = DriverManager.getConnection(URL_R,USER,PASS);  
               con_f = DriverManager.getConnection(URL_F,USER,PASS);  
               
        }
        catch(ClassNotFoundException | SQLException e)
        {
            System.out.println(e);
        }  
        }  
    
        public static Connection getCon(){  
        return con;  
       }
        public static Connection getCon_f(){  
        return con_f;  
       }
    
}
