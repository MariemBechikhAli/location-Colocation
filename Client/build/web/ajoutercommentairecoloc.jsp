<%-- 
    Document   : ajoutercommentaire
    Created on : 21 juin 2019, 14:06:20
    Author     : Maryem
--%>

<%@page import="Controller.Connexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            try{
        Connexion C = new Connexion ();
        String Commentaire=request.getParameter("Commentaire");
         DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
 Date date = new Date();
String idcoloc = request.getParameter("idannance");
 String id =session.getAttribute("id").toString();
 String req="insert into commentaire values(null,'"+Commentaire+"','"+dateFormat.format(date)+"',null,'"+id+"','"+idcoloc+"')";
System.out.print(req);  
 C.Ajout(req);
    response.sendRedirect("detailscoloc-loc.jsp?idancoloc="+idcoloc);
            }catch (Exception e )
            {System.out.print(e.toString());
            }  
        %>
    </body>
</html>
