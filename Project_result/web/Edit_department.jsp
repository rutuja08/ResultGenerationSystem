<%-- 
    Document   : Edit_department
    Created on : 16 Sep, 2019, 2:12:14 PM
    Author     : rutu
--%>

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
        <h1 >Edit Department</h1>
<div>
<h3><%
out.print("Hello, "+session.getAttribute("admin_name"));

%></h3>
    <div>
    <form method="post">
    
        
    </form>
    <a href="admin_department_home.jsp">BACK</a> 
	</div>
</div>
<jsp:include page="parts/footer.jsp"></jsp:include>

        
    </body>
</html>
