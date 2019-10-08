



<jsp:include page="header.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<!doctype html>
<html lang="en">
<head>
<title>Student Home Page</title>
<jsp:include page="parts/meta.jsp"></jsp:include>
</head>
<body>
<div class="form-style" align="center">
<h2><%out.print("Welcome, "+session.getAttribute("first_name"));%></h2>
<form method="post">
        <table width="400" align="center">
            <tr>
                <td width="125"></td>
                <td>
                    <input type="submit" formaction="stud_internal_report.jsp" class="btn" value="INTERNAL REPORT">
                </td>
            </tr>
            <tr>
                <td width="125"></td>
                <td>
                    <input type="submit" class="btn"  formaction="stud_external_report.jsp" value="EXTERNAL REPORT"> 
                </td>
            </tr>
            <tr>
                <td width="125"></td>
                <td>
                   <input type="submit" formaction="stud_overall_report.jsp" class="btn" value="OVERALL REPORT"> 
                </td>
            </tr>
            <tr>
                <td width="125"></td>
                <td height="5"></td>
            </tr>
            <tr>
                <td width="125"></td>
                <td><a href="Login_page.jsp" class="btn">Back</a></td>
            </tr>
        </table>
    </form>
</div>
<jsp:include page="parts/footer.jsp"></jsp:include>
</body>
</html>