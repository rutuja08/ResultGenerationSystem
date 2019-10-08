<%-- 
    Document   : Admin_show_faculty_subject
    Created on : 6 Oct, 2019, 4:55:56 PM
    Author     : rutu
    This shows the pairs of faculty and subject from 'FacultySubject' table.
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
        <title>Faculty subject pair</title>
        
    </head>
    <body>
        <div class="form-style" align="center">  
        <h2 align="center">Faculty Subject Pair</h2>
        <form>
            <table width="400" align="center" border="1">
           
               
                <tr>
                <th>
                    <label>Faculty Name</label>
                </th>
                <th>
                    <label>Subject Name</label>
                </th>
                </tr>
            <%
                Class.forName(Connect.DRIVER);
                Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                Statement stmt,stmt1;
                ResultSet rs,rs1;
                String name;
                String theory_sql = null, practical_sql = null, other_sql = null;
                int course_code = Integer.parseInt(request.getParameter("course_code"));
                
                String academic_year = request.getParameter("academic_year");
                String subject_type = (String)session.getAttribute("subject_type");
                
                //out.print(course_code);
                //out.print(academic_year);
                //out.print(subject_type);
                stmt = con.createStatement();
            try
            {    
                if(subject_type.equals("theory"))
                {
                    theory_sql = "SELECT DISTINCT `AdminFacultyUsers`.`prefix`,`AdminFacultyUsers`."
                        + "`first_name`,`AdminFacultyUsers`.`middle_name`, `AdminFacultyUsers`.`last_name` "
                        + ", `TheorySubject`.`theory_sub_name`FROM `AdminFacultyUsers`, `FacultySubject`,"
                        + "`TheorySubject` WHERE `AdminFacultyUsers`.`course_code`="+course_code+" and "
                        + "`FacultySubject`.`subject_code` = `TheorySubject`.`theory_sub_code` "
                        + "and `FacultySubject`.`academic_year`= '"+academic_year+"'";
                    
                    
                     rs= stmt.executeQuery(theory_sql);
                     while(rs.next())
                        {
                            name = ""+rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4);
                            %>
                            <tr>
                                <td><%=name%></td>
                                <td><%=rs.getString(5)%></td>
                            </tr>
                            <%

                        }
            
                }
                else if(subject_type.equals("practical"))
                {
                    practical_sql = "SELECT DISTINCT `AdminFacultyUsers`.`prefix`,`AdminFacultyUsers`.`first_name`"
                            + ",`AdminFacultyUsers`.`middle_name`, `AdminFacultyUsers`.`last_name` ,"
                            + " `PracticalSubject`.`practical_sub_name` FROM `AdminFacultyUsers`, `FacultySubject`"
                            + ",`PracticalSubject` WHERE `AdminFacultyUsers`.`course_code`="+course_code+" and "
                            + "`FacultySubject`.`subject_code` = `PracticalSubject`.`practical_sub_code` "
                            + "and `FacultySubject`.`academic_year`= '"+academic_year+"'";
                    rs= stmt.executeQuery(practical_sql);
                    while(rs.next())
                    {
                        name = ""+rs.getString(1)+rs.getString(2)+rs.getString(3)+rs.getString(4);
                        %>
                        <tr>
                            <td><%=name%>+</td>
                            <td><%=rs.getString(5)%>+</td>
                        </tr>
                        <%
                    }
                }
                else
                {
                    other_sql = "SELECT DISTINCT `AdminFacultyUsers`.`prefix`,`AdminFacultyUsers`.`first_name`"
                            + ",`AdminFacultyUsers`.`middle_name`, `AdminFacultyUsers`.`last_name` ,"
                            + " `OtherSubject`.`other_sub_name` FROM `AdminFacultyUsers`, `FacultySubject`,"
                            + " `OtherSubject`WHERE `AdminFacultyUsers`.`course_code`="+course_code+" and "
                            + "`FacultySubject`.`subject_code` =`OtherSubject`.`other_sub_code`and"
                            + " `FacultySubject`.`academic_year`= '"+academic_year+"'";
                    rs= stmt.executeQuery(other_sql);
                    while(rs.next())
                    {
                        name = ""+rs.getString(1)+rs.getString(2)+rs.getString(3)+rs.getString(4);
                        %>
                        <tr>
                            <td><%=name%>+</td>
                            <td><%=rs.getString(5)%>+</td>
                        </tr>
                        <%
                    }
                }
                
            
                
             
            rs.close();
            stmt.close();
   
            }
            catch(Exception e)
            {
                System.out.print(e);
            }
            %>
                        
            </table><p/>
            <a href="Admin_add_faculty_subject.jsp" class="btn">Back</a>
        </form>
        </div>
    </body>
    
</html>
