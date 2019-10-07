<%-- 
    Document   : AboutUs
    Created on : 6 Oct, 2019, 11:03:16 PM
    Author     : Mukta
--%>
<jsp:include page="parts/firstheader.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/valid.css" type="text/css">
        <title>About Us</title>
    </head>
    <body>
        <div class="form-style">
	<h2><center>Developed By</center></h2>
	<table>
	<tr><td>
		<p><img src="images/female.jpg" alt="Rutuja Jagtap" title="Rutuja Jagtap" hspace="40" style="width:200px;margin-right:100px;">
		</td><td>
		Name: Rutuja Jagtap<br><br>
		Contact:  111111111<br><br>
		Email Id: r@gmail.com
		</p>
	</td></tr> 
	<tr><td>
		<p><img src="images/female.jpg" alt="Mukta Bagul" title="Mukta Bagul" hspace="40" style="width:200px;margin-right:100px;">
		</td><td>
		Name: Mukta Bagul<br><br>
		Contact: 2222222<br><br>
		Email Id: m@gmail.com
		</p>
	</td></tr> 
	<tr><td>
		<p><img src="images/female.jpg" alt="Kshitija Pathak" title="Kshitija Pathak" hspace="40" style="width:200px;margin-right:100px;">
		</td><td>
		Name: Kshitija Pathak<br><br>
		Contact: 33333333<br><br>
		Email Id: k@gmail.com
		</p>
	</td></tr> 
	<tr><td>
		<p><img src="images/male.jpg" alt="Prashant Bhave" title="Prashant Bhave" hspace="40" style="width:200px;margin-right:100px;">
		</td><td>
		Name: Prashant Bhave<br><br>
		Contact: 444444444  <br><br>
		Email Id: p@gmail.com
		</p>
	</td></tr> 
	</table>
	<br><br>
        <center><a href="Welcome_page.jsp" class="btn">Back</a></center>
	</div>
    </body>
</html>
