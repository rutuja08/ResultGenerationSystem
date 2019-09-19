<%-- 
    Document   : Admin_login
    Created on : 15 Jun, 2019, 1:01:58 PM
    Author     : rutu
--%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Admin Login Form</title>
    <!-- meta tags -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
</head>

<body>
    <h1>Admin Login Form</h1>
    <div >
        <h2>Login Here</h2>
        <form action="Admin_login_process.jsp" method="POST">

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
                    <input type="password" name="password" placeholder="Password" required="required" />
                </div>
            </div>
            <div>
                <a href="#">Forgot Password?</a>
            </div>
            <button type="submit">Login</button>
            <a href="#">BACK</a>
        </form>
        <p>Don't have an account?<a href="#" class="register">New Registration </a></p>
    </div>
    <%@include file="parts/footer.jsp" %>
</body>
</html>