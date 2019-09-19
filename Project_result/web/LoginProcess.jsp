<%-- 
    Document   : LoginProcess
    Created on : 19 Mar, 2019, 6:04:35 PM
    Author     : rutu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bean.*"%>  
<%@page import="java.sql.*"%>  
<jsp:useBean id="Student" class="bean.StudentBean">  
 
<jsp:setProperty property="email_id" name="Student"/>
<jsp:setProperty property="password" name="Student"/>  
</jsp:useBean>

<%  
boolean status=false;//LoginDao.validate(Student);  

String first_name,prn;
int course_code;

String sql = "select first_name,course_code,prn from Result_generation.Student where email_id=? and password=?";
    
    try{  
        Connection con=ConnectionProvider.getCon();  
              
        PreparedStatement ps=con.prepareStatement(sql);  
  
        ps.setString(1,request.getParameter("email_id"));  
        ps.setString(2, request.getParameter("password"));  
              
        ResultSet rs=ps.executeQuery();  
        
        status=rs.next();
        first_name = rs.getString(1);
        course_code = rs.getInt(2);
        prn = rs.getString(3);
        ps.clearParameters();
        session.setAttribute("first_name",first_name );
        session.setAttribute("prn",prn );
        session.setAttribute("course_code",course_code );
        session.setAttribute("email_id",request.getParameter("email_id"));
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
out.println("You r successfully logged in");  
session.setAttribute("session","TRUE");  
%> 
<jsp:include page="student_home.jsp"></jsp:include>  <%
}  
else  
{  
out.print("Sorry, email or password error");  
%>  
<jsp:include page="Login_page.jsp"></jsp:include>  
<%  
}  
%>  
