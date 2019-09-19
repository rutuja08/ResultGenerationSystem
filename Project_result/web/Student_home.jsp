
<!doctype html>
<html lang="en">
<head>
<title>Student Feedback Home Page</title>
<jsp:include page="parts/meta.jsp"></jsp:include>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

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
					<div><input type="submit" class="register" formaction="select_term.jsp" value="SUBJECT TEACHER"></div>
					<div class="clear"></div>
				</div>
			</div>
			
			<div class="content-wthree4">	
				<div class="form-control">
					<input type="submit" class="register" value="DEPARTMENT">
					<div class="clear"></div>
				</div>
			</div>
			
			<div class="content-wthree4">	
				<div class="form-control">
					<input type="submit" class="register" value="SUB DEPARTMENT">
					<div class="clear"></div>
				</div>
			</div>		
			
			<div class="content-wthree4">	
				<div class="form-control">
					<input type="submit" class="register" value="GUEST LECTURES">
					<div class="clear"></div>
				</div>
			</div>		
			
			<div class="content-wthree4">	
				<div class="form-control">
					<input type="submit" class="register" value="SEMINAR">
					<div class="clear"></div>
				</div>
			</div>				
			
			<div class="content-wthree4">	
				<div class="form-control">
					<input type="submit" class="register" value="EVENTS">
					<div class="clear"></div>
				</div>
			</div>		
			
			<div class="content-wthree4">	
				<div class="form-control">
					<input type="submit" class="register" value="AMENITIES">
					<div class="clear"></div>
				</div>
			</div>		
		</form>
	</div>
</div>
<jsp:include page="parts/footer.jsp"></jsp:include>
</body>
</html>