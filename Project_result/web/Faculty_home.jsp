<%-- 
    Document   : Faculty_home
    Created on : 4 Oct, 2019, 10:32:15 AM
    Author     : rutu
--%>

<jsp:include page="header.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty home</title>
    </head>
    <body>
        <div class="form-style">  
<h2 align="center">Faculty</h2>

<h3><%
out.print("Welcome, "+session.getAttribute("admin_name"));

%></h3>

    <form method="post">
        <table width="400" align="center">
            <tr>
                <td><button class="btn" formaction="Faculty_internal_entery.jsp" >ENTER INTERNAL MARKS</button></td>
                <td><button class="btn" formaction="Faculty_external_entery.jsp" >ENTER EXTERNAL MARKS</button></td>
                <td><button class="btn" formaction="#" >INTERNAL REPORTS</button></td>
                <td><button class="btn" formaction="#" >EXTERNAL REPORTS</button></td>
                <td><button class="btn" formaction="#" >OVERALL REPORTS</button></td>
                <td><button class="btn" formaction="#" >SPECIFIC STUDENT FULL REPORT</button></td>
            </tr>
            <tr>
                <td><a href="Faculty_home.jsp" class="btn">Back</a></td>
            </tr>
        </table>
    </form>
	</div>
<div class="footer">
<jsp:include page="parts/footer.jsp"></jsp:include>
</div>
    </body>
</html>
