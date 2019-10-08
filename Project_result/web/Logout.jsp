<%-- 
    Document   : Logout
    Created on : 8 Oct, 2019, 5:07:35 AM
    Author     : Mukta
    This page invalidates session and redirect user to Welcome_page.jsp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
	try{
		session = request.getSession(false);
		session.invalidate();
		response.sendRedirect("Welcome_page.jsp");
	}
	catch(Exception e){
		
	}
        %>
    </body>
</html>
