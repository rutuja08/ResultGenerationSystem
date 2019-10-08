<%-- 
    Document   : Faculty_internal_marks_entery_specific
    Created on : 8 Oct, 2019, 4:52:04 PM
    Author     : rutu
--%>

<jsp:include page="header.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/valid.css" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add faculty subject</title>
        
    </head>
    <body  class="body">
        <div class="form-style">  
        <h2 align="center">Enter Internal Marks</h2>
        <form method="GET" action="Faculty_internal_marks_entery_specific_single_stud.jsp">
            <%
                
                out.print(""+session.getAttribute("admin_name"));
                Class.forName(Connect.DRIVER);
                Connection con1 = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                Statement stmt=null, stmt1=null;
                ResultSet rs=null, rs1= null;
                
                long prn = Long.parseLong(request.getParameter("prn"));
                String subject_type = request.getParameter("subject_type");
                int faculty_id = Integer.parseInt(request.getParameter("faculty_id"));
                String faculty_name = (String)session.getAttribute("admin_name");
                int course_code = Integer.parseInt(request.getParameter("course_code"));
                String course_name = request.getParameter("course_name");
                String subject_name = request.getParameter("subject_name");
                String subject_code = request.getParameter("subject_code");
                String present_year = request.getParameter("present_year");
                int shift = Integer.parseInt(request.getParameter("shift"));
                String ass_no = request.getParameter("ass_no");
                String ass_name= request.getParameter("ass_name");
                int ass_max_mks=Integer.parseInt(request.getParameter("ass_max_mks"));
                String stud_name=null;
                String student_sql="SELECT `first_name`, `middle_name`, `last_name` FROM"
                        + " `Student` WHERE `prn`="+prn;
                
                
                %>
            <table width="400" align="center" >
                <tr>
                    <td>Course Name: </td>
                    <td><%=course_name%></td>
                </tr>
                <tr>
                    <td><label>Year: </label></td>
                    <td><%=present_year%></td>
                </tr>
                <tr>
                    <td><label>Shift: </label></td>
                    <td><%=shift%></td>
                </tr>
                <tr>
                    <td><label>Faculty: </label></td>
                    <td><%=faculty_name%></td>
                </tr>
                <tr>
                    <td><label>Subject: </label></td>
                    <td><%=subject_name%></td>
                </tr>
                <tr>
                    <td><label>Assessment Tool: </label></td>
                    <td><%=ass_name%></td>
                    
                </tr>
                    
                <tr>
                    <td><label>Student: </label></td>
                    <td>
                    <% 
                        try
                        {
                            
                            stmt = con1.createStatement();
                            rs = stmt.executeQuery(student_sql);
                            while(rs.next())
                            {
                                stud_name = rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3);
                            %>
                        <%=stud_name%>
                            <% 
                            }
                            rs1.close();
                            stmt1.close();
                            %>
                            </td>
                            <%

                        }catch(Exception e)
                        {
                            System.out.print(e);
                        }
                    %>
                </tr>
                <tr>
                    <td><label>No Of Attempt: </label></td>
                    <td><input type="text" name="attempt_no" value="1"></td>
                </tr>
                <tr><td><label>Enter Marks: </label></td>
                    <td><label>Maximim Marks:<%=ass_max_mks%></label><input type="text" name="marks"></td>
                </tr>
                
                <tr>
                            <td width="125"><a href="Faculty_internal_entery.jsp" class="btn">Back</a></td>
                            <td width="125"><button type="submit" class="btn">Submit</button></td>
                        </tr>
            </table>
                    <input type="hidden" name="stud_name" value="<%=stud_name%>">
                    <input type="hidden" name="prn" value="<%=prn%>">
                    <input type="hidden" name="ass_no" value="<%=ass_no%>">
                    <input type="hidden" name="ass_name" value="<%=ass_name%>">
                    <input type="hidden" name="ass_max_mks" value="<%=ass_max_mks%>">
                    <input type="hidden" name="course_code" value="<%=course_code%>">
                    <input type="hidden" name="present_year" value="<%=present_year%>">
                    <input type="hidden" name="subject_type" value="<%=subject_type%>">
                    <input type="hidden" name="course_name" value="<%=course_name%>">
                    <input type="hidden" name="faculty_id" value="<%=faculty_id%>">
                    <input type="hidden" name="subject_name" value="<%=subject_name%>">
                    <input type="hidden" name="subject_code" value="<%=subject_code%>">
                    <input type="hidden" name="shift" value="<%=shift%>">
                    
                       
        </form>
        </div>
                    <div class="footer">
    <%@include file="parts/footer.jsp" %>
    </div>
    </body>
</html>
