<%-- 
    Document   : AdminFaculty_register
    Created on : 5 Oct, 2019, 7:31:49 PM
    Author     : rutu
    Information entered by user on AdminFacultyRegistrationForm.jsp is retrieved here and added to the database.
--%>
<jsp:include page="header.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
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
        <div class="form-style" align="center">
        <%
            String prefix,first_name, middle_name, last_name, email_id, contact, answer, user_type;
            int course_code,secquest_no;
            
            prefix = request.getParameter("prefix");
            first_name = request.getParameter("first_name");
            middle_name = request.getParameter("middle_name");
            last_name = request.getParameter("last_name");
            
            
            email_id = request.getParameter("email_id");
            course_code = Integer.parseInt(request.getParameter("course_code"));
            //user_type = request.getParameter("user_type");
            
            answer = request.getParameter("answer");
            
            contact = request.getParameter("contact");
            secquest_no = Integer.parseInt(request.getParameter("secquest_no"));
            String password= request.getParameter("password");
            String rpass= request.getParameter("reEnterPassword");
            if(!password.equals(rpass))
            {
            %>
            <script type="text/javascript">
                alert("Password is not matching. Kindly check it.");
            </script>
            <a href="AdminFacultyRegistrationForm.jsp" class="btn"></a>
            <%
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
                //ps.setString(12, user_type);
                ps.executeUpdate();
                %>
                <b><% out.print("Welcome "+ first_name+". You have successfuly registerd.");%></b>
                <p/>
                <a href="Admin_login.jsp" class="btn">Sign In</a>
                <%
                }
                catch(Exception e)
                {
                 %>
                 <p> <%System.out.print(e);%> </p>
                  <%   
                 }
                  %>
        </div>
        <div class="footer">
    <%@include file="parts/footer.jsp" %>
    </div>
    </body>
</html>
