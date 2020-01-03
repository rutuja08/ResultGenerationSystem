<%-- 
    Document   : Ass_department
    Created on : 16 Sep, 2019, 2:42:44 PM
    Author     : rutu
    User type 'Admin' only can access this page.
    This is used for adding new department into 'Course' table.
--%>
<jsp:include page="parts/firstheader.jsp" >
    <jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <%@page import="java.sql.*" %>
        <%@page import="bean.*" %>


        <script>
            function goBack() {
                window.history.back();
            }
        </script>
    </head>
    <body>

        <%
            if (session.getAttribute("admin_name") != null) {

            } else {
        %><jsp:forward page="Admin_login.jsp"></jsp:forward><%
            }
        %>


        <form action="Add_department_jsp.jsp" method="post">
            <div class="form-style" align="center">
                <h2>Add Department Or Course</h2>
                <div class="logout">
                    <a href="Logout.jsp" class="logout">LOGOUT</a>
                </div>
                <table width="400">
                    <tr>
                        <td>Department:<span class="required">*</span></td>
                        <td ><div class="input-group"><input type="text" name="new_dept" id="new_dept" placeholder="Department" required></div></td>
                    </tr>
                    <tr>
                        <td>

                            <input type="submit" value="Submit" class="btn_menu btn_menu1">
                        </td>
                        <td align="center">
                            <input type="reset" value="Reset" class="btn_menu btn_menu1">
                        </td>
                    </tr>            
                </table>

        </form>
    </div>

    <div class="back_btn">
        <a  class="btn" onclick="goBack()">Back</a>
    </div>
    <div class="footer">
        <%@include file="parts/footer.jsp" %>
    </div>
</body>
</html>
