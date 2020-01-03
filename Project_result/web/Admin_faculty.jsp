<%-- 
    Document   : Admin_faculty
    Created on : 3 Oct, 2019, 11:06:24 PM
    Author     : rutu
--%>
<jsp:include page="parts/firstheader.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Connection.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/Style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Faculty</title>
    </head>
    <body class="body">
         <div class="form-style" align="center">  
        <h2><%out.print("Welcome, "+session.getAttribute("admin_name"));%></h2>
       
        <form>
            List Of Departments<br>
            <select  name="faculty" multiple id="faculty_id_select">
                <%
                    int admin_course_code = (Integer)session.getAttribute("faculty_or_admin_course_code");
                        try
                        {
                            
                            Class.forName(Connect.DRIVER);
                            Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                            Statement stmt = con.createStatement();
                            ResultSet rs= stmt.executeQuery("SELECT id,prefix,first_name,middle_name,last_name FROM `AdminFacultyUsers` where course_code ="+admin_course_code);
                            while(rs.next())
                            {
                            %>
                            <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%> <%=rs.getString(3)%> <%=rs.getString(4)%> <%=rs.getString(5)%></option>
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
        
            <table width="400" align="center">
                <tr>
                    <td width="125"></td>
                    <td>
                        <input type="submit" class="btn" formaction="AdminFacultyRegistrationForm.jsp" value="ADD FACULTY">
                    </td>
                </tr>
                <tr>
                    <td width="125"></td>
                    <td>
                        <input type="submit" class="btn" formaction="Admin_edit_existing_faculty.jsp" value="EDIT FACULTY">
                    </td>
                </tr>
                <tr>
                    <td width="125"></td>
                    <td>
                        <input type="submit" class="btn" formaction="Admin_add_faculty_subject.jsp" value="ADD FACULTY SUBJECT">
                    </td>
                </tr>
                <tr>
                    <td width="125"></td>
                    <td height="5"></td>
                </tr>
                <tr>
                    <td width="125"></td>
                    <td><a href="Admin_home.jsp" class="btn">Back</a></td>
                </tr>
            </table>
        </form>
        </div>
    <div class="footer">
    <%@include file="parts/footer.jsp" %>
    </div>
    </body>
</html>
