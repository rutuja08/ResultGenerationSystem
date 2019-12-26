<%-- 
    Document   : Welcome_page
    Created on : 6 Oct, 2019, 12:37:27 PM
    Author     : Mukta
    This is the very first page of this whole system
    It gives three options for three diffrent type of user login.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
        <link rel="stylesheet" href="css/Homepage.css" type="text/css">
    </head>
    <body>

        <div class="header">
            <img src="images/mcoelogo_1.png" />
            <p>PROGRESSIVE EDUCATION SOCIETY'S</p>
            <h1>MODERN COLLEGE OF ENGINEERING</h1>
            <p>Approved by AICTE New Delhi, Recognized by Govt. of Maharashtra,</p>
            <p>Affiliated to Savitribai Phule Pune University</p>
            <p> Accredited by NAAC with <b>A Grade,</b> Awarded <b>Best College</b> by Savitribai Phule Pune University.
        </div>
        <div id="my_side_nav" class="sidenav">
            <a href="javascript:void(0)" class="close_btn" onclick="close_nav()">&times;</a>
            <a href="AboutUs.jsp">About</a>
            <a href="#">Services</a>
            <a href="#">Clients</a>
            <a href="#">Contact</a>

        </div>
        <span style="font-size:30px; cursor:pointer" onclick="open_nav()">&#9776; Explore</span>

        <script>
            function open_nav() {
                document.getElementById("my_side_nav").style.width = "250px";
            }

            function close_nav() {
                document.getElementById("my_side_nav").style.width = "0";
            }
        </script>

        <div class="content">
            <img src="images/clg.jpg" />
            <div>
                <h1>RESULT</h1>
            </div>
            <center>
                <div class="image">
                    Admin<a href="Admin_login.jsp">
                        <img src="images/admin.jpg" alt="Admin" title="Admin" style="width:200px;margin-right:100px;"/>
                    </a><br>
                    Faculty<a href="Admin_login.jsp">
                        <img src="images/faculty.jpg" alt="Faculty" title="Faculty" style="width:200px;margin-right:100px;"/>
                    </a><br>
                    Student <a href="Login_page.jsp">
                    <img src="images/student.jpg" alt="Student" title="Student" style="width:200px;margin-right:100px;"/></div>
                </a><br><br>
            </center>
        </div>
        <div class="footer">
            <jsp:include page="parts/footer.jsp"></jsp:include>
        </div>

    </body>

</html>
