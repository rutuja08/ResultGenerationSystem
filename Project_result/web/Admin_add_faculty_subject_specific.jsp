<%-- 
    Document   : Admin_add_faculty_subject_specific
    Created on : 3 Oct, 2019, 11:29:03 PM
    Author     : rutu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add faculty subject</title>
        <%@include file="Connection.jsp" %>
    </head>
    <body>
        <h1>Add Faculty Subject</h1>
        <form>
            <%
                String subject_type = request.getParameter("subject_type");
                
                session.setAttribute("subject_type_faculty_subject", subject_type);
                //out.println(request.getParameter("subject_type"));
                
                if(subject_type == "theory")
                {
                    String theory_sql = "SELECT `theory_sub_code`, `theory_sub_name` FROM `TheorySubject` WHERE 1";
                }
                %>
        </form>
    </body>
</html>
