<%-- 
    Document   : Edit_department
    Created on : 16 Sep, 2019, 2:12:14 PM
    Author     : rutu
    This is for editing department
    Spelling can be changed using this page
--%>
<jsp:include page="header.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@page import="java.sql.*" %>
        <%@page import="bean.*" %>
        <jsp:include page="parts/meta.jsp"></jsp:include>

    </head>
    <body>
        <div class="form-style" align="center">
<h2><%out.print("Hello, "+session.getAttribute("admin_name"));%></h2>
    <form method="post">
    
        
    </form>
    <a href="Departments.jsp" class="btn">BACK</a> 
</div>
<jsp:include page="parts/footer.jsp"></jsp:include> 
    </body>
</html>
