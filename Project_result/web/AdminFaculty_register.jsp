<%-- 
    Document   : AdminFaculty_register
    Created on : 5 Oct, 2019, 7:31:49 PM
    Author     : rutu
--%>

<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" contentType="text/html" %>
<%@include file="Connection.jsp" %>
<%@page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <%
            String prefix,first_name, middle_name, last_name, email_id, contact, answer;
            int course_code,secquest_no;
            
            prefix = request.getParameter("prefix");
            first_name = request.getParameter("first_name");
            middle_name = request.getParameter("middle_name");
            last_name = request.getParameter("last_name");
            
            
            email_id = request.getParameter("email_id");
            course_code = Integer.parseInt(request.getParameter("course_code"));
            
            answer = request.getParameter("answer");
            
            contact = request.getParameter("contact");
            secquest_no = Integer.parseInt(request.getParameter("secquest_no"));
            String password= request.getParameter("password");
            String rpass= request.getParameter("reEnterPassword");
            
            if(password!=null && rpass!= null)
            {
                if(!password.equals(rpass))
                {
         %>
          <%@include file="password_error_page.html" %>
         <%
                }
            }

            Statement stmt;
            ResultSet rs;
            PreparedStatement ps=null;

            
          //  String query = "INSERT INTO Result_generation.Student VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            String sql = "INSERT INTO `AdminFacultyUsers`(`ID`, `prefix`, `first_name`, `middle_name`, `last_name`, `email_id`, "
                        + "`password`, `secquest_no`, `answer`, `contact`, `course_code`) "
                        +"VALUES (?,?,?,?,?,?,?,?,?,?,?)";                              
            try
            {
                Class.forName(Connect.DRIVER);
                Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                ps = con.prepareStatement(sql);
                                            
                
                ps.setString(1, null);
                ps.setString(2, prefix);
                ps.setString(3, first_name);
                ps.setString(4, middle_name);
                ps.setString(5, last_name);
                ps.setString(6, email_id);
                ps.setString(7, password);
                ps.setInt(8, secquest_no);
                ps.setString(9, answer);
                ps.setString(10, contact);
                ps.setInt(11, course_code);
            
                ps.executeUpdate();
                %>
                <h3><% out.print("Welcome "+ first_name+" you have successfuly registerd.");%></h3>
                 <%@include file="Admin_login.jsp" %>
                <%
                }
                catch(Exception e)
                {
                 %>
                 <p> <%System.out.print(e);%> </p>
                  <%   
                 }
                  %>
    </body>
</html>
