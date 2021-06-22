<%-- 
    Document   : update_profil_loc
    Created on : 24 juin 2019, 07:59:13
    Author     : Maryem
--%>


<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.DateFormat"%>
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

            try {
                String id = session.getAttribute("id").toString();
                String nom = request.getParameter("nom");
                String prenom = request.getParameter("prenom");
                String date_naiss = request.getParameter("date");
                String adr = request.getParameter("adr");
                String act = request.getParameter("activite");
                String sexe = request.getParameter("sexe");
                String email = request.getParameter("email");
                String tel = request.getParameter("tel");
                String photo = request.getParameter("photo");
                String qualite = request.getParameter("qualite");
                String description = request.getParameter("description");
                String titre = request.getParameter("titre");
                int idc = Integer.parseInt(request.getParameter("idancoloc"));

                DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
 Date date = new Date();
                Connexion C = new Connexion();
                String req = "update annoncecolocataire set   nom='" + nom + "',prenom='" + prenom + "', date_n='" + date_naiss + "',sexe='" + sexe + "',activite='" + act + "',region='" + adr + "',photo='" + photo + "',telephone=" + tel + ",email='" + email + "',vous='"+ qualite+"', date_pub='" + dateFormat.format(date) + "',etat='Active', idAn="+id+",description='" + description + "' ,titre='" + titre + "' where idancoloc=" + idc;
                System.out.print(req);
                C.modifier(req);
                response.sendRedirect("mesannoncescoloc.jsp");
            } catch (Exception e) {
                System.out.print(e.toString());

            }
        %>
    </body>
</html>
