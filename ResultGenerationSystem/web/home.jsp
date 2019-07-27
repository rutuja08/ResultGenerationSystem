<%-- 
    Document   : home
    Created on : 24 Dec, 2018, 6:24:59 PM
    Author     : rutu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>  
<jsp:include page="index.jsp"></jsp:include> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <hr/>  
        <br/>Welcome, <s:property value="username"/>
    </body>
</html>
