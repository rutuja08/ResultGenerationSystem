<%-- 
    Document   : Faculty_internal_marks_entery_specific_single_stud
    Created on : 8 Oct, 2019, 6:23:34 PM
    Author     : rutu
--%>

<jsp:include page="header.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/valid.css" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add faculty subject</title>
        
    </head>
    <body  class="body">
        <div class="form-style">  
        <h2 align="center">Internal Marks</h2>
        <form method="GET" action="#">
            <%
                
                out.print(""+session.getAttribute("admin_name"));
                Class.forName(Connect.DRIVER);
                Connection con1 = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                Statement stmt=null, stmt1=null;
                ResultSet rs=null, rs1= null;
                PreparedStatement ps,ps1;
                
                long prn = Long.parseLong(request.getParameter("prn"));
                String subject_type = request.getParameter("subject_type");
                int faculty_id = Integer.parseInt(request.getParameter("faculty_id"));
                String faculty_name = (String)session.getAttribute("admin_name");
                int course_code = Integer.parseInt(request.getParameter("course_code"));
                String course_name = request.getParameter("course_name");
                String subject_name = request.getParameter("subject_name");
                String subject_code = request.getParameter("subject_code");
                String present_year = request.getParameter("present_year");
                int shift = Integer.parseInt(request.getParameter("shift"));
                String ass_no = request.getParameter("ass_no");
                String ass_name= request.getParameter("ass_name");
                int no_of_attempt= Integer.parseInt(request.getParameter("attempt_no"));
                int marks = Integer.parseInt(request.getParameter("marks"));
                int student_sub_no=0;
                int ass_max_mks=Integer.parseInt(request.getParameter("ass_max_mks"));
                String stud_name=request.getParameter("stud_name");
                String student_sql1="INSERT INTO `StudentSubject`(`stud_sub_no`, `prn`, `subject_code`) VALUES (?,?,?)";
                String select_stud_sub = "SELECT `stud_sub_no` FROM `StudentSubject` WHERE `prn` ="+prn+" and `subject_code`="+subject_code;
                
                String insert_mks = "INSERT INTO `InternalMarks`(`int_mks_id`, `stud_sub_no`, `no_of_attempt`, `assessment_tool_no`,"
                        + " `obtained_mks`, `obtained_credit_points`) VALUES (?,?,?,?,?,?)";
                
                ps = con1.prepareStatement(student_sql1);
                ps.setString(1, null);
                ps.setLong(2, prn);
                ps.setString(3, subject_code);
                ps.executeUpdate();
                
                stmt = con1.createStatement();
                    rs = stmt.executeQuery(select_stud_sub);
                    while(rs.next())
                    {
                        student_sub_no = rs.getInt(1);
                    }
                    //out.print(student_sub_no);
                ps1 = con1.prepareStatement(insert_mks);
                ps1.setString(1, null);
                ps1.setInt(2, student_sub_no);
                ps1.setInt(3, no_of_attempt);
                ps1.setString(4, ass_no);
                ps1.setInt(5, marks);
                ps1.setInt(6, 0);
                int res= ps1.executeUpdate();
                
                
               String select_stud_mks = "SELECT  "
                       + "`no_of_attempt`, `obtained_mks`FROM `InternalMarks` WHERE stud_sub_no="+student_sub_no;
               
                       if(res !=0)
                       {
                %>
            
                <script type="text/javascript">
            alert("Marks Added Successfuly.");
        </script>
                <% 
                    }
                
                else
                %>
        <script type="text/javascript">
            alert("Duplicate record.");
        </script>
                
                    <input type="hidden" name="course_code" value="<%=course_code%>">
                <input type="hidden" name="present_year" value="<%=present_year%>">
                    <input type="hidden" name="subject_type" value="<%=subject_type%>">
                    <input type="hidden" name="course_name" value="<%=course_name%>">
                    <input type="hidden" name="faculty_id" value="<%=faculty_id%>">
                    <input type="hidden" name="subject_name" value="<%=subject_name%>">
                    <input type="hidden" name="subject_code" value="<%=subject_code%>">
                    <input type="hidden" name="shift" value="<%=shift%>">
                    <input type="hidden" name="ass_no" value="<%=ass_no%>">
                    <input type="hidden" name="ass_name" value="<%=ass_name%>">
                    <input type="hidden" name="ass_max_mks" value="<%=ass_max_mks%>">
                    
                
                       <a href="Faculty_internal_marks_entery.jsp?ass_name=<%=ass_name%>&course_code=<%=course_code%>&present_year=<%=present_year
                          %>&subject_type=<%=subject_type%>&course_name=<%=course_name%>&faculty_id=<%=faculty_id
                          %>&subject_name=<%=subject_name%>&subject_code=<%=subject_code%>&shift=<%=shift
                          %>&ass_no=<%=ass_no%>&ass_name=<%=ass_name%>&ass_max_mks=<%=ass_max_mks%>" class="btn">Back</a>
        </form>
        </div>
                    <div class="footer">
    <%@include file="parts/footer.jsp" %>
    </div>
    </body>
</html>
