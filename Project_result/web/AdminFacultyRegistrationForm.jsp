<%-- 
    Document   : AdminFacultyRegistrationForm
    Created on : 5 Oct, 2019, 4:27:07 PM
    Author     : rutu
    This page allows Admin or Faculty to register himself/herself.
--%>
<jsp:include page="parts/firstheader.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/valid.css" type="text/css">
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); }
</script>
<script type="text/javascript">
    function validate()
    {
        var email_id = document.getElementById("email_id").value.trim();
        var contact_no = document.getElementById("contact");
        
        var newpassword = document.getElementById("Npassword");
	var confirmpassword = document.getElementById("reEnterPassword");
        //var regx = ^([a-zA-Z0-9 \-\.]+)@([a-zA-Z0-9 \-\.]+)\.([a-zA-Z]{2, 5});
        
        if(regx.test(email_id))
        {
            alert("Enter correct email id");
            return false;
        }
        
        if(contact_no.value.trim().length <10 || contact_no.value.trim().length >10)
        {
            alert("Enter valid contact number.");
            return false;
        }
        if(newpassword.value.trim().length<4 && confirmpassword.value.trim().length<4)
	{
            alert("Password must contain minimum 4 character.");
            return false;
	}
	else{
            if(newpassword.value.trim().length>20 && confirmpassword.value.trim().length>20){
		alert("Password must contain maximum 14 character.");
		return false;
            }
	}
    }
</script>

</head>

<body>
    <div class="form-style" align="center">
        <h2>Sign Up</h2>
        <form action="AdminFaculty_register.jsp"  method="POST">
            <table width="400">
                <tr>
                    <td width="125">Prefix:<span class="required">*</span></td>
                    <td width="180"><div class="input-group">
                        <select name="prefix" required="required">
                            <option value="">--Prefix--</option>
                            <%
                            try
                            {
                                Class.forName(Connect.DRIVER);
                                Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                                //out.println("<option>Connection successful</option>");
                                Statement stmt = con.createStatement();
                                ResultSet rs= stmt.executeQuery("SELECT * FROM `Prefix`");
                               // out.println(rs);
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
                    <td width="125">First Name:<span class="required">*</span></td>
                    <td width="180"><div class="input-group"><input type="text" name="first_name" placeholder="First Name" required="required" /></div></td>
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
                    <td><a href="Admin_login.jsp" class="btn">Back</a>
                        <input type="submit" value="Submit" onclick="return validate()" class="btn"/>
                        <input type="reset" value="Reset" class="btn">
                    </td>
                </tr>
            </table>
	</form>
    </div>
<%@include file="parts/footer.jsp" %>
</body>

</html>
