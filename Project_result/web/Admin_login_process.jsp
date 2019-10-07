<%-- 
    Document   : Admin_login_proccess
    Created on : 15 Jun, 2019, 1:07:07 PM
    Author     : rutu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bean.*"%>  
<%@page import="java.sql.*"%>  
<jsp:useBean id="Admin" class="bean.AdminBean">  
 
<jsp:setProperty property="email_id" name="Admin"/>
<jsp:setProperty property="password" name="Admin"/>  
</jsp:useBean>

<%  
boolean status=false;  

int course_code;
String first_name, prefix, last_name;
String user_type = request.getParameter("user_type");

String sql = "select prefix,first_name,last_name,course_code from  Result_generation.AdminFacultyUsers where email_id=? and password=?";
    
    try{  
        Connection con_result=ConnectionProvider.getCon();  
              
        PreparedStatement ps=con_result.prepareStatement(sql);  
  
        ps.setString(1,request.getParameter("email_id"));  
        ps.setString(2, request.getParameter("password"));  
              
        ResultSet rs = ps.executeQuery();  
        
        status = rs.next();
        prefix = rs.getString(1);
        first_name = rs.getString(2);
        last_name = rs.getString(3);
        course_code = rs.getInt(4);
       
        ps.clearParameters();
        
        String admin_name = prefix+" "+first_name+" "+last_name;
        session.setAttribute("admin_name",admin_name );
        session.setAttribute("faculty_course_code", course_code);
        session.setAttribute("admin_email_id",request.getParameter("email_id"));
        if(rs.next())
        {
            status= true;
        }
        
        }
    catch(SQLException e){
        System.out.println(e);
        }  

if(status)
{  
out.println("You are successfully logged in..");  
session.setAttribute("user_type",user_type);
out.print(user_type);
if(user_type.equals( "admin"))
{
    out.print(user_type);
    response.sendRedirect("Admin_home.jsp");

}
else if(user_type.equals( "faculty"))
{
out.print(user_type);
response.sendRedirect("Faculty_home.jsp");
}
}
else  
{  
out.print("Sorry, email or password error");  
%>  
<jsp:include page="Login_page.jsp"></jsp:include>  
<%  
}  
%>  
