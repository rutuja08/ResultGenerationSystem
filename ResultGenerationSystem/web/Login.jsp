<%-- 
    Document   : Login
    Created on : 23 Dec, 2018, 11:14:22 PM
    Author     : rutu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>  
<jsp:include page="index.jsp"></jsp:include>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <s:form action="loginprocess">
            <s:textfield name="userid" label="User Id"></s:textfield>  
            <s:password name="userpass" label="Password"></s:password>  
            <s:submit value="login"></s:submit>  
            <link href="adminfaculty_register.jsp" />
        </s:form>
    </body>
</html>
