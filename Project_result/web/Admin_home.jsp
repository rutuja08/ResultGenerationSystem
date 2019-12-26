<%-- 
    Document   : Admin_home
    Created on : 15 Jun, 2019, 2:33:35 PM
    Author     : rutu
    This is the homepage of an 'Admin' user
    It shows all functionalities that 'Admin' can perform
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
    <div class="form-style" align="center">  

<h2 align="center" ><%out.print("Welcome, "+session.getAttribute("admin_name"));%></h2>

    <form method="post">
        
        <table width="800" align="center">
            <tr>
                
                <td>
                    <div class="dropdown">
                    <button  formaction="Departments.jsp" class="btn">DEPARTMENTS</button>
                    <div class="dropdown-content">
                        <a href="#">Show All</a>
                        <a href="#">Add New</a>
                        <a href="#">Edit Existing</a>
                        <a href="#">Delete Existing</a>
                    </div>
                    </div>
                </td>
            
                
                <td>
                    <button formaction="Admin_faculty.jsp" class="btn">FACULTY</button>
                </td>
            </tr>
            <tr>
                
                <td>
                    <button formaction="#" class="btn">EXAMINATION</button>
                </td>
            
                
                <td>
                    <button formaction="Admin_student.jsp" class="btn">STUDENT</button>
                </td>
            </tr>
            <tr>
                
                <td>
                    <button formaction="Security_Question.jsp" class="btn">SEQURITY QUESTION</button>
                </td>
            
                
                <td>
                    <button formaction="#" class="btn">SUBJECT</button>
                </td>
            </tr>
            <tr>
                <td width="400"></td>
                <td height="5"></td>
            </tr>
        </table>
        <a href="Admin_login.jsp" class="btn">Back</a>
    </form>
</div>
    <div class="footer">
    <%@include file="parts/footer.jsp" %>
    </div>
</body>

</html>