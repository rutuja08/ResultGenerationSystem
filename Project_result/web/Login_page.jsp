<!DOCTYPE html>
<html lang="en">

<head>
    <title>Student Login Form</title>
   

</head>
<body>
    <h1>Login Form</h1>
    <div>
        <h2>Login Here</h2>
        <form action="LoginProcess.jsp" method="POST">

            <div>
                <label>Email ID:</label>
                <div>
                    <i></i>
                    <input type="text" name="email_id"  placeholder="Email ID" required="required" />
                </div>
            </div>
            <div>
                <label>Password:</label>
                <div>
                    <i></i>
                    <input type="password" name="password"  placeholder="Password" required="required" />
                </div>
            </div>
            <div class="forgot">
                <a href="#">Forgot Password?</a>
                <p><input type="checkbox">Remember Me</p>
            </div>
            <button type="submit">Login</button>
        </form>
        <p>Don't have an account?<a href="studentRegistrationForm.jsp" class="register">New Registration </a></p>
    </div>
    <%@include file="parts/footer.jsp" %>
</body>
</html>