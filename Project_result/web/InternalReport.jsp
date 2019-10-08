<%-- 
    Document   : InternalReport
    Created on : 8 Oct, 2019, 3:34:53 AM
    Author     : Mukta
    This is the first page of creating internal reports.
    Here subject type(theory/practica/other), class(fy, sy, ty etc.), academic year is selected
    This selected data is then passed to InternalReport1.jsp
--%>
<jsp:include page="header.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="form-style" align="center">
        <h2><%out.print("Welcome, "+session.getAttribute("admin_name"));%></h2>
        <form action="InternalReport1.jsp" method="post">
            <table width="400">
                <tr>
                    <td width="125">ThreoryPractical:<span class="required">*</span></td>
                    <td width="180"><input type="radio" name="theory_practical"  value="threory_practica">Threory
                        <input type="radio" name="theory_practical"  value="practical_subject">Practical<br/>
                        <input type="radio" name="threory_practical"  value="other_subject">Other
                    </td>
                </tr>
                <tr>
                    <td width="125">Class:<span class="required">*</span></td>
                    <td width="180"><div class="input-group">
                            <select name="class_year" required="">
                            <option value="">--Class--</option>
                        <%
                        try{
                            Class.forName(Connect.DRIVER);
                            Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                            String sql = "select year from class";
                            PreparedStatement ps = con.prepareStatement(sql);
                            ResultSet rs = ps.executeQuery();
                            while(rs.next())
                            {
                            %>
                            <option value="<%=rs.getString(1) %>"><%=rs.getString(1) %></option>
                            <%
                            }
                            rs.close();
                            con.close();
                        }
                        catch(Exception e){
                            
                        }
                        %>
                        </select>
                    </div></td>
                </tr>
                <tr>
                    <td width="125">Academic Year:<span class="required">*</span></td>
                    <td width="180"><div class="input-group">
                            <select name="year" required="">
                            <option value="">--Academic Year--</option>
                        <%
                        try{
                            Class.forName(Connect.DRIVER);
                            Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                            String sql = "select academic_year from academic_year";
                            PreparedStatement ps = con.prepareStatement(sql);
                            ResultSet rs = ps.executeQuery();
                            while(rs.next())
                            {
                            %>
                            <option value="<%=rs.getString(1) %>"><%=rs.getString(1) %></option>
                            <%
                            }
                            rs.close();
                            con.close();
                        }
                        catch(Exception e){
                            
                        }
                        %>
                        </select>
                    </div></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <a href="Reports.jsp" class="btn">Back</a>
                        <input type="submit" class="btn" value="Submit">
                        <input type="reset" class="btn" value="Reset">
                    </td>
                </tr>
            </table>
        </form>
        </div>
    </body>
</html>
