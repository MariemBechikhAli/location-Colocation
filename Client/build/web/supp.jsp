<%-- 
    Document   : supp
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
  String req="update message set confirml='"+con+"' where idme="+idms;
  C.modifier(req);
  System.out.print(req);
   response.sendRedirect("messageloc.jsp");
       }catch(Exception e){}
%>     
    </body>
</html>
