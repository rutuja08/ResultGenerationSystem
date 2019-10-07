<%-- 
    Document   : Add_Security_Question
    Created on : 6 Oct, 2019, 3:22:19 PM
    Author     : Mukta
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%@include file="Connection.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String security_question = request.getParameter("security_question");
            String add_sercurity_question_sql = "insert into securityquest(secquest) values(?)";
            PreparedStatement add_sercurity_question_ps=null;
            int result=0;
            
            try
            {
                Class.forName(Connect.DRIVER);
                Connection con = DriverManager.getConnection(Connect.URLR, Connect.USER, Connect.PASS);
                add_sercurity_question_ps = con.prepareStatement(add_sercurity_question_sql);
                add_sercurity_question_ps.setString(1, security_question);
                result = add_sercurity_question_ps.executeUpdate();
                if(result>0)
                {
                    response.sendRedirect("Admin_home.jsp");
                }
                else
                {
                %>
                <script type="text/javascript">
                    alert("Opps! Something went wrong.");
                </script>
                <button type="submit" formaction="Security_Question.jsp" class="btn">Back</button>
                <%
                }
            }
            catch(Exception e)
            {
                
            }
        %>
    </body>
</html>
