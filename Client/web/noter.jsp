<%-- 
    Document   : noter
    Created on : 21 juin 2019, 19:54:23
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
           try{
        Connexion C = new Connexion ();
            String l1=request.getParameter("1");
int idanlog =Integer.parseInt ( request.getParameter("idannance"));
            String id =session.getAttribute("id").toString();
            String req="insert into note values(null,'"+l1+"',"+idanlog+","+id+",null)";
     System.out.print (req);
            C.Ajout(req);

    response.sendRedirect("detailsloc.jsp?idanlog1="+idanlog);
            }catch (Exception e )
            {System.out.print(e.toString());
            }  
    %>

    </body>
</html>
