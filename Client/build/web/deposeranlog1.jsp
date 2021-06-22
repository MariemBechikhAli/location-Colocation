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
          String titre=request.getParameter("titre");
         String adrlog=request.getParameter("adr");
         String type=request.getParameter("type");
          String surface=request.getParameter("surface");
          String nb_piece=request.getParameter("nbr");
          String meuble=request.getParameter("meuble");
          String loyer=request.getParameter("prix");
          String caution=request.getParameter("caution");
          String description=request.getParameter("Description");
          String photo=request.getParameter("photo");
          String TV=request.getParameter("TV");
          String Ascenseur=request.getParameter("Ascenseur");
          String sdb=request.getParameter("sdb");
          String WiFi=request.getParameter("WiFi");
          String Chaufage=request.getParameter("Chaufage");
          String Balcon=request.getParameter("Balcon");
          String Climatisation=request.getParameter("Climatisation");
          String machine=request.getParameter("machine");
          String Terrasse=request.getParameter("Terrasse");
          String Parking=request.getParameter("Parking");
          String Piscine=request.getParameter("Piscine");
          String Jardin=request.getParameter("Jardin");
          String longi=request.getParameter("long");
          String lat = request.getParameter("lat");
         
          String etat="Active";
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
 Date date = new Date();
          String idab = session.getAttribute("id").toString();
          try{
            Connexion C= new Connexion ();
        String req="insert into annoncelogement values(null,'"+titre+"','"+adrlog+"','"+type+"',"+surface+","+nb_piece+",'"+meuble+"','"+description+"',"+loyer+","+caution+",'"+photo+"','"+idab+"','"+etat+"','"+dateFormat.format(date)+"','"+WiFi+"','"+TV+"','"+Climatisation+"','"+Parking+"','"+Ascenseur+"','"+Chaufage+"','"+machine+"','"+Piscine+"','"+sdb+"','"+Balcon+"','"+Terrasse+"','"+Jardin+"','"+longi+"','"+lat+"')"; 
    System.out.print(req);
        C.Ajout(req);
        response.sendRedirect("index_annonceur.jsp");
          System.out.print("succes!");
          }catch(Exception e){System.out.print(e.toString());
          }
        %>
    </body>
</html>
