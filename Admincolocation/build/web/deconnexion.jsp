<%-- 
    Document   : deconnexion
    Created on : 9 avr. 2019, 16:25:15
    Author     : Maryem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           session.invalidate();
            
            response.sendRedirect("login.jsp");%>
    </body>
</html>
