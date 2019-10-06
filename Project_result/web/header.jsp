<%-- 
    Document   : header
    Created on : 6 Oct, 2019, 7:57:08 AM
    Author     : Mukta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div align="center">
    <img alt="PES" src="images/mcoelogo.png" width="48" height="40">
    <font color="crimson" size=6><b>
    Modern College of Engineering</font></b><br>
    <font color="crimson" size=4><i>
    <%= request.getParameter("discription") %><p>
</div>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modern College of Engineering, Pune</title>
        <link rel="stylesheet" href="css/valid.css" type="text/css">
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
