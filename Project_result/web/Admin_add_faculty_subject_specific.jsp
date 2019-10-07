<%-- 
    Document   : Admin_add_faculty_subject_specific
    Created on : 3 Oct, 2019, 11:29:03 PM
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
        <h2 align="center">Add Faculty Subject</h2>
        <form method="GET" action="Admin_add_faculty_subject_specific_add.jsp">
            <table width="400" align="center" >
           
                <tr>
            
            <%
                Class.forName(Connect.DRIVER);
                Connection con1 = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                Statement stmt,stmt1;
                ResultSet rs,rs1;
                String name;
                
                String subject_type = request.getParameter("subject_type");
                Integer course_code = Integer.parseInt(request.getParameter("course_code"));
                session.setAttribute("course_code", course_code);
                session.setAttribute("subject_type", subject_type);
                
                
                String theory_sql=null, practical_sql=null, other_sql=null, course_sql=null;
                
            try
            {
                
                stmt = con1.createStatement();
                rs= stmt.executeQuery("SELECT * FROM `Academic_year`");
                                    
            %>
            <td><label>Academic Year: </label></td>
            <td><select name="academic_year" >
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
            <%
            }
            catch(Exception e)
            {
                System.out.print(e);
            }
            %>
            </tr>
            
                <%
                session.setAttribute("subject_type_faculty_subject", subject_type);
                //out.println(request.getParameter("subject_type"));
                
                
                
                course_sql = "SELECT `course_name` FROM `Course` WHERE course_code="+course_code;
                
                if(subject_type.equals("theory"))
                {
                    theory_sql = "SELECT `theory_sub_code`, `theory_sub_name` FROM `TheorySubject` WHERE course_code = "+course_code;
                }
                else if(subject_type.equals("practical"))
                {
                    practical_sql = "SELECT `practical_sub_code`, `practical_sub_name` FROM `PracticalSubject` WHERE course_code ="+course_code;
                }
                else
                {
                    other_sql = "SELECT `other_sub_code`, `other_sub_name` FROM `OtherSubject` where course_code ="+course_code;
                }
            
                try
                {
                    
                    stmt= con1.createStatement();
                    stmt1= con1.createStatement();
                    
                    
                    rs1 = stmt1.executeQuery(course_sql);
                    if(subject_type.equals("theory"))
                    {
                        rs= stmt.executeQuery(theory_sql);
                    }
                    else if(subject_type.equals("practical"))
                    {
                        rs= stmt.executeQuery(practical_sql);
                    }
                    else
                    {
                        rs= stmt.executeQuery(other_sql);
                    }
                        

                        %>
                        
                        <tr>
                            <td>Course Name:</td>
                            <% 
                            while(rs1.next())
                            {
                            %>
                            <td><label><%=rs1.getString(1)%></label></td>
                            <% 
                            }
                            rs1.close();
                            stmt1.close();
                            %>
                            
                        </tr>
                        
                        
                        
                        <tr>
                            
                            <td><label>Subject: </label></td>
                            <td><select name="subject_code" >
                            <% 
                            while(rs.next())
                            {
                            %>
                            <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
                            <% 
                            }
                            rs.close();
                            stmt.close();
                            %>
                                </select>
                            </td>
                        
                        <%
                            }
                            catch(Exception e)
                            {
                                System.out.print(e);
                            }
                        %>
                        </tr>
                        
                        <tr>
                            <td ><label>Faculty : </label></td>
                        <%
                            try
                            {
                                
                                stmt = con1.createStatement();
                                
                                rs= stmt.executeQuery("SELECT `ID`, `prefix`, `first_name`, `middle_name`, `last_name` FROM `AdminFacultyUsers` WHERE course_code = "+course_code);

                            %>
                            
                            <td ><select name="faculty_id" >
                            <% 
                            while(rs.next())
                            {
                                name = rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5);
                            %>
                            <option value="<%=rs.getString(1)%>"><%=name%></option>
                            <% 
                            }
                            rs.close();
                            stmt.close();
                            %>
                            </select>
                            </td>
                            <%
                            }
                            catch(Exception e)
                            {
                                System.out.print(e);
                            }
                            %>
                            </tr>


                        
                        
                        <tr>
                            <td width="125"><a href="Admin_add_faculty_subject.jsp" class="btn">Back</a></td>
                            <td width="125"><button type="submit" class="btn">Add Pair</button></td>
                            <td width="125"><button type="submit" class="btn" formaction="Admin_show_faculty_subject.jsp">Show Pairs</button></td>
                        </tr>
                        
            </table>
        </form>
        </div>
    </body>
    
</html>
