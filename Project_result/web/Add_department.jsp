<%-- 
    Document   : Ass_department
    Created on : 16 Sep, 2019, 2:42:44 PM
    Author     : rutu
    User type 'Admin' only can access this page.
    This is used for adding new department into 'Course' table.
--%>
<jsp:include page="header.jsp" >
<jsp:param name="discription" value="Shivajinagar, Pune 5." />
</jsp:include>
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
           <a href="Departmers.jsp" class="btn">Back</a> 
        <%
    }
    catch(Exception e)
    {
        //out.println(e);
    }
    }
    
    else{
%><jsp:forward page="Admin_login.jsp"></jsp:forward><%
    }
    %>


    <form action="Add_department_jsp.jsp" method="post">
        <div class="form-style" align="center">
            <h2>Add Department/Course</h2>
            <table width="400">
                <tr>
                    <td width="125">Department:<span class="required">*</span></td>
                    <td width="180"><div class="input-group"><input type="text" name="new_dept" id="new_dept" placeholder="Department" required></div></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <a href="Departments.jsp" class="btn">Back</a>
                        <input type="submit" value="Submit" class="btn">
                        <input type="reset" value="Reset" class="btn">
                    </td>
                </tr>            
            </table>
        
    </form>
    </div>
    <div class="footer">
    <%@include file="parts/footer.jsp" %>
    </div>
    </body>
</html>
