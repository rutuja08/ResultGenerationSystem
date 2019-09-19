<%-- 
    Document   : Ass_department
    Created on : 16 Sep, 2019, 2:42:44 PM
    Author     : rutu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

<%@page import="java.sql.*" %>
<%@page import="bean.*" %>
      
    </head>
    <body>

<%  
    if(session.getAttribute("admin_name")!=null)
    {    
    
    Connection con_r;
    PreparedStatement ps;
    String new_dept= (String)request.getParameter("new_dept");
    
    con_r=ConnectionProvider.getCon();
    String sql ="select * from `Course`";
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


        <form>
            <table>
                <tr><th>Department/Course Name</th></tr>
                <tr><td></td></tr>
            </table>
            
            
            Enter New Department: <input type="text" name="new_dept">
            <button formaction="Add_department_jsp.jsp" onclick="function addDepart()">ADD</button>
            <button formaction="#"  >CLEAR</button>
            <button formaction="Departments.jsp"  >BACK</button>
        </form>
    </body>
</html>
