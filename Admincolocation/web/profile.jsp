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

          <!-- task notificatoin start -->
         
          <!-- task notificatoin end -->
          <!-- inbox notificatoin start-->
          
          <!-- inbox notificatoin end -->
          <!-- alert notification start-->
         
          <!-- alert notification end-->
          <!-- user login dropdown start-->
          <%
                    String id = session.getAttribute("id").toString();
                      String nom="";
                       String prenom="";
                       String photo="";
                       String date="";
                       String login="";
                       String mdp="";
                       int idd=0;
                      try{
                  Connexion C = new Connexion();
                    String req=" select * from administrateur where idAdmin="+id;
                   System.out.print("index admin "+req);  
                     ResultSet rs = C.recherche(req);
                   while(rs.next()){
                       login =rs.getString(2);
                         nom = rs.getString(3);
                          prenom = rs.getString(4);
                           date = rs.getString(5);
                           mdp =rs.getString(6);
                           photo = rs.getString(7);
                            idd = rs.getInt(1);
                           
                        
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
              < <li class="eborder-top">
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
               <img alt="" src="img/<%=photo%> "width="210">     </span> 
                 
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
            <h3 class="page-header"><i class="fa fa-user-md"></i> Profile</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.jsp">Accueil</a></li>
             
              <li><i class="fa fa-user-md"><a href="profile.jsp"></i>Profil</li>
            </ol>
          </div>
        </div>
        <div class="row">
          <!-- profile-widget -->
          <div class="col-lg-12">
            <div class="profile-widget profile-widget-info">
              <div class="panel-body">
                <div class="col-lg-2 col-sm-2">
                  <h4><%=nom%> <%=prenom%></h4>
                  <div class="follow-ava">
                    <img src="img/<%=photo%> "width="50"> 
                  </div>
                  <h6>Administrateur</h6>
                  <p>@<%=login%></p>
                 
                  <h6>
                                    
                                    <span><i class="icon_calendar"></i><%=date%></span>
                                   
                                </h6>
                </div>
                
                
               
               
              </div>
            </div>
          </div>
        </div>
        <!-- page start-->
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading tab-bg-info">
                <ul class="nav nav-tabs">
                 
                  <li class="">
                    <a data-toggle="tab" href="#edit-profile">
                                          <i class="icon-envelope"></i>
                                          Modifier mon profil
                                      </a>
                  </li>
                </ul>
              </header>
              <div class="panel-body">
                <div class="tab-content">
                 
                  <!-- profile -->
                  <div id="profile" class="tab-pane">
                    <section class="panel">
                      
                      <div class="panel-body bio-graph-info">
                        <h1>Bio Graph</h1>
                        <div class="row">
                          <div class="bio-row">
                            <p><span>Nom </span><%=nom%> </p>
                          </div>
                          <div class="bio-row">
                            <p><span>Prenom </span><%=prenom%></p>
                          </div>
                          <div class="bio-row">
                            <p><span>Date de naissance</span> <%=date%></p>
                          </div>
                          
                         
                          <div class="bio-row">
                            <p><span>Email </span><%=login%></p>
                          </div>
                          <div class="bio-row">
                            <p><span>Mot de passe </span><%=mdp%></p>
                          </div>
                          
                        </div>
                      </div>
                    </section>
                    <section>
                      <div class="row">
                      </div>
                    </section>
                  </div>
                  <!-- edit-profile -->
                  <div id="edit-profile" class="tab-pane">
                    <section class="panel">
                      <div class="panel-body bio-graph-info">
                        <h1> Mes informations personnelles</h1>
                        <form action="modif.jsp"  class="form-horizontal" role="form">
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Nom</label>
                            <div class="col-lg-6">
                                <input type="text" name="nom" class="form-control" id="f-name" placeholder=" " value="<%=nom%>">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Prenom</label>
                            <div class="col-lg-6">
                              <input type="text" name="prenom" class="form-control" id="l-name" placeholder=" " value="<%=prenom%>">
                            </div>
                          </div>
                          
                         
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Date de naissance</label>
                            <div class="col-lg-6">
                              <input type="date" name="date_naiss" class="form-control" id="b-day" placeholder=" " value="<%=date%>">
                            </div>
                          </div>
                         
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Email</label>
                            <div class="col-lg-6">
                              <input type="e-mail" name="email" class="form-control" id="email" placeholder=" " value="<%=login%>">
                            </div>
                          </div>
                            <div class="form-group">
                            <label class="col-lg-2 control-label">Photo</label>
                            <div class="col-lg-6">
                              <input type="file" name="photo" class="common-input mb-20 form-control" id="mobile" placeholder=" " required="required" value="<%=photo%>">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Mot de passe</label>
                            <div class="col-lg-6">
                              <input type="password" name="password" class="form-control" id="mobile" placeholder=" " value="<%=mdp%>">
                            </div>
                          </div>
                             
                          

                          <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                 <form action="modifier_profil">
                                     <button type="submit" class="btn btn-primary">Enregidtrer</button>
                                 </form>
                              <button type="button" class="btn btn-danger">Annuler</button>
                            </div>
                          </div>
                        </form>
                      </div>
                    </section>
                  </div>
                </div>
              </div>
            </section>
          </div>
        </div>

        <!-- page end-->
      </section>
    </section>
    <!--main content end-->
    <div class="text-right">
      <div class="credits">
          <!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
         
        </div>
    </div>
  </section>
  <!-- container section end -->
  <!-- javascripts -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- jquery knob -->
  <script src="assets/jquery-knob/js/jquery.knob.js"></script>
  <!--custome script for all page-->
  <script src="js/scripts.js"></script>

  <script>
    //knob
    $(".knob").knob();
  </script>


</body>

</html>
