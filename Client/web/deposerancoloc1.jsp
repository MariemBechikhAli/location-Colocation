<%@page import="Controller.Connexion"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
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
          String nom=request.getParameter("nom");
          String prenom=request.getParameter("prenom");
         String date_n=request.getParameter("date");
          String sexe=request.getParameter("sexe");
          String activite=request.getParameter("activite");
         String region=request.getParameter("region");
          String photo=request.getParameter("photo");
          String telephone=request.getParameter("telephone");
          String email=request.getParameter("email");
          String vous=request.getParameter("vous");
          String titre=request.getParameter("titre");
          String description=request.getParameter("description");
          String etat="Active";
          DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
 Date date = new Date();
          String idAn = session.getAttribute("id").toString();
          try{
            Connexion C = new Connexion ();
        String req="insert into annoncecolocataire values(null,'"+nom+"','"+prenom+"','"+date_n+"','"+sexe+"','"+activite+"','"+region+"','"+photo+"',"+telephone+",'"+email+"','"+vous+"','"+dateFormat.format(date)+"','"+etat+"',"+idAn+",'"+description+"','"+titre+"')"; 
      System.out.println(req);
        C.Ajout(req);
          response.sendRedirect("mesannoncescoloc.jsp");
          }
          catch(Exception e)
          {
              System.out.print(e.toString());
          }
        %>
    </body>
</html>
