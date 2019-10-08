<!--
	Author: Rutuja Jagtap
-->
<!DOCTYPE html>
<html lang="en">
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
				<div>
					<span><i  aria-hidden="true"></i></span>
					<input type="text" name="prn" placeholder="PRN"	required="required" />
					<div></div>
				</div>
				<div>
					<span><i aria-hidden="true"></i></span>
					<input type="text" name="first_name" placeholder="First Name" required="required" />
					<div></div>
				</div>
				<div>
					<span><i  aria-hidden="true"></i></span>
					<input type="text" name="middle_name" placeholder="Middle Name" required="required" />
					<div class="clear"></div>
				</div>
				<div >
					<span><i  aria-hidden="true"></i></span>
					<input type="text" name="last_name" placeholder="Last Name" required="required" />
					<div></div>
				</div>
				<div>
					<span><i  aria-hidden="true"></i></span>
					<input type="password" name="password" placeholder="password" required="required"/>
					<div></div>
				</div>
				<div>
					<span><i  aria-hidden="true"></i></span>
					<input type="password" name="reEnterPassword" placeholder="Re-Enter password" required="required"/>
                                          
					<div></div>
				</div>
				<div >
					<span><i  aria-hidden="true"></i></span>
					<input type="email" name="email_id" placeholder="info@example.com" required="required"/>
					<div ></div>
				</div>
				
				<div>	
					<span><i aria-hidden="true"></i></span>
					<input type="text" name="contact" placeholder="+001" required=""/>
					<div ></div>
				</div>
				
				<div class="w3l-user">	
					<span><i  aria-hidden="true"></i></span>
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
				</div>
				
				<div >
					<span><i  aria-hidden="true"></i></span>
                                         
                                        <input type="text" name="joining_yr" placeholder="Joining Year" required="required" />
                                        <div ></div>
				</div>
                                <div >	
					<span><i  aria-hidden="true"></i></span>
                                        Present Class: <select name="present_class" class="select">
                                            <option value='BE'>BE</option>
                                            <option value='FY/FE'>FY/FE</option>
                                            <option value='SY/SE'>SY/SE</option>
                                            <option value='TY/TE'>TY/TE</option>
                                            
                                        </select>
                                        
					<div ></div>
				</div>
				
                                        
                                        <div >
					<span><i aria-hidden="true"></i></span>
                                         
                                        <input type="text" name="division" placeholder="Division" required="required" />
                                        <div></div>
				</div>
				<div >	
					<span><i  aria-hidden="true"></i></span>
                                        Shift: <select name="shift" class="select">
                                            <option value=1>1</option>
                                            <option value=2>2</option>
                                            
                                        </select>
                                        
					<div ></div>
				</div>
				
				<div >	
					<span><i  aria-hidden="true"></i></span>
                                        <input type="radio"  name="sex"  value="m"  /> MALE
                                        <input type="radio"  name="sex"  value="f"  /> FEMALE
                                         <input type="radio"  name="sex"  value="t"  /> TRANSGENDER
					<div ></div>
				</div>
                                        
				<div >	
					<span><i  aria-hidden="true"></i></span>
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
                                        
					<div class="clear"></div>
				</div>
				
				<div class="w3l-phone">	
					<span><i  aria-hidden="true"></i></span>
					<input type="text" name="answer" placeholder="Answer" required="required" /> 
					<div></div>
				</div>
				
				<div>
					<input type="submit" name="button" value="sign up"/>
				</div>
			</form>
		</div>
	</div>
	
<!-- footer-->
</body>
</html>