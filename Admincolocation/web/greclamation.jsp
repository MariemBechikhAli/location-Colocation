<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.Connexion"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>Creative - Bootstrap Admin Template</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- full calendar css-->
  <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
  <link href="assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
  <!-- easy pie chart-->
  <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
  <!-- owl carousel -->
  <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
  <link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
  <!-- Custom styles -->
  <link rel="stylesheet" href="css/fullcalendar.css">
  <link href="css/widgets.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />
  <link href="css/xcharts.min.css" rel=" stylesheet">
  <link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
  <!-- =======================================================
    Theme Name: NiceAdmin
    Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>

<body>
  <!-- container section start -->
  <section id="container" class="">


    <header class="header dark-bg">
      <div class="toggle-nav">
        <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
      </div>

      <!--logo start-->
    <a href="index.jsp" class="logo">Colocation <span class="lite">.tn</span></a>
      <!--logo end-->
 
      <div class="nav search-row" id="top_menu">
        <!--  search form start -->
        <ul class="nav top-menu">
          <li>
            <form class="navbar-form">
              <input class="form-control" placeholder="Rechercher" type="text">
            </form>
          </li>
        </ul>
        <!--  search form end -->
      </div>

      <div class="top-nav notification-row">
        <!-- notificatoin dropdown start-->
        <ul class="nav pull-right top-menu">

          
          <!-- alert notification end-->
          <!-- user login dropdown start-->
          <%
                    String id = session.getAttribute("id").toString();
                      String nom="";
                       String prenom="";
                       String photo="";
                      try{
                  Connexion C = new Connexion();
                    String req=" select * from administrateur where idAdmin="+id;
                   System.out.print("index admin "+req);  
                     ResultSet rs = C.recherche(req);
                   while(rs.next()){
                         nom = rs.getString(3);
                          prenom = rs.getString(4);
                           photo = rs.getString(7);
                           
                     }
                  }
                    catch(Exception e)
                            {}
                      %>
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="img/<%=photo%> "width="50">                            </span>
                            <span class="username"><%=nom%> <%=prenom%></span>
                            <b class="caret"></b>            </a>
            <ul class="dropdown-menu extended logout">
              <div class="log-arrow-up"></div>
              <li class="eborder-top">
                <a href="profile.jsp"><i class="icon_profile"></i> Mon Profil</a>              </li>
             
              <li>
                <a href="deconnexion.jsp"><i class="icon_key_alt"></i> Deconnéxion</a>              </li>
            </ul>
          </li>
          <!-- user login dropdown end -->
        </ul>
        <!-- notificatoin dropdown end-->
      </div>
    </header>
    <!--header end-->

    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        
        <ul class="sidebar-menu">
            <li class="active">  <span >
               <img alt="" src="img/<%=photo%> "width="178">     </span> 
                 
            <a class="" href="profile.jsp">
              <i class="icon_adjust-vert"></i>
              <span class="username"><%=nom%> <%=prenom%></span>     </li></a>
          <li class="active">
            <a class="" href="gcompte.jsp">
                          <i class="icon_house_alt"></i>
                          <span>G. des comptes </span>            </a>          </li>
          <li class="sub-menu">
            <a href="gannonce.jsp" class="">
                          <i class="icon_document_alt"></i>
                          <span>G. des annonces </span></a>          </li>
        
          <li>
            <a class="" href="greclamation.jsp">
                          <i class="icon_genius"></i>
          <span>G. des Reclamation </span></a></li>
		    <li class="active">
            <a class="" href="consulterstat.jsp">
                          <i class="icon_house_alt"></i>
                          <span>Consulter Statistiques </span>            </a>          </li>
          <li>
            <ul class="sub">
              <li><a class="" href="profile.html">Profile</a></li>
                        <li><a class="" href="login.html"><span>Login Page</span></a></li>
                        <li><a class="" href="contact.html"><span>Contact Page</span></a></li>
                        <li><a class="" href="blank.html">Blank Page</a></li>
                        <li><a class="" href="404.html">404 Error</a></li>
            </ul>
          </li>
        </ul>
        <!-- sidebar menu end--></div>
    </aside>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
	  <div class="row">
          <div class="col-lg-12">
                        <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.jsp">Accueil</a></li>
            </ol>
          </div>
        </div>
		
        <!--overview start-->
        
        <!-- javascripts -->
        <script src="js/jquery.js"></script>
  <script src="js/jquery-ui-1.10.4.min.js"></script>
  <script src="js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
  <!-- bootstrap -->
  <script src="js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- charts scripts -->
  <script src="assets/jquery-knob/js/jquery.knob.js"></script>
  <script src="js/jquery.sparkline.js" type="text/javascript"></script>
  <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
  <script src="js/owl.carousel.js"></script>
  <!-- jQuery full calendar -->
 
  <h1><em><strong>Gestion de Reclamations </strong></em></h1>
             
              <%   try{
   Connexion C1 = new Connexion ();
   String req="select * from reclamation";
    
ResultSet rs =C1.Afficher(req);

%>
 <div>
 <section class="panel">
<table  class="table">
                <thead>
                  <tr>
                       <th width="150"> <i class="icon_calendar"></i> Date </th>
                       <th width="200" > <i class="icon_error-oct_alt"></i> Reclamation</th>
                         <th width="200" > <i class="icon_error-oct_alt"></i> Locataire</th>
                          <th width="200" > <i class="icon_error-oct_alt"></i> Annonce réclamée</th>
                    <th width="150"> <i class="icon_cogs"></i>Action</th>
                  </tr>
                </thead>
                <tbody>
 <%  while(rs.next())
                    { out.print("<tr> <td>"+rs.getString(2)+"<td>"+rs.getString(3)+"<td>"+rs.getString(4)+"<td>"+rs.getString(6)+"<td>");  
%>
      <div class="btn-group">
        <a class="btn btn-danger" href="suup.jsp?id=<%=rs.getString(1)%>"> <i class="icon_trash" title="Supprimer"></i></a>
      </div>
<%
    }
} catch(Exception e)

{ System.out.println(e.toString());}   
%>
</tbody>
    </table>
    </section>
</body>

</html>
