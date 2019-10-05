<%-- 
    Document   : Admin_faculty
    Created on : 3 Oct, 2019, 11:06:24 PM
    Author     : rutu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Faculty</title>
    </head>
    <body>
        <h1>Admin Faculty</h1>
        
       
        <form>
            <input type="submit"  formaction="Admin_add_new_faculty.jsp" value="ADD NEW">
            <input type="submit"  formaction="Admin_edit_existing_faculty.jsp" value="EDIT EXISTING">
            <input type="submit"  formaction="Admin_add_faculty_subject.jsp" value="ADD FACULTY SUBJECT">
        </form>
    </body>
</html>
