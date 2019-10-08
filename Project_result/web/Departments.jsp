<%-- 
    Document   : Departments.jsp
    Created on : 16 Sep, 2019, 2:02:20 PM
    Author     : rutu
    This page gives functionality to perform operations on 'Course' table.
--%>
<jsp:include page="header.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <jsp:include page="parts/meta.jsp"></jsp:include>
        <title>Department</title>
    </head>
    <body>
<div class="form-style" align="center">
<h2><%out.print("Welcome, "+session.getAttribute("admin_name"));%></h2>
    <form method="post">
        <table width="400" align="center">
            <tr>
                <td width="125"></td>
                <td>
                    <button  formaction="Add_department.jsp" class="btn" >ADD DEPARTMENT</button>
                </td>
            </tr>
            <tr>
                <td width="125"></td>
                <td>
                    <button formaction="Edit_department.jsp" class="btn">EDIT DEPARTMENT</button>
                </td>
            </tr>
            <tr>
                <td width="125"></td>
                <td>
                    <button formaction="#" class="btn">REMOVE DEPARTMENT</button>
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
</center>
<%@include file="parts/footer.jsp" %>
    </body>
</html>
