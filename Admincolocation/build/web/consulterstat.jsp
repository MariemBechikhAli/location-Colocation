<%@page import="java.util.ArrayList"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
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
         
            <ul class="dropdown-menu extended tasks-bar">
              <div class="notify-arrow notify-arrow-blue"></div>
              
              <li>
                <a href="#">
                  <div class="task-info">
                    <div class="desc">Design PSD </div>
                    <div class="percent">90%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                      <span class="sr-only">90% Complete (success)</span>                    </div>
                  </div>
                </a>              </li>
              <li>
                <a href="#">
                  <div class="task-info">
                    <div class="desc">
                      Project 1                    </div>
                    <div class="percent">30%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                      <span class="sr-only">30% Complete (warning)</span>                    </div>
                  </div>
                </a>              </li>
              <li>
                <a href="#">
                  <div class="task-info">
                    <div class="desc">Digital Marketing</div>
                    <div class="percent">80%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                      <span class="sr-only">80% Complete</span>                    </div>
                  </div>
                </a>              </li>
              <li>
                <a href="#">
                  <div class="task-info">
                    <div class="desc">Logo Designing</div>
                    <div class="percent">78%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%">
                      <span class="sr-only">78% Complete (danger)</span>                    </div>
                  </div>
                </a>              </li>
              <li>
                <a href="#">
                  <div class="task-info">
                    <div class="desc">Mobile App</div>
                    <div class="percent">50%</div>
                  </div>
                  <div class="progress progress-striped active">
                    <div class="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                      <span class="sr-only">50% Complete</span>                    </div>
                  </div>
                </a>              </li>
              <li class="external">
                <a href="#">See All Tasks</a>              </li>
            </ul>
          </li>
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
        <!--overview start-->
         <div class="row">
          <div class="col-lg-12">
        
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.jsp">Accueil</a></li>
            </ol>
          </div>
        </div>
        
        <div class="row">
          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="info-box brown-bg">
              <div class="count">
                     <div class="panel-actions">
                <a href="loyer_annonce.jsp" class="btn-setting"> <i class="fa fa-shopping-cart"></i></a>
             
                  <% int nb2=0;
                  int nb3=0;
                  int s1=0;
                      try{
                      Connexion C = new Connexion ();
                      String req="select count(*) from annoncelogement";
                      System.out.print(req);
ResultSet rs=C.Afficher(req);
rs.next();
 
           nb2=rs.getInt(1);
           Connexion C1 = new Connexion ();
                      String req1="select count(*) from annoncecolocataire";
                      System.out.print(req1);
ResultSet rs1=C1.Afficher(req1);
rs1.next();
 
           nb3=rs1.getInt(1);
           s1= nb2+nb3;

                  } catch(Exception e)

{ System.out.println(e.toString());}   
                  %>
                  
                  <%=s1%></div></div>
              <div class="title">Nombre d'annonces</div>
            </div>
            <!--/.info-box-->
            </div>
           
          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="info-box blue-bg">
              
              <div class="count">
                  <div class="panel-actions">
                  <a href="anlog.jsp" class="btn-setting"><i class="fa fa-user"></i></a>
                  <% int nb=0;
                  int nb1=0;
                  int s=0;
                      try{
                      Connexion C = new Connexion ();
                      String req="select count(*) from annonceur";
                      System.out.print(req);
ResultSet rs=C.Afficher(req);
rs.next();
 
           nb=rs.getInt(1);
           Connexion C1 = new Connexion ();
                      String req1="select count(*) from locataire";
                      System.out.print(req1);
ResultSet rs1=C1.Afficher(req1);
rs1.next();
 
           nb1=rs1.getInt(1);
           s= nb+nb1;

                  } catch(Exception e)

{ System.out.println(e.toString());}   
                  %>
                  
                  <%=s%>
                  </div></div>
              <div class="title">Nombre d'utilisateurs</div>
            </div>
            <!--/.info-box-->
          </div>
          <!--/.col-->

          
          <!--/.col-->

         
                  
          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="info-box dark-bg">
                <div class="count">
           <div class="panel-actions">
                    <a href="reclamation.jsp" class="btn-setting">     
         <i class="fa fa-exclamation-triangle"></i></a>
              
                  <% int nb4=0;
                  
                      try{
                      Connexion C = new Connexion ();
                      String req="select count(*) from reclamation";
                      System.out.print(req);
ResultSet rs=C.Afficher(req);
rs.next();
 
           nb4=rs.getInt(1);
     
                  } catch(Exception e)

{ System.out.println(e.toString());}   
                  %>
                  <%=nb4%>
           </div></div>
              <div class="title">Réclamations</div>
            </div>
            <!--/.info-box-->
          </div>
          <!--/.col-->

             
          <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <div class="info-box green-bg">
                <div class="count">
                    <div class="panel-actions">
                        <a href="consulterstat.jsp" class="btn-setting">    <i class="fa fa-cubes"></i></a>
             
                  <% int nb5=0;
                  
                      try{
                      Connexion C = new Connexion ();
                      String req="select count(*) from contrat";
                      System.out.print(req);
ResultSet rs=C.Afficher(req);
rs.next();
 
           nb5=rs.getInt(1);
     
                  } catch(Exception e)

{ System.out.println(e.toString());}   
                  %>
                  <%=nb5%></div></div>
              <div class="title">Total des contrats créé</div>
            </div>
            <!--/.info-box-->
          </div>
          <!--/.col-->
  
        </div>
          
</div>
             
       


       
        <!-- statics end -->


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
  <script src="js/fullcalendar.min.js"></script>
    <!-- Full Google Calendar - Calendar -->
    <script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
    <script src="js/calendar-custom.js"></script>
    <script src="js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="js/jquery.customSelect.min.js"></script>
    <script src="assets/chart-master/Chart.js"></script>

    <!--custome script for all page-->
    <script src="js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="js/sparkline-chart.js"></script>
    <script src="js/easy-pie-chart.js"></script>
    <script src="js/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="js/jquery-jvectormap-world-mill-en.js"></script>
    <script src="js/xcharts.min.js"></script>
    <script src="js/jquery.autosize.min.js"></script>
    <script src="js/jquery.placeholder.min.js"></script>
    <script src="js/gdp-data.js"></script>
    <script src="js/morris.min.js"></script>
    <script src="js/sparklines.js"></script>
    <script src="js/charts.js"></script>
    <script src="js/jquery.slimscroll.min.js"></script>
    <script>
      //knob
      $(function() {
        $(".knob").knob({
          'draw': function() {
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
        $("#owl-slider").owlCarousel({
          navigation: true,
          slideSpeed: 300,
          paginationSpeed: 400,
          singleItem: true

        });
      });

      //custom select box

      $(function() {
        $('select.styled').customSelect();
      });

      /* ---------- Map ---------- */
      $(function() {
        $('#map').vectorMap({
          map: 'world_mill_en',
          series: {
            regions: [{
              values: gdpData,
              scale: ['#000', '#000'],
              normalizeFunction: 'polynomial'
            }]
          },
          backgroundColor: '#eef3f7',
          onLabelShow: function(e, el, code) {
            el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
          }
        });
      });
    </script>
</body>

</html>
