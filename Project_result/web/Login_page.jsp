<!--
    This is the page which is used checks Student's details 
    
-->
<jsp:include page="parts/firstheader.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Student Login Form</title>
   <link rel="stylesheet" href="css/valid.css" type="text/css">

</head>
<body>
    <div class="form-style">  
        <h2 align="center">Login Form</h2>
        
        <form action="LoginProcess.jsp" method="POST">

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
                    <td><a href="studentRegistrationForm.jsp" class="register">New Registration </a></td>
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