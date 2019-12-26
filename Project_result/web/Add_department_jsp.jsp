<%-- 
    Document   : Add_department
    Created on : 16 Sep, 2019, 2:09:09 PM
    Author     : rutu
    New department is added into database using this table
--%>
<jsp:include page="header.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="bean.*" %>
<html>
    <head></head>
    <body>
        <div class="form-style" align="center">
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
    if(row>0)
    {
        %>
        <script type="text/javascript">
            alert("Department Successfully Added");
            setTimeout("location.href='Departments.jsp';",1);
        </script>
          
        <%
    }
    }
    catch(Exception e)
    {
        out.println(e);
    }
    }
    
    else{
        %>
        <script type="text/javascript">
            alert("Cannot add Department as wrong login");
            setTimeout("location.href='Departments.jsp';",1);
        </script>
        <%
    }
    %>
        </div>
        <%@include file="parts/footer.jsp" %>
    </body>
</html>


