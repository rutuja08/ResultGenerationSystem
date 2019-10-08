<%-- 
    Document   : Admin_add_faculty_subject_specific_add
    Created on : 6 Oct, 2019, 12:18:47 PM
    Author     : rutu
    This checks whether data is existing or not 
    If the record is already existing then it will not be added that record and displays error message is displayed
    Otherwise record gets added into database table 'FacultySubject'.
--%>
<jsp:include page="header.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Connection.jsp" %>
 
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/valid.css" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add faculty subject</title>
        
    </head>
    <body>
        <div class="form-style" align="center">
<%
  Class.forName(Connect.DRIVER);
  Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
  PreparedStatement ps=null;
  ResultSet rs;
  Statement stmt = con.createStatement();
  String faculty_sub_id;
  
  int faculty_id = Integer.parseInt(request.getParameter("faculty_id"));
  String academic_year = request.getParameter("academic_year");
  String subject_code = request.getParameter("subject_code");
  
  faculty_sub_id = academic_year+faculty_id+subject_code;
  out.print(faculty_id);
  out.print(academic_year);
  out.print(subject_code);
  try
  {
      rs = stmt.executeQuery("SELECT `faculty_sub_id` FROM `FacultySubject` WHERE  `academic_year`= '"+ academic_year+"' and "
              + "`faculty_id`= "+faculty_id+" and `subject_code`="+subject_code);
      if(rs!=null)
      {
          %>
        <script type="text/javascript">
            alert("Duplicate record.");
        </script>
        <a href="Admin_add_faculty_subject.jsp" class="btn">Back</a>
        <%
          //  response.sendRedirect("Admin_add_faculty_subject.jsp");
      }
else{
      
    int res;
      String sql="INSERT INTO `FacultySubject`(`faculty_sub_id`, `academic_year`, `faculty_id`, `subject_code`) "
            + "VALUES (?,?,?,?)";
    ps = con.prepareStatement(sql);
    ps.setString(1, faculty_sub_id);
    ps.setString(2, academic_year);
    ps.setInt(3, faculty_id);
    ps.setString(4, subject_code);
    out.println(ps);
    res = ps.executeUpdate();
    out.println(ps.executeUpdate());
    
    %> 
        <script type="text/javascript">
            alert("Record Added.");
        </script>
        <a href="Admin_add_faculty_subject.jsp" class="btn">Back</a>
        
    <%
    //response.sendRedirect("Admin_add_faculty_subject.jsp");
    }
    
    %>
    <input type="hidden" name="academic_year" value="<%=request.getParameter("academic_year")%>">
    
        <a href='Admin_show_faculty_subject.jsp?course_code=<%=request.getParameter("course_code") %>&academic_year=<%=academic_year %>' class="btn">Show Data</a>
    <h3>
        </h3>
        
        <%
  }
  catch(Exception e)
  {
      %>
      <p> <%System.out.print(e);%> </p>
      <% 
  }
%>
        </div>
         <%@include file="parts/footer.jsp" %>
</body>

</html>