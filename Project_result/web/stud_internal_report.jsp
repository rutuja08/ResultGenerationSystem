<%-- 
    Document   : stud_internal_report
    Created on : 3 Oct, 2019, 8:49:06 PM
    Author     : rutu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Internal Reports</title>
<jsp:include page="parts/meta.jsp"></jsp:include>
<%@include file="Connection.jsp" %>
    </head>
    <body>
        <h1>Internal Assessment's Report</h1>
        <!--select year fy/sy/ty
            select sem 1/2
            radio 
                -single subject
                   --select subject particularly
                -all subjects
                
            -->
        <form>
        <div >	
		<span><i  aria-hidden="true"></i></span>
                Academic Year: <select name="academic_year" class="select">
                    <option value=f >FY/FE</option>
                    <option value=s >SY/SE</option>
                    <option value=t >TY/TE</option>
                    <option value=b >BE</option>
                    </select>
	</div>    
        <div >	
		<span><i  aria-hidden="true"></i></span>
                Term: <select name="shift" class="select">
                    <option value=1>1</option>
                    <option value=2>2</option>
                    </select>
	</div>
	<div >	
		<span><i  aria-hidden="true"></i></span>
                Select Assessment For: <input type="radio"  name="one"  value="one"  /> Single Subject
                			<%
                                            
                                          
                                        try
                                        {
                                        Class.forName(Connect.DRIVER);
                                        Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                                        Statement stmt = con.createStatement();
                                        ResultSet rs= stmt.executeQuery("SELECT * FROM `Course`");
                                        
                                        %>
                                        Course: <select name="course_code" class="select">
                                            <% 
                                            while(rs.next())
                                            {
                                            %>
                                            <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>
                                            <% 
                                            }
                                            %>
                                        </select>
                                        <%
                                            }
                                            catch(Exception e)
                                            {
                                                System.out.print(e);
                                            }
                                        %>
					<div class="clear"></div>
				
                <input type="radio"  name="all"  value="all"  /> All Subject
                
	</div>
        </form>                 			
    </body>
</html>
