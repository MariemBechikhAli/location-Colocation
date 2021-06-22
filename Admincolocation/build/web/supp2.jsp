<%-- 
    Document   : supp
    Created on : 5 mars 2019, 21:21:05
    Author     : Jihen
--%>

<%@page import="java.sql.*"%>
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
        String req="delete from moderateur  where id="+id+""; 
        Statement stmt =conn.createStatement();
        stmt.executeUpdate(req);
        response.sendRedirect("gcompte.jsp");
          }catch(Exception e){System.out.print(e.toString());
          }
         %>
    </body>
</html>
