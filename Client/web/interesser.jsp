<%-- 
    Document   : interesser
    Created on : 28 juin 2019, 06:53:54
    Author     : Maryem
--%>

<%@page import="Controller.Connexion"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           try {
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
            Date date = new Date();
      String idloc = session.getAttribute("id").toString();
          //  String idloc = request.getParameter("idloc");
        
            int idancoloc= Integer.parseInt((request.getParameter("idancoloc")));
            Connexion c = new Connexion();
            String req = " insert into interesser values (null,"+idloc+"," + idancoloc + ",'" + dateFormat.format(date) + "')";
            System.out.println("inserer interesser "+req);
            c.Ajout(req);
            response.sendRedirect("annoncecoloc-loc.jsp");
          }catch(Exception e)
          {System.out.print(e.toString());
          }
       %>
    </body>
</html>
