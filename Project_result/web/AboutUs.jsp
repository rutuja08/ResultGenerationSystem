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
            <h2>Guided By</h2>
            <table>
            <tr>
                <td>
		<p>
                    <img src="images/female.jpg" alt="Asst Prof.Shivani Budhkar" title="Asst Prof.Shivani Budhkar" hspace="40" style="width:200px;margin-right:100px;"/>
		</td>
                <td>
                    Name: <b>Asst Prof.Shivani Budhkar</b><br><br>
                    Contact: 9822616812<br><br>
                    Email Id: shivani.budhkar@moderncoe.edu.in
                </td>
            </tr> 
            </table>
        </div>
        <div class="form-style">
            <h2>Developed By</h2>
	<table>
	<tr>
            <td>
		<p>
                    <img src="images/female.jpg" alt="Miss Rutuja U Jagtap" title="Miss Rutuja U Jagtap" hspace="40" style="width:200px;margin-right:100px;">
		</td>
                <td>
                    Name: <b>Miss Rutuja U Jagtap</b><br><br>
                    Contact: 9403503108<br><br>
                    Email Id: jagtaprutuja03@gmail.com
                </td>
        </tr> 
	<tr>
            <td>
		<p>
                    <img src="images/female.jpg" alt="Mukta Bagul" title="Mukta Bagul" hspace="40" style="width:200px;margin-right:100px;">
		</td>
                <td>
                    Name: Mukta Bagul<br><br>
                    Contact: 2222222<br><br>
                    Email Id: m@gmail.com
		
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
        </center>
<%@include file="parts/footer.jsp" %>
    </body>
    </body>
</html>
