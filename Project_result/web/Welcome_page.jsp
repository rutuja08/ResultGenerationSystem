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
        <title>Result Generation System</title>
        <link rel="stylesheet" href="css/Homepage.css" type="text/css">
        <link rel="stylesheet" href="css/valid.css" type="text/css">
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
        <div id="navbar" >
            <a href="#home">HOME</a>
            <a href="#">PROFILE</a>
            <a href="#aboutus">ABOUT US</a>
            <a href="#contactus">CONTACT</a>
        </div>

        <div style="width: 1000px;">
        <img src="images/clg.jpg" />
        </div>

        <div class="content">

            <div>
                <h1>RESULT</h1>
            </div>
            <center>
                <div id="home">
                    <div class="image">
                        <br><br><br>

                        <table style="width: 800px;">
                            <tr>
                                <td>
                                    <h3>ADMINISTRATOR</h3>
                                    <br><a href="Admin_login.jsp" >
                            <img src="images/admin.jpg" alt="Admin" title="Admin" style="width:200px;margin-right:100px;"/>
                        </a>
                                </td>
                                <td>
                                    khdfssssss
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    khdfssssss
                                </td>
                                <td>
                                    <h3>FACULTY</h3>
                                    <a href="Admin_login.jsp">
                            <img src="images/faculty.jpg" alt="Faculty" title="Faculty" style="width:200px;margin-right:100px;"/>
                        </a>
                                    <br>
                                </td>
                                
                            </tr>
                            <tr>
                                <td>
                                    <h3>STUDENT</h3>
                                    <a href="Login_page.jsp">
                        <img src="images/student.jpg" alt="Student" title="Student" style="width:200px;margin-right:100px;"/></div>
                    </a>
                                    <br>
                                </td>
                                <td>
                                    khdfssssss
                                </td>
                            </tr>
                        </table>
                        <br><br>
                </div>
            </center>
        </div>



        <script>
            window.onscroll = function () {
                myFunction()
            };

            var navbar = document.getElementById("navbar");
            var sticky = navbar.offsetTop;

            function myFunction() {
                if (window.pageYOffset >= sticky) {
                    navbar.classList.add("sticky")
                } else {
                    navbar.classList.remove("sticky");
                }
            }

        </script>

        <div id="aboutus">
            <br><br><br><br><br>
            <h2>Guided By</h2>
            <table>
                <tr>
                    <td>
                        <img src="images/female.jpg" alt="Asst Prof.Shivani Budhkar" title="Asst Prof.Shivani Budhkar" hspace="40" style="width:200px;margin-right:100px;"/>
                    </td>
                    <td>
                        Name: <b>Asst Prof.Shivani Budhkar</b><br><br>
                        Contact: 9822616812<br><br>
                        Email Id: shivani.budhkar@moderncoe.edu.in
                    </td>
                </tr> 
            </table>
            <h2>Developed By</h2>
            <table>
                <tr>
                    <td>
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
                        <img src="images/female.jpg" alt="Mukta Bagul" title="Mukta Bagul" hspace="40" style="width:200px;margin-right:100px;">
                    </td>
                    <td>
                        Name: Mukta Bagul<br><br>
                        Contact: 2222222<br><br>
                        Email Id: m@gmail.com

                    </td></tr> 
                <tr><td>
                        <img src="images/female.jpg" alt="Kshitija Pathak" title="Kshitija Pathak" hspace="40" style="width:200px;margin-right:100px;">
                    </td><td>
                        Name: Kshitija Pathak<br><br>
                        Contact: 33333333<br><br>
                        Email Id: k@gmail.com

                    </td></tr> 
                <tr><td>
                        <img src="images/male.jpg" alt="Prashant Bhave" title="Prashant Bhave" hspace="40" style="width:200px;margin-right:100px;">
                    </td><td>
                        Name: Prashant Bhave<br><br>
                        Contact: 444444444  <br><br>
                        Email Id: p@gmail.com

                    </td></tr> 
            </table>
            <br><br>
        </div>
        <div id="contactus" class="content" >
            <br>
            <h2>Contact Us</h2>
            <h3>Contact Information :</h3>
            <h4><u>Location</u></h4>
            <p>P. E. Society's Modern College of Engineering is located in the heart of Pune city at Shivajinagar, off Jangli Maharaj Road. 
                It is well connected by road and rail, campus area is approx. 12 acres.</p>
            <br>
            <h4><u>Postal Address</u></h4>
            <p>P.E.S. Modern College of Engineering,<br>
                1186/A, Off J.M. Road, Shivajinagar,<br>
                Pune, Maharashtra<br>
                Pin- 411005.<br>
                Telephone(020) 25533638, 25533648.<br>
                Fax020) 25530957<br>
                Emailpesmcoe@moderncoe.edu.in
            </p>
            <br>
            <h4><u>Contact Details</u></h4>
            <p><table cellpadding="5">
                <tr><td><b>E-MAIL DESTINATION</b></td><td><b>E-MAIL ID</b></td></tr>
                <tr><td>The Principal</td><td>principal@moderncoe.edu.in</td></tr>
                <tr><td>Head of MCA Dept</td><td>hodmca@moderncoe.edu.in</td></tr>
            </table>
            <br><br>
        </div>


        <div>
            <%@include file="parts/footer.jsp" %>
        </div>

    </body>


</html>
