
<!doctype html>
<html lang="en">
<head>
<title>Student Home Page</title>
<jsp:include page="parts/meta.jsp"></jsp:include>


</head>
<body>
<h1>Student</h1>
<div >
<h3><%
    
out.print("Welcome, "+session.getAttribute("first_name"));
%></h3>
<p align="center">Select Feedback Option<p>
	<div >
		<form method="post">
				<div >	
				<div >
					<div><input type="submit" class="register" formaction="stud_internal_report.jsp" value="INTERNAL REPORT"></div>
					<div class="clear"></div>
				</div>
			</div>
			
			<div class="content-wthree4">	
				<div class="form-control">
                                    <input type="submit" class="register"  formaction="stud_external_report.jsp" value="EXTERNAL REPORT">
					<div class="clear"></div>
				</div>
			</div>
			
			<div class="content-wthree4">	
				<div class="form-control">
                                    <input type="submit" class="register" formaction="stud_overall_report.jsp" value="OVERALL REPORT">
					<div class="clear"></div>
				</div>
			</div>		
			
		</form>
	</div>
</div>
<jsp:include page="parts/footer.jsp"></jsp:include>
</body>
</html>