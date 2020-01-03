<%-- 
    Document   : Departments.jsp
    Created on : 16 Sep, 2019, 2:02:20 PM
    Author     : rutu
    This page gives functionality to perform operations on 'Course' table.
--%>
<jsp:include page="parts/firstheader.jsp" >
    <jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="Connection.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="parts/meta.jsp"></jsp:include>
            <title>Department</title>

            <link rel="stylesheet" href="css/valid.css">
            <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
                function hideURLbar(){ window.scrollTo(0,1); } 

                function goBack() {
                window.history.back();
                }
            </script>
        </head>
        <body>
            <div class="form-style" align="center" >
                <h2><%out.print("Welcome, " + session.getAttribute("admin_name"));%></h2>
            <div class="logout">
                <a href="Logout.jsp" class="logout">LOGOUT</a>
            </div>

            <form method="get">
                List Of Departments<br>
                <select  name="course" multiple id="dept_select" class="dept_select">
                    <%
                        try {

                            Class.forName(Connect.DRIVER);
                            Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                            Statement stmt = con.createStatement();
                            ResultSet rs = stmt.executeQuery("SELECT * FROM `Course`");
                            while (rs.next()) {
                    %>
                    <option id="course_name" value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option>
                    <%
                            }
                            rs.close();
                            con.close();
                        } catch (Exception e) {
                            System.out.print(e);
                        }

                    %>
                </select>

                <div>
                    <table width="1000" align="center">
                        <tr>
                            <td width="125"></td>
                            <td>
                                <button  formaction="Add_department.jsp" class="btn_menu btn_menu1" >ADD DEPARTMENT</button>
                            </td>
                            <td width="125"></td>
                            <td>
                                <button formaction="Edit_department.jsp" class="btn_menu btn_menu1">EDIT DEPARTMENT</button>
                            </td>
                            <td width="125"></td>
                            <td>
                                <button formaction="#" class="btn_menu btn_menu1">REMOVE DEPARTMENT</button>
                            </td>
                            <td width="125"></td>
                            <td height="5"></td>
                            <td width="125"></td>
                            <td></td>
                        </tr>
                    </table>

                </div>
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
