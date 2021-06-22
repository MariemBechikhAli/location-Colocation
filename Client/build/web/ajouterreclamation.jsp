<%-- 
    Document   : ajouterreclamation
    Created on : 21 juin 2019, 16:34:44
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
        String Reclamer=request.getParameter("reclamer");
         DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
 Date date = new Date();
int idanlog =Integer.parseInt ( request.getParameter("idannance"));
 String id =session.getAttribute("id").toString();
        String req="insert into reclamation values(null,'"+dateFormat.format(date)+"','"+Reclamer+"',"+idanlog+",null,"+id+")";
   C.Ajout(req);
   System.out.print(req);
    response.sendRedirect("detailsloc.jsp?idanlog1="+idanlog);
            }catch (Exception e )
            {System.out.print(e.toString());
            }  
        %>
    </body>
</html>
