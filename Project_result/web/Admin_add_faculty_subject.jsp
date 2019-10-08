<%-- 
    Document   : Admin_add_faculty_subject
    Created on : 3 Oct, 2019, 11:14:18 PM
    Author     : rutu
    Admin can select subject type(theory, practical etc.) and course(MCA, MBA, etc.) from here and pass these values to 
    'Admin_add_faculty_subject_specific.jsp'
--%>
<jsp:include page="header.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/valid.css" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select type for faculty subject</title>
        <%@include file="Connection.jsp" %>
    </head>
    <body  class="body">
        <div class="form-style" align="center">  
        <h2>Add Faculty Subject</h2>
        <form action="Admin_add_faculty_subject_specific.jsp" method="GET">
            
            <table width="400">
                <tr>
                    <td width="125">Subject Type:<span class="required">*</span></td>
                    
                    <td width="180"><input type="radio" name="subject_type" value="theory" >THEORY
                        <input type="radio" name="subject_type" value="practical">PRACTICAL<br>
                        <input type="radio" name="subject_type" value="other">MINI, MAJOR PROJECT or SEMINAR
                    </td>
                </tr>
            <p/>
            <tr>
            <td>Course:<span class="required">*</span></td>
            <td width="180"><div class="input-group">
                    <select name="course_code" class="select" required="">
                    <option value="">--Course--</option>
            <%
            try
            {
            Class.forName(Connect.DRIVER);
            Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
            Statement stmt = con.createStatement();
            ResultSet rs= stmt.executeQuery("SELECT * FROM `Course`");
            %>
            
                <% 
                while(rs.next())
                {
                %>
                <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>
                <% 
                }rs.close();
                con.close();
                
                }
                catch(Exception e)
                {
                    System.out.print(e);
                }
            %>
            </select></div></td>
            </tr>
            <p/>
            <p/>
            <tr>
                <td></td>
                <td><a href="Admin_faculty.jsp" class="btn">Back</a>
                    <button type="submit" class="btn">Submit</button>
                    <button type="reset" class="btn">Reset</button>
                </td>
            </tr>
            </table>
        </form>
        </div>
    </body>
    <div class="footer">
    <%@include file="parts/footer.jsp" %>
    </div>
</html>
