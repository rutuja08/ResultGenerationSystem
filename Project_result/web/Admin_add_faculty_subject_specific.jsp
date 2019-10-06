<%-- 
    Document   : Admin_add_faculty_subject_specific
    Created on : 3 Oct, 2019, 11:29:03 PM
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
        <title>Add faculty subject</title>
        <%@include file="Connection.jsp" %>
    </head>
    <body  class="body">
        <div class="form-style">  
        <h2 align="center">Add Faculty Subject</h2>
        <form>
            <table width="400" align="center" >
            <%
                String subject_type = request.getParameter("subject_type");
                Integer course_code = Integer.parseInt(request.getParameter("course_code"));
                String academic_year = request.getParameter("academic_year");
                session.setAttribute("subject_type_faculty_subject", subject_type);
                //out.println(request.getParameter("subject_type"));
                String theory_sql=null, practical_sql=null, other_sql=null;
                
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
                    Class.forName(Connect.DRIVER);
                    Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                    Statement stmt = con.createStatement();
                    ResultSet rs;
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
                            
                            <td width="125"><label>Subject: </label></td>
                            <td width="125"><select name="subject_code" class="select">
                            <% 
                            while(rs.next())
                            {
                            %>
                            <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>
                            <% 
                            }
                            %>
                                </select></td>
                        <%
                            }
                            catch(Exception e)
                            {
                                System.out.print(e);
                            }
                        %>
                        </tr>
                        <p/>
                        <tr>
                            <td width="125"><a href="#" class="btn">Back</a></td>
                            <td width="125"><button type="submit" class="btn">Submit</button></td>
                        </tr>
                        
            </table>
        </form>
    </body>
</html>
