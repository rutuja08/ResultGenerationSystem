<%-- 
    Document   : Add_department
    Created on : 16 Sep, 2019, 2:09:09 PM
    Author     : rutu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="bean.*" %>

<%  
    if(session.getAttribute("admin_name")!=null)
    {    
    
    Connection con_r;
    PreparedStatement ps;
    String new_dept= (String)request.getParameter("new_dept");
    
    con_r=ConnectionProvider.getCon();
    String sql ="INSERT INTO `Course`(`course_code`, `course_name`) VALUES (?,?) ";
    ps = con_r.prepareStatement(sql);
    
    try{
        ps.setString(1, null);
    ps.setString(2, new_dept);
    int row= ps.executeUpdate();
    if(row==1)
        out.println("success");
        
        
        %>
        <script type="text/javascript">
            alert("Department Successfully Added");
        </script>
            
        <%
            response.sendRedirect("Admin_home.jsp");
    }
    catch(Exception e)
    {
        out.println(e);
    }
    }
    
    else{
        out.println("Cannot add amenity as wrong login");
%> <jsp:forward page="Admin_login.jsp"></jsp:forward><%
    }
    %>

