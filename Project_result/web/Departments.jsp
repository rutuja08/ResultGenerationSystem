<%-- 
    Document   : Departments.jsp
    Created on : 16 Sep, 2019, 2:02:20 PM
    Author     : rutu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <jsp:include page="parts/meta.jsp"></jsp:include>
        <title>Department</title>
    </head>
    <body>
        <center>
<h1 >Administrator</h1>
<div >
<h3><%
out.print("Welcome, "+session.getAttribute("admin_name"));

%></h3>
<div >
<label>Select Department's Option</label>

    <div>
    <form method="post">
        
        <div >	
            <button  formaction="Add_department.jsp" >ADD NEW</button>
        </div>
        
        <div>	
            <button formaction="Edit_department.jsp" >EDIT EXISTING</button>
        </div>
        
        <div>	
            <button formaction="#" >DELETE</button>
        </div>
        
    </form>
	</div>
</div>
</div>
<jsp:include page="parts/footer.jsp"></jsp:include>
</center>

    </body>
</html>
