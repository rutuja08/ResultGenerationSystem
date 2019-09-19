/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;
import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author rutu
 */
public class LoginDao extends HttpServlet{
   
    
    static String first_name;
    public static boolean validate(StudentBean bean1)
    {  
        
    boolean status=false;  
    String sql = "select first_name from Result_generation.Student where "
            + "email_id=? and password=?";
    
    try{  
        Connection con=ConnectionProvider.getCon();  
              
        PreparedStatement ps=con.prepareStatement(sql);  
  
        ps.setString(1,bean1.getEmail_id());  
        ps.setString(2, bean1.getPassword());  
              
        ResultSet rs=ps.executeQuery();  
        
        status=rs.next();
        first_name = rs.getString(first_name);
        ps.clearParameters();
        
        }
    catch(SQLException e){
        System.out.println(e);
        }  
  
    return status;  
  
    }  

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
    
        HttpSession session = req.getSession();
        session.setAttribute("first_name", first_name);
        session.setAttribute("user_stud_type_no", 1);
        super.doGet(req, resp); //To change body of generated methods, 
        //choose Tools | Templates.
    }
    
    
}
