<%-- 
    Document   : Admin_home
    Created on : 15 Jun, 2019, 2:33:35 PM
    Author     : rutu
--%>
<jsp:include page="header.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<!doctype html>
<html lang="en">
<head>
<title>Admin Home Page</title>
<link rel="stylesheet" href="css/Style.css">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

</head>
<body class="body">
    <div class="form-style">  

<h2 align="center" >Administrator</h2>
<h3 align="center"><%
out.print("Welcome, "+session.getAttribute("admin_name"));

%></h3>

    <form method="post">
        
        <table width="400" align="center">
            <tr>
                <td>
                    <button  formaction="Departments.jsp" class="btn">DEPARTMENTS</button>
                </td>
            
                <td>
                    <button formaction="Admin_faculty.jsp" class="btn">FACULTY</button>
                </td>
            
                <td>
                    <button formaction="#" class="btn">EXAMINATION</button>
                </td>
            
                <td>
                    <button formaction="Admin_student.jsp" class="btn">STUDENT</button>
                </td>
            
                <td>
                    <button formaction="#" class="btn">SUBJECT</button>
                </td>
            </tr>
            <tr>
                <td><a href="#" class="btn">Back</a></td>
                <td><button type="submit" class="btn">Submit</button></td>
            </tr>
        </table>
    </form>
</div>
    <div class="footer">
    <%@include file="parts/footer.jsp" %>
    </div>
</body>

</html>