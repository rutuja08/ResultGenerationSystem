<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
</head>
<body><%@taglib prefix="s"  uri="/struts-tags"%>
<h1>Login Page</h1>

<s:form action="/struts/Login">

<s:radio id="radiobutton" name="user_type[0]" title="Student"  list="#('1' : Student')"/>
<s:radio id="radiobutton" name="user_type[1]" title="Faculty"  list="#('2' : Faculty')"/>

<s:textfield name="user" label="Enter UserName"></s:textfield>
<s:password name="pass" label="Enter Password"></s:password>
<s:submit value="Login"></s:submit>
</s:form>    
</body>
</html>