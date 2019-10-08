<%-- 
    Document   : Faculty_internal_entery_select_assessment
    Created on : 8 Oct, 2019, 1:03:05 PM
    Author     : rutu
--%>

<jsp:include page="header.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/valid.css" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add faculty subject</title>
        
    </head>
    <body  class="body">
        <div class="form-style">  
        <h2 align="center">Internal Marks</h2>
        <form method="GET" action="#">
            <%
                String subject_type = request.getParameter("subject_type");
                int faculty_id = (int)session.getAttribute("faculty_id");
                int course_code = Integer.parseInt(request.getParameter("course_code"));
                String course_name = request.getParameter("course_name");
                session.setAttribute("subject_type", subject_type);
                String present_year = request.getParameter("year");
                
                %>
            <table width="400" align="center" >
                <tr>
                    <td>Course Name: </td>
                    <td><%=course_name%></td>
                </tr>
                <tr>
                    <td><label>Year: </label></td>
                    <td><%=present_year%></td>
                </tr>
                <tr>
                    <td><label>Faculty: </label></td>
                    <td><%=session.getAttribute("admin_name")%></td>
                </tr>
            </table>
        </form>
        </div>
    </body>
</html>
