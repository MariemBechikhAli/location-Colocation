<%-- 
    Document   : supprimer1
    Created on : 12 févr. 2019, 14:00:16
    Author     : Jihen
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    </head>
    <body>
        <%
         String id=request.getParameter("id");
            try{
                  Connection conn=null;
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/base?autoReconnect=true&useSSL=false","root","admin");
        String req="delete from annonceur where idAn="+id+""; 
        Statement stmt =conn.createStatement();
        stmt.executeUpdate(req);
        response.sendRedirect("gcompte.jsp");
          }catch(Exception e){System.out.print(e.toString());
          }
         %>
    </body>
</html>
