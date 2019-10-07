<%-- 
    Document   : Faculty_internal_entery
    Created on : 4 Oct, 2019, 12:45:04 PM
    Author     : rutu
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
        <div class="form-style">  
        <h2 align="center">Select Type For Internal Marks</h2>
        <form action="#" method="GET">
            <%
                out.print(""+session.getAttribute("admin_name"));
                Class.forName(Connect.DRIVER);
                Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                Statement stmt;
                ResultSet rs;
                String course_name=null;
                String course_sql = "SELECT `course_name` FROM `Course` WHERE course_code="+session.getAttribute("faculty_course_code");
                
                
            %>
            <table width="400" align="center" >
               <tr>
                    <td><label>Subject Type:</label><span class="required">*</span></td>
                    
                    <td><input type="radio" name="subject_type" value="theory" checked="">THEORY<br>
                        <input type="radio" name="subject_type" value="practical">PRACTICAL<br>
                        <input type="radio" name="subject_type" value="other">MINI, MAJOR PROJECT or SEMINAR
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Course Name</label>
                    </td>
                    
                        <% 
                            try
                            {
                                stmt = con.createStatement();
                                rs = stmt.executeQuery(course_sql);
                                %>
                        <% 
                            while(rs.next())
                            {
                                course_name =rs.getString(1); 
                            %>
                            <td><label><%=course_name%></label></td>
                            <% 
                            }
                            rs.close();
                            stmt.close();
                            %>
                            
                        </tr>
                        <%

                            }
                            catch(Exception e)
                            {
                                System.out.print(e);
                            }
                        %>
                    <p/>
          
                        <tr>
                            <td><a href="Faculty_home.jsp" class="btn">Back</a></td>
                            <td><button type="submit" class="btn">Submit</button></td>
                            
                        </tr>
            </table>
                    <input type='hidden' name='course_name' value='<%=course_name%>'>
        </form>
        </div>
    </body>
    
</html>
