<%-- 
    Document   : Reports
    Created on : 8 Oct, 2019, 3:01:15 AM
    Author     : Mukta
    Internal, External and both reports functionalities are shown in this page.
--%>
<jsp:include page="header.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="form-style" align="center">  
<h2 align="center"><%out.print("Welcome, "+session.getAttribute("admin_name"));%></h2>
        <form method="post">
        <table width="400">
            <tr>
                <td width="125"></td>
                <td>
                    <button class="btn" formaction="InternalReport.jsp" >INTERNAL REPORTS</button>
                </td>
            </tr>
            <tr>
                <td width="125"></td>
                <td>
                    <button class="btn" formaction="#" >EXTERNAL REPORTS</button>
                </td>
            </tr>
            <tr>
                <td width="125"></td>
                <td>
                    <button class="btn" formaction="#" >WHOLE REPORTS</button>
                </td>
            </tr>
            <tr>
                <td width="125"></td>
                <td>
                    <button class="btn" formaction="#" >STUDENT'S REPORT</button>
                </td>
            </tr>
            <tr>
                <td width="125"></td>
                <td height="5"></td>
            </tr>
            <tr>
                <td width="125"></td>
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
