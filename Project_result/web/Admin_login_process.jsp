<%-- 
    Document   : Admin_login_proccess
    Created on : 15 Jun, 2019, 1:07:07 PM
    Author     : rutu
--%>

<jsp:include page="parts/firstheader.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bean.*"%>  
<%@page import="java.sql.*"%>  
<jsp:useBean id="Admin" class="bean.AdminBean">  
 
<jsp:setProperty property="email_id" name="Admin"/>
<jsp:setProperty property="password" name="Admin"/>  
</jsp:useBean>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/valid.css" type="text/css">
    </head>
    <body>
        <div class="form-style" align="center">

<%  
boolean status=false;  

int course_code;
int faculty_id;
String first_name, prefix, last_name;
String user_type_from_db=null;
String user_type = request.getParameter("user_type");

String sql = "select ID,prefix,first_name,last_name,course_code,user_type from "
        + " Result_generation.AdminFacultyUsers where email_id=? and password=?";
    
    try{  
        Connection con_result=ConnectionProvider.getCon();  
              
        PreparedStatement ps=con_result.prepareStatement(sql);  
  
        ps.setString(1,request.getParameter("email_id"));  
        ps.setString(2, request.getParameter("password"));  
              
        ResultSet rs = ps.executeQuery();  
        
        status = rs.next();
        faculty_id = rs.getInt(1);
        prefix = rs.getString(2);
        first_name = rs.getString(3);
        last_name = rs.getString(4);
        course_code = rs.getInt(5);
        user_type_from_db = rs.getString(6);
       
        ps.clearParameters();
        
        String admin_name = prefix+" "+first_name+" "+last_name;
        session.setAttribute("admin_name",admin_name );
        session.setAttribute("faculty_id",faculty_id );
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
out.print(user_type_from_db);
if(user_type_from_db.equals("a"))
{
    out.print(user_type);
    response.sendRedirect("Admin_home.jsp");

}
else if(user_type.equals("faculty") && user_type_from_db.equals("f"))
{
out.print(user_type);
response.sendRedirect("Faculty_home.jsp");
}
else  
{  
 %>
 <script type="text/javascript">
                alert("Sorry, email, password or restricted access error");
            </script>
    <a href="Admin_login.jsp" class="btn">Back</a>
 
 <%
}
}  
%>  
<%@include file="parts/footer.jsp" %>
        </div>
    </body>
</html>
