<%-- 
    Document   : Student_register
    Created on : 18 Mar, 2019, 6:13:37 PM
    Author     : rutu
--%>

<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html" %>
<%@include file="Connection.jsp" %>
<%@page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String first_name, middle_name,present_class, last_name, prn, 
                    email_id, sex, contact, answer, division,joining_yr,present_roll_no;
            int course_code,secquest_no,shift;
            
            joining_yr= request.getParameter("joining_yr");
            first_name = request.getParameter("first_name");
            present_class = request.getParameter("present_class");
            present_roll_no = request.getParameter("present_roll_no");
            middle_name = request.getParameter("middle_name");
            last_name = request.getParameter("last_name");
            sex = request.getParameter("sex");
            prn = request.getParameter("prn");
            email_id = request.getParameter("email_id");
            course_code = Integer.parseInt(request.getParameter("course_code"));
            shift = Integer.parseInt(request.getParameter("shift"));
            answer = request.getParameter("answer");
            division = request.getParameter("division");
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
            String sql = "INSERT INTO `Student`(`stud_reg_no`, `prn`, `first_name`, `middle_name`, `last_name`,"
            + "`email_id`, `password`, `secquest_no`, `answer`, `contact`, `joining_yr`,`present_class`, `sex`,"
            + "`shift`, `division`, `course_code`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";                              
            try
            {
                Class.forName(Connect.DRIVER);
                Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                ps = con.prepareStatement(sql);
                                            
                
                ps.setString(1, null);
                ps.setString(2, prn);
                ps.setString(3, first_name);
                ps.setString(4, middle_name);
                ps.setString(5, last_name);
                ps.setString(6, email_id);
                ps.setString(7, password);
                ps.setInt(8, secquest_no);
                ps.setString(9, answer);
                ps.setString(10, contact);
                ps.setString(11, joining_yr);
                ps.setString(12, present_class);
                ps.setString(13, sex);
                ps.setInt(14, shift);
                ps.setString(15, division);    
                ps.setInt(16, course_code);
            
                ps.executeUpdate();
                %>
                <h3><% out.print("Welcome "+ first_name+" you have successfuly registerd.");%></h3>
                 <%@include file="Login_page.jsp" %>
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
<%@include file="parts/footer.jsp" %>
    
</html>
