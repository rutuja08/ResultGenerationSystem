<%-- 
    Document   : Admin_login
    Created on : 15 Jun, 2019, 1:01:58 PM
    Author     : rutu
--%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Admin Login Form</title>
    <link rel="stylesheet" href="css/valid.css" type="text/css">
    <%@include file="parts/header.jsp" %>
</head>

<body class="body">
    

<div class="form-style">  
        <h2 align="center">Admin Login Form</h2>
        
        <form action="Admin_login_process.jsp" method="POST">

            <table width="400" align="center">
                <tr>
                    <td width="125">User Type:<span class="required">*</span></td>
                    <td width="180"><input type="radio" name="user_type"  value="admin">Administrator</td>
                    <td><input type="radio" name="user_type"  value="faculty">Faculty</td>
                </tr>
                <tr>
                    <td width="125">Email Id:<span class="required">*</span></td>
                    <td width="180"><div class="input-group"><input type="text" name="email_id"  placeholder="Email ID" required="required" /></div></td>
                </tr>
                <tr>
                    <td width="125">Password:<span class="required">*</span></td>
                    <td width="180"><div class="input-group"><input type="password" name="password" placeholder="Password" required="required" /></div></td>
                </tr>
                <tr>
                    <td></td>
                    <td><a href="#" class="btn">Back</a>
                        <button type="submit" class="btn">Login</button>
                      
                    </td>
                </tr>
            </table>
          <!--  <label>Select User Type:</label>
                    <input type="radio" name="user_type"  value="admin" />Administrator
                    <input type="radio" name="user_type"  value="faculty" />Faculty
                    <p/><label>Email ID:</label>
                    <input type="text" name="email_id"  placeholder="Email ID" required="required" />
                <p/><label>Password:</label>
                    <input type="password" name="password" placeholder="Password" required="required" />
                
                <p/><a href="#">Forgot Password?</a>
                <p/><button type="submit" class="btn">Login</button>
            <a href="#">BACK</a> -->
        </form>
        <p>Don't have an account?<a href="AdminFacultyRegistrationForm.jsp" class="register">New Registration </a></p>
    </div>
    <div class="footer">
    <%@include file="parts/footer.jsp" %>
    </div>
</body>
</html>