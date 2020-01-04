<%-- 
    Document   : Remove_department
    Created on : 3 Jan, 2020, 10:30:54 PM
    Author     : rutu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="bean.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="form-style" align="center">
            <%
                if (session.getAttribute("admin_name") != null) {

                    Connection con_r;
                    PreparedStatement ps;
                    String new_dept = (String) request.getParameter("new_dept");
                    String old_dept = (String) request.getParameter("course");

                    con_r = ConnectionProvider.getCon();
                    String sql = "UPDATE `Course` SET `course_name`=\""+new_dept+"\" WHERE `course_name`=\""+old_dept+"\"";
                    ps = con_r.prepareStatement(sql);

                    try {
                        int row = ps.executeUpdate();
                        if (row > 0) {
            %>
            <script type="text/javascript">
                alert("Department Name Updated Successfully");
                setTimeout("location.href='Departments.jsp';", 1);
            </script>

            <%
                    }
                } catch (Exception e) {
                    out.println(e);
                }
            } else {
            %>
            <script type="text/javascript">
                alert("Cannot Delete Department as wrong login");
                setTimeout("location.href='Welcome_page.jsp';", 1);
            </script>
            <%
                }
            %>
        </div>
        <%@include file="parts/footer.jsp" %>

    </body>
</html>
