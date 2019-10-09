<%-- 
    Document   : stud_internal_report
    Created on : 3 Oct, 2019, 8:49:06 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Internal Reports</title>
<jsp:include page="parts/meta.jsp"></jsp:include>

    </head>
    <body class="body">
        <div class="form-style">  
            <h2 align="center">Internal Report</h2>
        <%
            int course_code = (int)session.getAttribute("course_code");
            %>
        <form>
            <table width="400" align="center">
                <%
                                          
                    try
                    {
                    Class.forName(Connect.DRIVER);
                    Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                    Statement stmt = con.createStatement();
                    ResultSet rs= stmt.executeQuery("SELECT  `course_name` FROM `Course` WHERE `course_code`="+course_code);

                    %>
                    <tr>
                        <td><label>Course: </label></td> 
                        <% 
                        while(rs.next())
                        {
                        %>
                        <td><label><%=rs.getString(1)%></label></td>
                        <% 
                        }
                        %>
                    </tr>

                    <%
                        }
                        catch(Exception e)
                        {
                            System.out.print(e);
                        }
                    %>

                <tr><td><label>Academic Year: </label></td>
                    <td><select name="academic_year" class="select">
                    <option value=FY/FE >FY/FE</option>
                    <option value=SY/SE >SY/SE</option>
                    <option value=TY/TE >TY/TE</option>
                    <option value=BE >BE</option>
                        </select></td>
	
                <tr>
                    <td><label>Term: </label></td>
                    <td><select name="shift" class="select">
                    <option value=1>1</option>
                    <option value=2>2</option>
                    </select></td>
                </tr>
                
	
                Select Assessment For: <input type="radio"  name="one"  value="one"  /> Single Subject
                			<div class="clear"></div>
				
                <input type="radio"  name="all"  value="all"  /> All Subject
                
	</div>
        </form>                 			
    </body>
</html>
