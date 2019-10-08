<%-- 
    Document   : Faculty_home
    Created on : 4 Oct, 2019, 10:32:15 AM
    Author     : rutu
    This page specifically shows functionality of 'Faculty'.
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
        <div class="form-style" align="center">  
<h2 align="center"><%out.print("Welcome, "+session.getAttribute("admin_name"));%></h2>

    <form method="post">
        <table width="400">
            <tr>
                <td width="125"></td>
                <td>
                    <button class="btn" formaction="Faculty_internal_entery.jsp" >ADD INTERNAL MARKS</button>
                </td>
            </tr>
            <tr>
                <td width="125"></td>
                <td>
                    <button class="btn" formaction="Faculty_external_entery.jsp" >ADD EXTERNAL MARKS</button>
                </td>
            </tr>
            <tr>
                <td width="125"></td>
                <td>
                    <button formaction="Reports.jsp" class="btn">REPORTS</button>
                </td>
            </tr>
            <tr>
                <td width="125"></td>
                <td height="5"></td>
            </tr>
            <tr>
                <td width="125"></td>
                <td><a href="Admin_login.jsp" class="btn">Back</a></td>
            </tr>
        </table>
    </form>
	</div>
<div class="footer">
<jsp:include page="parts/footer.jsp"></jsp:include>
</div>
    </body>
</html>
