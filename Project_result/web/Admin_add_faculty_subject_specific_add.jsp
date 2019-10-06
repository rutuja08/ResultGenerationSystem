<%-- 
    Document   : Admin_add_faculty_subject_specific_add
    Created on : 6 Oct, 2019, 12:18:47 PM
    Author     : rutu
--%>

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
<%
  Class.forName(Connect.DRIVER);
            Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
  PreparedStatement ps=null;
  String faculty_sub_id;
  
  int faculty_id = Integer.parseInt(request.getParameter("faculty_id"));
  String academic_year = request.getParameter("academic_year");
  String subject_code = request.getParameter("subject_code");
  
  faculty_sub_id = ""+faculty_id+subject_code;
  out.print(faculty_id);
  out.print(academic_year);
  out.print(subject_code);
  try
  {
    int res;
      String sql="INSERT INTO `FacultySubject`(`faculty_sub_id`, `academic_year`, `faculty_id`, `subject_code`) "
            + "VALUES (?,?,?,?)";
    ps = con.prepareStatement(sql);
    ps.setString(1, faculty_sub_id);
    ps.setString(2, academic_year);
    ps.setInt(3, faculty_id);
    ps.setString(4, subject_code);
    
    res = ps.executeUpdate();
    
    if(res == 0)
    {
         out.print("Pair already added.");
            response.sendRedirect("Admin_add_faculty_subject.jsp");
    }
    %>
    <h3>
        <% out.print("You have successfuly added pair.");
            response.sendRedirect("Admin_add_faculty_subject.jsp");
        %></h3>
        
        <%
  }
  catch(Exception e)
  {
      %>
      <p> <%System.out.print(e);%> </p>
      <% 
  }
%>
</body>
</html>