<%-- 
    Document   : supp1
    Created on : 20 juin 2019, 02:49:43
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
       <% try{
           String idms=request.getParameter("idms");
          Connexion C = new  Connexion ();
    String con="oui";
  String req="update message set etatl='"+con+"' where idme="+idms;
  System.out.print(req);
  C.modifier(req);
  
   response.sendRedirect("messageann.jsp");
       }catch(Exception e){}
%>     
    </body>
</html>
