<%@page import="java.util.Calendar"%>
<!--
	Author: Rutuja Jagtap
-->
<jsp:include page="parts/firstheader.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/valid.css" type="text/css">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); }
</script>

<%@include file="Connection.jsp" %>
</head>

<body>
    <div class="form-style" align="center">
        <form action="Student_register.jsp"  method="get">
            <h2>Sign Up</h2>
            <table width="400">
                <tr>
                    <td width="125">PRN:<span class="required">*</span></td>
                    <td width="180"><div class="input-group"><input type="text" name="prn" placeholder="Prn" required="required" /></div></td>
                </tr>
                <tr>
                    <td width="125">First Name:<span class="required">*</span></td>
                    <td width="180"><div class="input-group"><input type="text" name="first_name" placeholder="Middle Name" required="required" /></div></td>
                </tr>
		<tr>
                    <td width="125">Middle Name:<span class="required">*</span></td>
                    <td width="180"><div class="input-group"><input type="text" name="middle_name" placeholder="Middle Name" required="required" /></div></td>
                </tr>
		<tr>
                    <td width="125">Last Name:<span class="required">*</span></td>
                    <td width="180"><div class="input-group"><input type="text" name="last_name" placeholder="Last Name" required="required" /></div></td>
                </tr>
		<tr>
                    <td width="125">Password:<span class="required">*</span></td>
                    <td width="180"><div class="input-group"><input type="password" name="password" placeholder="Password" required="required"/></div></td>
		</tr>
                <tr>
                    <td width="125">Confirm Password:<span class="required">*</span></td>
                    <td width="180"><div class="input-group"><input type="password" name="reEnterPassword" placeholder="Confirm Password" required="required"/></div></td>      
		</tr>
                <tr>
                    <td width="125">Email Id:<span class="required">*</span></td>
                    <td width="180"><div class="input-group"><input type="email" name="email_id" id="email_id" placeholder="info@example.com" required="required"/></div></td>
		</tr>
                <tr>
                    <td width="125">Contact No:<span class="required">*</span></td>
                    <td width="180"><div class="input-group"><input type="text" name="contact" id="contact" placeholder="Contact No" required=""/></div></td>
		</tr>
                <tr>
                    <td width="125">Course:<span class="required">*</span></td>
                    <td width="180"><div class="input-group">
                        <select name="course_code" required="required">
                            <option value="">--Course--</option>
                        <%
                        try
                        {
                            
                            Class.forName(Connect.DRIVER);
                            Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                            Statement stmt = con.createStatement();
                            ResultSet rs= stmt.executeQuery("SELECT * FROM `Course`");
                            while(rs.next())
                            {
                            %>
                                <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>
                            <% 
                            }
                            rs.close();
                            con.close();
                        }
                        catch(Exception e)
                        {
                            System.out.print(e);
                        }
                        %>
                        </select></div>
                    </td>
                </tr>
                <tr>
                    <td width="125">Joining Year:<span class="required">*</span></td>
                    <td width="180"><div class="input-group">
                        <select name="joining_yr" required="required">
                            <option value="">--Joining Year--</option>
                        
                            <%
                            int current_sys_year = Calendar.getInstance().get(Calendar.YEAR);
                            for( int i = current_sys_year ; i > 1990 ; i-- )
                            {
                                %>
                                    <option value=<%=i %>><%=i %></option>
                                <%
                            }
                            %> 
                        </select></div>
                    </td>
		</tr>
                
                <tr>
                    <td width="125">Present Class:<span class="required">*</span></td>
                    <td width="180"><div class="input-group">
                        <select name="present_class" required="required">
                            <option value="">--Present Class--</option>
                        <%
                        try
                        {
                            
                            Class.forName(Connect.DRIVER);
                            Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                            Statement stmt = con.createStatement();
                            ResultSet rs= stmt.executeQuery("SELECT * FROM `Class`");
                            while(rs.next())
                            {
                            %>
                                <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
                            <% 
                            }
                            rs.close();
                            con.close();
                        }
                        catch(Exception e)
                        {
                            System.out.print(e);
                        }
                        %>
                        </select></div>
                    </td>
		</tr>
                <tr>
                    <td width="125">Shift:<span class="required">*</span></td>
                    <td width="180"><div class="input-group">
                        <select name="shift" required="required">
                            <option value="1">1</option>
                            <option value="2">2</option>
                        
                        </select></div>
                    </td>
		</tr>
                
                <tr>
                    <td width="125">Present Roll No:<span class="required">*</span></td>
                    <td width="180"><div class="input-group"><input type="text" name="present_roll_no" id="present_roll_no" placeholder="Present Roll No" required="required" /></div></td>
                        
		</tr>
		
                <tr>
                    <td width="125">Gender:<span class="required">*</span></td>
                    <td width="180"><input type="radio"  name="sex"  value="m"  /> MALE
                        <input type="radio"  name="sex"  value="f"  /> FEMALE<br>
                                    <input type="radio"  name="sex"  value="t"  /> TRANSGENDER</td>
		</tr>
		<tr>
                    <td width="125">Security Question:<span class="required">*</span></td>
                    <td width="180"><div class="input-group">
                        <select name="secquest_no" required="required">
                            <option value="">--Security Question--</option>
                        <%
                        try
                        {
                            Class.forName(Connect.DRIVER);
                            Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                            Statement stmt = con.createStatement();
                            ResultSet rs= stmt.executeQuery("SELECT * FROM `SecurityQuest`");
                            while(rs.next())
                            {
                            %>
                                <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>
                            <% 
                            }
                        }
                        catch(Exception e)
                        {
                            System.out.print(e);
                        }
                        %>
                        </select></div>
                    </td>
                </tr>
                
                <tr>
                    <td width="125">Answer:<span class="required">*</span></td>
                    <td width="180"><div class="input-group"><input type="text" name="answer" placeholder="Answer" required="required" /></div></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <a href="Admin_login.jsp" class="btn">Back</a>
                        <input type="submit" value="Submit" onclick="validate()" class="btn"/>
                        <input type="reset" value="Reset" class="btn">
                    </td>
                </tr>
            </table>
	</form>     
    </div>
<%@include file="parts/footer.jsp" %>
</body>
</html>