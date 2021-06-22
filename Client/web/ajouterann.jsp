


<%@page import="Controller.Connexion"%>
<%@page import="java.sql.DriverManager"%>
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
          String date_naiss=request.getParameter("date");
          String sexe=request.getParameter("sexe");
          String activite=request.getParameter("activite");
          String photo=request.getParameter("photo");
          String mail=request.getParameter("email");
          String adr=request.getParameter("region");
          String tel=request.getParameter("tel");
          String mp=request.getParameter("passe");
         String mp1=request.getParameter("confirm");
          String qualite=request.getParameter("qualite");
          String etat="active";
          try{
             Connexion C= new Connexion ();
      if (mp.equals(mp1)) 
            {
            String req="insert into annonceur values(null,'"+nom+"','"+prenom+"','"+date_naiss+"','"+sexe+"','"+activite+"','"+photo+"','"+adr+"','"+ tel+"','"+mail+"','"+mp+"','"+etat+"','"+qualite+"')"; 
         System.out.print(req);
            C.Ajout(req);
         response.sendRedirect("connection?e-mail="+mail+"&password="+mp);}
               
            else
            {  response.sendRedirect("s'inscrire_err_mdpann.jsp");}
           
             }catch(Exception e){
 
               response.sendRedirect("s'inscrire_erreurann.jsp");
          }
      
        %>

       
    </body>
</html>
