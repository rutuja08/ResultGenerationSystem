<%-- 
    Document   : Faculty_home
    Created on : 4 Oct, 2019, 10:32:15 AM
    Author     : rutu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty home</title>
    </head>
    <body>
        <center>
<h1 >Faculty</h1>
<div >
<h3><%
out.print("Welcome, "+session.getAttribute("admin_name"));

%></h3>
<div >
<label>Select Option</label>

    <div>
    <form method="post">
        
        <div >	
            <button  formaction="Faculty_internal_entery.jsp" >ENTER INTERNAL MARKS</button>
        </div>
        
        <div>	
            <button formaction="Faculty_external_entery.jsp" >ENTER EXTERNAL MARKS</button>
        </div>
        
        <div>	
            <button formaction="#" >INTERNAL REPORTS</button>
        </div>
        
        <div>	
            <button formaction="#" >EXTERNAL REPORTS</button>
        </div>
        
        <div>	
            <button formaction="#" >OVERALL REPORTS</button>
        </div>
        
        <div>	
            <button formaction="#" >SPECIFIC STUDENT FULL REPORT</button>
        </div>
        
    </form>
	</div>
</div>
</div>
<jsp:include page="parts/footer.jsp"></jsp:include>
</center>

    </body>
</html>
