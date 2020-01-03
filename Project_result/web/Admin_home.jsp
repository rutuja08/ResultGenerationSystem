<%-- 
    Document   : Admin_home
    Created on : 15 Jun, 2019, 2:33:35 PM
    Author     : rutu
    This is the homepage of an 'Admin' user
    It shows all functionalities that 'Admin' can perform
--%>
<jsp:include page="parts/firstheader.jsp" >
    <jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<%@page import="java.sql.*" %>
<%@page import="bean.*" %>
<%@include file="Connection.jsp" %>

<!doctype html>

<head>
    <title>Admin Home Page</title>
    <link rel="stylesheet" href="css/valid.css">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
        function hideURLbar(){ window.scrollTo(0,1); } 

        function goBack() {
        window.history.back();
        }

   /*     function openTab(evt, tabName) 
        {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");

        for (i = 0; i < tabcontent.length; i++) 
        {
        tabcontent[i].style.display = "none";
        }

        tablinks = document.getElementsByClassName("tablinks");

        for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
        }

        document.getElementById(tabName).style.display = "block";
        evt.currentTarget.className += " active";
        }*/
    </script>
</head>


<body class="body">


    <!--<div class="sidenav">
        <div class="tab">
            
            <button class="tablinks" onclick="openTab(event, 'profile')">PROFILE</button>
            <button   class="tablinks" onclick="openTab(event, 'dept')">DEPARTMENTS</button>

            <button  class="tablinks" onclick="openTab(event, 'fac')">FACULTY</button>
            <button  class="tablinks" onclick="openTab(event, 'exam')">EXAMINATION</button>
            <button class="tablinks" onclick="openTab(event, 'student')">STUDENT</button>
            <button class="tablinks" onclick="openTab(event, 'sec')">SECURITY QUESTION</button>
            <button class="tablinks" onclick="openTab(event, 'subject')">SUBJECT</button>

            <a href="Logout.jsp" class="">LOGOUT</a>
        </div>
    </div>-->
    <div class="form-style">  

        <h2><%out.print("Welcome, " + session.getAttribute("admin_name"));%></h2>
            
        <div class="logout">
            <a href="Logout.jsp" class="logout">LOGOUT</a>
        </div>
        



        <form method="post">


            <div id="profile">
                <%
                    String email_id = (String) session.getAttribute("admin_email_id");

                    Class.forName(Connect.DRIVER);
                    Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT  `contact`, Course.course_name FROM `AdminFacultyUsers`,`Course` "
                            + "WHERE AdminFacultyUsers.course_code= Course.course_code and AdminFacultyUsers.email_id= \"" + email_id + "\"");

                    while (rs.next()) {
                %>
                <table>
                    <tr><td>Email Id: </td><td><label><%=email_id%></label></td></tr>
                    <tr><td>Contact No: </td><td><label><%=rs.getString(1)%></label></td></tr>
                    <tr><td>Course Name: </td><td><label><%=rs.getString(2)%></label></td></tr>

                </table>
                <%
                    }
                    rs.close();
                    con.close();

                %>
            </div>
            <div  style="margin: auto;">
                <div class="dropdown">
                    
                    <!--<div class="dropdown-content">
                        <a href="#">Show All</a>
                        <a href="#">Add New</a>
                        <a href="#">Edit Existing</a>
                        <a href="#">Delete Existing</a>
                    </div>-->
                </div>
                <table style="height: 200px; width: 1000px;" align="center" >
                    <tr>
                        <td>
                            <button id="dept"  formaction="Departments.jsp" class="btn_menu btn_menu1">DEPARTMENTS</button>
                        </td>
                        <td>
                            <button id="facuty" formaction="Admin_faculty.jsp" class="btn_menu btn_menu1">FACULTY</button>
                        </td>
                        <td>
                            <button id="examination" formaction="#" class="btn_menu btn_menu1">EXAMINATION</button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button id="stud" formaction="Admin_student.jsp" class="btn_menu btn_menu1">STUDENT</button>
                        </td>
                        <td>
                            <button id="security" formaction="Security_Question.jsp" class="btn_menu btn_menu1">SECURITY QUESTION</button>
                        </td>
                        <td>
                            <button id="subject" formaction="#" class="btn_menu btn_menu1">SUBJECT</button>
                        </td>
                    </tr>
                </table>
            </div>    
            

        </form>
    </div>

            <div class="back_btn">
                <a href="Admin_login.jsp" class="btn" onclick="goBack()">Back</a>
            </div>

    <div class="footer">
        <%@include file="parts/footer.jsp" %>
    </div>
</body>

</html>