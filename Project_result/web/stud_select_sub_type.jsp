<%-- 
    Document   : stud_select_sub_type
    Created on : 9 Oct, 2019, 12:25:03 AM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select Subject Type</title>
    </head>
    <body  class="body">
        <div class="form-style">  
        <h2 align="center">Internal Marks</h2>
        <form method="GET" action="atud_internal_report.jsp">
            <table width="150" align="center">
                <tr><td><button type="submit" name="theory" value="theory" class="btn">Theory</button></td></tr>
                <tr><td><button type="submit" name="practical" value="practical" class="btn">Practical</button></td></tr>
                <tr><td><button type="submit" name="other" value="other" class="btn">Mini, Major Project or Seminar</button></td></tr>
                
                <tr>
                
                <td><a href="Student_home.jsp" class="btn">Back</a></td>
            </tr>
            </table>
        </form>
        </div>
    <div class="footer">
    <%@include file="parts/footer.jsp" %>
    </div>    
    </body>
        
</html>
