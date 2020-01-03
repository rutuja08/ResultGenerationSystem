<%-- 
    Document   : Edit_department
    Created on : 16 Sep, 2019, 2:12:14 PM
    Author     : rutu
    This is for editing department
    Spelling can be changed using this page
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
        <jsp:include page="parts/meta.jsp"></jsp:include>

        <script>
            function goBack() {
                window.history.back();
            }
            
            function edit_dept()
            {
                
            }
        </script>
        </head>
        <body>
            <div class="form-style" >
                <h2>Edit Department Or Course</h2>
                <div class="logout">
                    <a href="Logout.jsp" class="logout">LOGOUT</a>
                </div>


                <form method="post">

                <%
                    String course_name = request.getParameter("course");
                %>
                <table width="400" align="center">
                    <tr>
                        <td>
                            Old Department Name: 
                        </td>
                        <td><%=course_name%></td>
                    </tr>
                    <tr>
                        <td>New Department Name:<span class="required">*</span></td>
                        <td ><div class="input-group"><input type="text" name="new_dept" id="new_dept" placeholder="Department" required></div></td>
                    </tr>
                    <tr>
                        <td>

                            <input type="submit" value=" Edit " onclick="edit_dept()" class="btn_menu btn_menu1">
                        </td>
                        <td align="center">
                            <input type="reset" value="Reset" class="btn_menu btn_menu1">
                        </td>
                    </tr>            
                </table>


            </form>

        </div>
        <div class="back_btn">
            <a href="Departments.jsp" class="btn">BACK</a> 
        </div>
        <jsp:include page="parts/footer.jsp"></jsp:include> 
    </body>
</html>
