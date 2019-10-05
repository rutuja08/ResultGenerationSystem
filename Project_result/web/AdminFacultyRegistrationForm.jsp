<%-- 
    Document   : AdminFacultyRegistrationForm
    Created on : 5 Oct, 2019, 4:27:07 PM
    Author     : rutu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); }
</script>

<%@include file="Connection.jsp" %>
</head>

<body>
<div>
	<img class="mcoelogo" src="images/mcoelogo.png" 
             alt="Modern College of Engineering" style="display: block; margin-left: auto;	
             margin-right: auto; padding: auto;" 
             height="10" width="10"/>
	<h1>Modern College of Engineering, Pune</h1>
	<h2>Student Registration Form</h2>
</div>
<div>
		<div >
			<div>
				<img src="images/profile.jpg" alt="image">
				<h2>Sign Up Here</h2>
			</div>	
			<form action="Student_register.jsp"  method="get">
                            <table>
                                
                                <tr>
                                    <td><label>First Name: </label></td>
                                    <td><input type="text" name="first_name" placeholder="First Name" required="required" /></td>
                                </tr>
				<tr>
                                    <td><label>Middle Name: </label></td>
                                    <td><input type="text" name="middle_name" placeholder="Middle Name" required="required" /></td>
                                </tr>
				
                                <tr>
                                    <td><label>Last Name: </label></td>
                                    <td><input type="text" name="last_name" placeholder="Last Name" required="required" /></td>
                                </tr>
				<tr>
                                    <td><label>Password: </label></td>
                                    <td><input type="password" name="password" placeholder="password" required="required"/></td>
				</tr>
                                <tr>
                                    <td><label>Re-enter Password: </label></td>
                                    <td><input type="password" name="reEnterPassword" placeholder="Re-Enter password" required="required"/></td>
                                          
				</tr>
                                <tr>
                                    <td><label>Email Id: </label></td>
                                    <td><input type="email" name="email_id" placeholder="info@example.com" required="required"/></td>
				</tr>
                                <tr>
                                    <td><label>Contact: </label></td>
                                    <td><input type="text" name="contact" placeholder="+001" required=""/></td>
				</tr>
                                <tr>
                                    <td><label>Course: </label></td>
                                	<%
                                            
                                          
                                        try
                                        {
                                        Class.forName(Connect.DRIVER);
                                        Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                                        Statement stmt = con.createStatement();
                                        ResultSet rs= stmt.executeQuery("SELECT * FROM `Course`");
                                        
                                        %>
                                        <td><select name="course_code" class="select">
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
				<tr>
                                    <td><label>Year Of Joining: </label></td>
                                    <td><input type="text" name="joining_yr" placeholder="Joining Year" required="required" /></td>
                                </tr>
                                <tr>
                                    <td><label>Division: </label></td>
                                    <td><input type="text" name="division" placeholder="Division" required="required" /></td>
                                </tr>
                                <tr>
                                    <td><label>Shift: </label></td>
                                    <td><select name="shift" class="select">
                                            <option value=1>1</option>
                                            <option value=2>2</option>
                                        </select></td>
                                </tr>
                                <tr>
                                    <td><label>First Name: </label></td>
                                        <input type="radio"  name="sex"  value="m"  /> MALE
                                        <input type="radio"  name="sex"  value="f"  /> FEMALE
                                         <input type="radio"  name="sex"  value="t"  /> TRANSGENDER
				</tr>
                                <tr>
                                    <td><label>First Name: </label></td>
                                        <%
                                        try
                                        {
                                        Class.forName(Connect.DRIVER);
                                        Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                                        Statement stmt = con.createStatement();
                                        ResultSet rs= stmt.executeQuery("SELECT * FROM `SecurityQuest`");
                                        
                                        %>
                                        Security Question :<select name="secquest_no" class="select">
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
                                </tr>
                                <tr>
                                    <td><label>First Name: </label></td>
                                	<span><i  aria-hidden="true"></i></span>
					<input type="text" name="answer" placeholder="Answer" required="required" /> 
				<tr>
                                    <td><label>First Name: </label></td>
                                	<input type="submit" name="button" value="sign up"/>
				</div>
                            </table>
			</form>
		</div>
	</div>
	
<!-- footer-->
</body>

</html>
