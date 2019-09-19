<%-- 
    Document   : Admin_home
    Created on : 15 Jun, 2019, 2:33:35 PM
    Author     : rutu
--%>

<!doctype html>
<html lang="en">
<head>
<title>Admin Home Page</title>
<jsp:include page="parts/meta.jsp"></jsp:include>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

</head>
<body>
<center>
<h1 >Administrator</h1>
<div >
<h3><%
out.print("Welcome, "+session.getAttribute("admin_name"));

%></h3>
<div >
<label>Select Option</label>

    <div>
    <form method="post">
        
        <div >	
            <button  formaction="Departments.jsp" >DEPARTMENTS</button>
        </div>
        
        <div class="content-wthree4">	
            <button formaction="#" >FACULTY</button>
        </div>
        
        <div class="content-wthree4">	
            <button formaction="#" >EXAMINATION</button>
        </div>
        
        <div class="content-wthree4">	
            <button formaction="#" >STUDENT</button>
        </div>
        
        <div class="content-wthree4">	
            <button formaction="#" >SUBJECT</button>
        </div>
        
    </form>
	</div>
</div>
</div>
<jsp:include page="parts/footer.jsp"></jsp:include>
</center>
</body>
</html>