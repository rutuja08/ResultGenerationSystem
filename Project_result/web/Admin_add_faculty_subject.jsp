<%-- 
    Document   : Admin_add_faculty_subject
    Created on : 3 Oct, 2019, 11:14:18 PM
    Author     : rutu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select type for faculty subject</title>
        <%@include file="Connection.jsp" %>
    </head>
    <body>
        <h1>Select Type For Faculty Subject</h1>
        <form action="Admin_add_faculty_subject_specific.jsp" method="GET">
            
            <input type="radio" name="subject_type" value="theory">THEORY
            <input type="radio" name="subject_type" value="practical">PRACTICAL
            <input type="radio" name="subject_type" value="other">MINI, MAJOR PROJECT or SEMINAR
            <br>
            
            <%
            try
            {
            Class.forName(Connect.DRIVER);
            Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
            Statement stmt = con.createStatement();
            ResultSet rs= stmt.executeQuery("SELECT * FROM `Course`");

            %>
            Course: <select name="course_code" class="select">
                <% 
                while(rs.next())
                {
                %>
                <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>
                <% 
                }
                %>
            </select>
            <%
                }
                catch(Exception e)
                {
                    System.out.print(e);
                }
            %>

            <br>
            <%
            try
            {
                Class.forName(Connect.DRIVER);
                Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                Statement stmt = con.createStatement();
                ResultSet rs= stmt.executeQuery("SELECT * FROM `Academic_year`");
                                    
            %>
            Academic Year: <select name="academic_year" >
            <% 
            while(rs.next())
            {
            %>
            <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
            <% 
            }
            %>
            </select>
            <%
            }
            catch(Exception e)
            {
                System.out.print(e);
            }
            %>
            
            <br>
            <%
            try
            {
                Class.forName(Connect.DRIVER);
                Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                Statement stmt = con.createStatement();
                ResultSet rs= stmt.executeQuery("SELECT DISTINCT sem FROM `TheorySubject` WHERE 1");
                                    
            %>
            Semester: <select name="sem" >
            <% 
            while(rs.next())
            {
            %>
            <option value="<%=rs.getInt(1)%>"><%=rs.getInt(1)%></option>
            <% 
            }
            %>
            </select>
            <%
            }
            catch(Exception e)
            {
                System.out.print(e);
            }
            %>
					
            
            <input type="submit" name="Submit" value="submit">
        </form>
    </body>
</html>
