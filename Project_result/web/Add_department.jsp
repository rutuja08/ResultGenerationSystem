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
        <script type="text/javascript">
            function addDepart()
            {
                alert("Add");
            }
        </script>   
      
    </head>
    <body>
        <form>
            Enter New Department: <input type="text" name="new_dept">
            <button formaction="Add_department_jsp.jsp" onclick="function addDepart()">ADD</button>
            <button formaction="#"  >CLEAR</button>
            <button formaction="Departments.jsp"  >BACK</button>
        </form>
    </body>
</html>
