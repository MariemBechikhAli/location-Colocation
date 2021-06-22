<%-- 
    Document   : ajoutermsgdetails
    Created on : 20 juin 2019, 01:28:48
    Author     : Maryem
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.Connexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
       <% 
            try{
       Connexion C = new Connexion ();
        String message=request.getParameter("message");
        int idanlog=Integer.parseInt (request.getParameter("idanlog"));
         DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
         String idan=request.getParameter("idan");
 Date date = new Date();
String idm = request.getParameter("idm");
String confirmL = "non";    
 String id =session.getAttribute("id").toString();
        String req="insert into message values(null,'"+message+"','"+id+"','"+idan+"','"+dateFormat.format(date)+"',null,'"+dateFormat.format(date)+"','"+confirmL+"','"+confirmL+"','"+confirmL+"','"+confirmL+"')";
   C.Ajout(req);
   System.out.print ("messagedetailsloc "+req);
   response.sendRedirect("detailsloc.jsp?idanlog1="+idanlog);
            }catch (Exception e )
            {System.out.print(e.toString());
            }  
        %>
    </body>
</html>
