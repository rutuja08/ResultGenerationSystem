<%-- 
    Document   : Forget_password
    Created on : 10 Dec, 2019, 9:52:52 AM
    Author     : rutu
--%>

<jsp:include page="parts/firstheader.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<!DOCTYPE html>
<html lang="en">
    <head><link rel="stylesheet" href="css/valid.css" type="text/css"></head>

<body class="body">
<div class="form-style">  
        <h2 align="center">Login Form</h2>
        <!--
        
        1- enter email id
        2- then select sec quest
        3- enter ans-> check ans n then set new pass-->
        <form action="Admin_login_process.jsp" method="POST">

            <table width="400" align="center">
                
                <tr>
                    <td width="125">Email Id:<span class="required">*</span></td>
                    <td width="180"><div class="input-group"><input type="text" name="email_id"  placeholder="Email ID" required="required" /></div></td>
                </tr>
                <tr>
                    <td width="125">Password:<span class="required">*</span></td>
                    <td width="180"><div class="input-group"><input type="password" name="password" placeholder="Password" required="required" /></div></td>
                </tr>
                <tr>
                    <td><a href="Forget_password.jsp" class="register">Forget Password</a><br>
                        <a href="AdminFacultyRegistrationForm.jsp" class="register">New Registration </a></td>
                    <td><a href="Welcome_page.jsp" class="btn">Back</a>
                        <button type="submit" class="btn">Login</button>
                        <button type="reset" class="btn">Reset</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div class="footer">
    <%@include file="parts/footer.jsp" %>
    </div>
</body>
</html>
