<%-- 
    Document   : Faculty_internal_entery_select
    Created on : 7 Oct, 2019, 4:29:03 PM
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
        <h2 align="center">Internal Marks</h2>
        <form method="GET" action="Faculty_internal_entery_select_assessment.jsp">
            
            
            <table width="400" align="center" >
           
                <tr>
            
            <%
                out.print(""+session.getAttribute("admin_name"));
                Class.forName(Connect.DRIVER);
                Connection con1 = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                Statement stmt,stmt1;
                ResultSet rs,rs1;
                String subject_name=null, subject_code=null;
                
                String subject_type = request.getParameter("subject_type");
                int faculty_id = (int)session.getAttribute("faculty_id");
                int course_code = (int)session.getAttribute("faculty_course_code");
                String course_name = request.getParameter("course_name");
                
                
                
                String  theory_sql="SELECT `TheorySubject`.`theory_sub_code`, `TheorySubject`.`theory_sub_name`"
                        + " FROM `FacultySubject`, `TheorySubject`"
                        + "WHERE `FacultySubject`.`subject_code`= `TheorySubject`.`theory_sub_code`and `FacultySubject`.`faculty_id`="+faculty_id;
                
                String practical_sql="SELECT `PracticalSubject`.`practical_sub_code`, `PracticalSubject`.`practical_sub_name` FROM `FacultySubject`, `PracticalSubject` WHERE "
                        + "`FacultySubject`.`subject_code`= `PracticalSubject`.`practical_sub_code` and `FacultySubject`.`faculty_id`="+faculty_id;
                
                String other_sql = "SELECT `OtherSubject`.`other_sub_code`, `OtherSubject`.`other_sub_name` FROM `FacultySubject`, `OtherSubject` WHERE"
                        + " `FacultySubject`.`subject_code`= `OtherSubject`.`other_sub_code` and `FacultySubject`.`faculty_id`="+faculty_id;
            try
            {
                
                stmt1 = null;
                stmt = con1.createStatement();
                stmt1 = con1.createStatement();
                rs= stmt.executeQuery("SELECT * FROM `Class`");
                rs1= null;
                if(subject_type.equals("theory"))
                    {
                        rs1= stmt1.executeQuery(theory_sql);
                    }
                    else if(subject_type.equals("practical"))
                    {
                        rs1= stmt1.executeQuery(practical_sql);
                    }
                    else
                    {
                        rs1= stmt1.executeQuery(other_sql);
                    }  
                                    
            %>
            
            <td><label>Year: </label></td>
            <td><select name="year" >
            <% 
            
            while(rs.next())
            {
            %>
            <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
           
            <% 
            }
            rs.close();
            stmt.close();
            
   
            %>
            </select>
            </td>
            
            </tr>
                  <tr>
                            <td>Course Name:</td>
                             
                            <td><label><%=course_name%></label></td>
                            
                        </tr>
                        
                        <tr>
                            <td ><label>Faculty : </label></td>
                            <td><%=session.getAttribute("admin_name") %></td>
                            </tr>
                            <tr>
                                <td><label>Subject Type: </label></td>
                                <td><%=subject_type%></td>
                            </tr>

                            <tr>
                                <td><label>Subject: </label></td>
                                <td><select name="subject_code" >
                            <% 

                            while(rs1.next())
                            {
                            %>
                            <option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%></option>

                            <% 
                            }
                            rs1.close();
                            stmt1.close();

                            }
                            catch(Exception e)
                            {
                                System.out.print(e);
                            }

                            %>

                            </select>
                            </td>
            
                            </tr>
                            <tr>
                                <td><label>Shift: </label></td>
                                <td><select name="shift">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                    </select></td>
                            </tr>
                        <tr>
                            <td width="125"><a href="Faculty_internal_entery.jsp" class="btn">Back</a></td>
                            <td width="125"><button type="submit" class="btn">Submit</button></td>
                        </tr>
                        
            </table>
                       <input type="hidden" name="course_code" value="<%=course_code%>">
                       <input type="hidden" name="subject_type" value="<%=subject_type%>">
                       <input type="hidden" name="course_name" value="<%=course_name%>">
                       <input type="hidden" name="faculty_id" value="<%=faculty_id%>">
                       
        </form>
        </div>
    <div class="footer">
    <%@include file="parts/footer.jsp" %>
    </div>
    
    </body>
    
</html>
