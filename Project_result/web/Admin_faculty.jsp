<%-- 
    Document   : Admin_faculty
    Created on : 3 Oct, 2019, 11:06:24 PM
    Author     : rutu
--%>
<jsp:include page="header.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/Style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Faculty</title>
    </head>
    <body class="body">
         <div class="form-style" align="center">  
        <h2><%out.print("Welcome, "+session.getAttribute("admin_name"));%></h2>
       
        <form>
            <table width="400" align="center">
                <tr>
                    <td width="125"></td>
                    <td>
                        <input type="submit" class="btn" formaction="AdminFacultyRegistrationForm.jsp" value="ADD FACULTY">
                    </td>
                </tr>
                <tr>
                    <td width="125"></td>
                    <td>
                        <input type="submit" class="btn" formaction="Admin_edit_existing_faculty.jsp" value="EDIT FACULTY">
                    </td>
                </tr>
                <tr>
                    <td width="125"></td>
                    <td>
                        <input type="submit" class="btn" formaction="Admin_add_faculty_subject.jsp" value="ADD FACULTY SUBJECT">
                    </td>
                </tr>
                <tr>
                    <td width="125"></td>
                    <td height="5"></td>
                </tr>
                <tr>
                    <td width="125"></td>
                    <td><a href="Admin_home.jsp" class="btn">Back</a></td>
                </tr>
            </table>
        </form>
        </div>
    <div class="footer">
    <%@include file="parts/footer.jsp" %>
    </div>
    </body>
</html>
