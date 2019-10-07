<%-- 
    Document   : Faculty_internal_entery
    Created on : 4 Oct, 2019, 12:45:04 PM
    Author     : rutu
--%>

<jsp:include page="header.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/valid.css" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select type for faculty subject</title>
        <%@include file="Connection.jsp" %>
    </head>
    <body  class="body">
        <div class="form-style">  
        <h2 align="center">Select Type For Faculty Subject</h2>
        <form action="Admin_add_faculty_subject_specific.jsp" method="GET">
            
            <table width="400" align="center" >
                <tr>
                    <td><label>Subject Type:</label><span class="required">*</span></td>
                    
                    <td><input type="radio" name="subject_type" value="theory" >THEORY<br>
                        <input type="radio" name="subject_type" value="practical">PRACTICAL<br>
                        <input type="radio" name="subject_type" value="other">MINI, MAJOR PROJECT or SEMINAR
                    </td>
                </tr>
            <p/>
            <tr>
            
            <%
            try
            {
            Class.forName(Connect.DRIVER);
            Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
            Statement stmt = con.createStatement();
            ResultSet rs= stmt.executeQuery("SELECT * FROM `Course`");

            %>
            <td><label>Course: </label></td>
            <td><select name="course_code" class="select">
                <% 
                while(rs.next())
                {
                %>
                <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>
                <% 
                }rs.close();
                stmt.close();
                
                %>
                </select></td>
            <%
                }
                catch(Exception e)
                {
                    System.out.print(e);
                }
            %>
            </tr>
            <p/>
            <p/>
            <tr>
                <td><a href="Admin_faculty.jsp" class="btn">Back</a></td>
                <td><button type="submit" class="btn">Submit</button></td>
            </tr>
            </table>
        </form>
        </div>
    </body>
    <div class="footer">
    <%@include file="parts/footer.jsp" %>
    </div>
</html>
