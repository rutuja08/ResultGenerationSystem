<%
	//This is the header page of this project.
	//This page is ment for displaying the name of the firm on every page and also the logout button.
	//It is accesses in every jsp files.
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html>
<head>

<center>
<img alt="CA" src="Images/CA_LOGO.jpg" width="48" height="40">
<font color="blue" size=6><b>Gore & Ambekar</b></font><br>
<font color="black" size=4><i>
<%= request.getParameter("discription") %>

<title>Gore & Ambekar Charted Accountants</title>
<link rel="stylesheet" href="valid.css" type="text/css">
</head>
<body>
<div clas="form-style">
<form action="Logout.jsp">
<div align="right">
<input type="submit" value="Logout" class="btn" />
</div>
</form>
</body>
</html>