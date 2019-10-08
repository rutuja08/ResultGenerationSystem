<%-- 
    Document   : InternalReport1
    Created on : 8 Oct, 2019, 4:40:10 AM
    Author     : Mukta
--%>
<jsp:include page="header.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="form-style" align="center">
            <%
              String theory_practical = request.getParameter("theory_practical");
              String class_year = request.getParameter("class_year");
              String academic_year = request.getParameter("academic_year");
              int faculty_id = Integer.parseInt(session.getAttribute("faculty_id"));
            %>
        </div>
        </center>
<%@include file="parts/footer.jsp" %>
    </body>
    </body>
</html>
