<%-- 
    Document   : supprimer
    Created on : 21 juin 2019, 15:32:10
    Author     : Maryem
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.Connexion"%>
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
            int idc=Integer.parseInt (request.getParameter("idc"));
            String idanlog=request.getParameter("idannance");
          Connexion c = new Connexion ();
            String req="delete from commentaire where idcom="+idc;
            c.supprimer(req);
             response.sendRedirect("index_locataire.jsp");
     }catch(Exception e){System.out.print(e.toString());
                        }%>
    </body>
</html>
