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
        <form method="GET" action="#">
            
            
            <table width="400" align="center" >
           
                <tr>
            
            <%
                out.print(""+session.getAttribute("admin_name"));
                Class.forName(Connect.DRIVER);
                Connection con1 = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                Statement stmt,stmt1;
                ResultSet rs,rs1;
                String name;
                
                String subject_type = request.getParameter("subject_type");
                int faculty_id = (int)session.getAttribute("faculty_id");
                int course_code = (int)session.getAttribute("faculty_course_code");
                String course_name = request.getParameter("course_name");
                session.setAttribute("subject_type", subject_type);
                
                
                String  course_sql=null;
                
            try
            {
                
                stmt = con1.createStatement();
                rs= stmt.executeQuery("SELECT * FROM `Class`");
                                    
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
             
                try
                {
                    
                    stmt1= con1.createStatement();
                    
                    
                    rs1 = stmt1.executeQuery(course_sql);
                        

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
                        
                        <%
                            }
                            catch(Exception e)
                            {
                                System.out.print(e);
                            }
                        %>
                        
                        <tr>
                            <td ><label>Faculty : </label></td>
                            <td><%=session.getAttribute("admin_name") %></td>
                            </tr>

                        <tr>
                            <td width="125"><a href="Admin_add_faculty_subject.jsp" class="btn">Back</a></td>
                            <td width="125"><button type="submit" class="btn">Submit</button></td>
                        </tr>
                        
            </table>
                       <input type="hidden" name="course_code" value="<%=course_code%>">
        </form>
        </div>
    </body>
    
</html>
