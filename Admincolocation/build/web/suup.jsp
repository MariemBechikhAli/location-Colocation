<%-- 
    Document   : supp
    Created on : 12 févr. 2019, 13:59:24
    Author     : Maryem
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           String id= request.getParameter("id");
            try{
    Connection conn=null;
    Class.forName ("com.mysql.jdbc.Driver").newInstance()  ; 
    conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/base?autoReconnect=true&useSSL=false","root","admin");
    String req="delete from reclamation where idrec='"+id+"' ";
    Statement stmt=conn.createStatement();
    stmt.executeUpdate(req);
    response.sendRedirect("greclamation.jsp");
    }catch(Exception e){ System.out.println(e.toString());}   
    %>
    </body>
</html>
