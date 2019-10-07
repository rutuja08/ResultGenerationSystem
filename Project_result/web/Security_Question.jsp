<%-- 
    Document   : Add_Security_Question
    Created on : 6 Oct, 2019, 3:12:37 PM
    Author     : Mukta
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
            <h2>Security Question</h2>
            <form action="Add_Security_Question.jsp" method="POST">

            <table width="400" align="center">
                <tr>
                    <td width="125">Security Question:<span class="required">*</span></td>
                    <td width="180"><div class="input-group"><input type="text" name="security_question"  placeholder="Security Question" required="required" /></div></td>
                </tr>
                <tr>
                    <td></td>
                    <td><a href="#" class="btn">Back</a>
                        <button type="submit" class="btn">Submit</button>
                        <button type="reset" class="btn">Reset</button>
                    </td>
                </tr>
            </table>
        </form>
        </div>
        <div class="footer">
        <%@include file="parts/footer.jsp" %>
        </div>
    </body>
</html>
