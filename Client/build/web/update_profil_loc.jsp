<%-- 
    Document   : update_profil_loc
    Created on : 24 juin 2019, 07:59:13
    Author     : Maryem
--%>


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
                String adr = request.getParameter("region");
                String act = request.getParameter("activite");
                String sexe = request.getParameter("sexe");
                String email = request.getParameter("email");
                String tel = request.getParameter("tel");
                String password = request.getParameter("passe");
                String photo = request.getParameter("photo");
                String cit = request.getParameter("qualite");
                String etat = "active";

                Connexion C = new Connexion();
                String req = "update locataire set nom='" + nom + "',prenom='" + prenom + "', date_naiss='" + date_naiss + "',sexe='" + sexe + "',activite='" + act + "',photo='" + photo + "',adr='" + adr + "',tel=" + tel + ",email='" + email + "',password='" + password + "', etat='" + etat + "', cityon='" + cit + "'  where idloc=" + id;
                System.out.print(req);
                C.modifier(req);
                response.sendRedirect("profilloc.jsp");
            } catch (Exception e) {
                System.out.print(e.toString());

            }
        %>
    </body>
</html>
