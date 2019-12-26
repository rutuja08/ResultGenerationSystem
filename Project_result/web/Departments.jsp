<%-- 
    Document   : Departments.jsp
    Created on : 16 Sep, 2019, 2:02:20 PM
    Author     : rutu
    This page gives functionality to perform operations on 'Course' table.
--%>
<jsp:include page="header.jsp" >
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
    </head>
    <body>
<div class="form-style" align="center" >
<h2><%out.print("Welcome, "+session.getAttribute("admin_name"));%></h2>
    <form method="post">
        List Of Departments<br>
            <select  name="course" multiple id="dept_select">
                <%
                        try
                        {
                            
                            Class.forName(Connect.DRIVER);
                            Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                            Statement stmt = con.createStatement();
                            ResultSet rs= stmt.executeQuery("SELECT * FROM `Course`");
                            while(rs.next())
                            {
                            %>
                            <option value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option>
                            <% 
                            }
                            rs.close();
                            con.close();
                        }
                        catch(Exception e)
                        {
                            System.out.print(e);
                        }
                        %>
            </select>
        
                        <div>
        <table width="400" align="center">
            <tr>
                <td width="125"></td>
                <td>
                    <button  formaction="Add_department.jsp" class="btn" >ADD DEPARTMENT</button>
                </td>
                <td width="125"></td>
                <td>
                    <button formaction="Edit_department.jsp" class="btn">EDIT DEPARTMENT</button>
                </td>
                <td width="125"></td>
                <td>
                    <button formaction="#" class="btn">REMOVE DEPARTMENT</button>
                </td>
                <td width="125"></td>
                <td height="5"></td>
                <td width="125"></td>
                <td><a href="Admin_home.jsp" class="btn">Back</a></td>
            </tr>
        </table>
    </form>
</div>
<%@include file="parts/footer.jsp" %>
    </body>
</html>
