
<%@page import="Controller.Connexion"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html><head>
<meta charset="utf-8">

        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Colocation.tn</title>
<!-- Stylesheets -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Roboto+Mono:300,400,500"> 
        <link rel="stylesheet" href="fonts/icomoon/style.css">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<!--Favicon-->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link href="css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
 <link rel="stylesheet" href="css/magnific-popup.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
   <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
<style type="text/css">
<!--
.Style4 {
	font-size: 16px;
	font-weight: bold;
	color: #CC3333;
}
-->
 /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      <!--
.img-logo {
width:250px;
height:100px;
}
.img-logo1 {
width:200px;
height:100px;
}
</style>
</head>

<body>
    
    
    
<div class="page-wrapper">
 	
    <!-- Preloader -->
    <div class="preloader"></div>
 	
    <!-- Main Header-->
    <header class="main-header">
        
        <!-- Header Top -->
    	<div class="header-top">
        	<div class="auto-container clearfix">
            	<!--Top Left-->
            	<div class="top-left pull-left">
                	
                    <!--Social Icon-->
                	
                    
                     
                </div>
                
                <!--Top Right-->
            	
            </div>
        </div>
        <!-- Header Top End -->
        
        <!--Header-Upper-->
        <div class="header-upper">
        	<div class="auto-container">
            	<div class="clearfix">
                	
                	<div class="pull-left logo-outer">
                    	<div class="img-logo"><a href="Accueil.html"><img src="images/logo1.png" ></a></div>
                    </div>
                    
                    <div class="nav-outer clearfix">
                        <!-- Main Menu -->
                        <nav class="main-menu">
                            <div class="navbar-header">
                                <!-- Toggle Button -->    	
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>                                </button>
                            </div>
                            
                        <div class="navbar-collapse collapse clearfix">
                             <ul class="navigation clearfix">
                                       <li class=" dropdown"><a href="Accueil.html">Accueil</a> </li>
                                <li ><a href="Choix AutoEcole.jsp">Choix AutoEcole</a></li>
                                <li ><a href="Blog.html">Blog</a> </li>
                                <li ><a href="Contactez-nous1.html">Contactez-nous</a> </li>
                                 <li ><a href="Connection.html">Se connecter </a> </li>
                                   <li ><a href="Inscription1.html">S'inscrire</a> 
                                       
                              </li>
                         </ul>
                        </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!--End Header Upper-->
        
        <!--Sticky Header-->
        <div class="sticky-header">
        	<div class="auto-container clearfix">
            	<!--Logo-->
            	<div class="logo pull-left">
                	<a href="Accueil.html" ><img src="images/logo1.png" class="img-logo"></a>
                </div>
                
                <!--Right Col-->
                <div class="right-col pull-right">
                	<!-- Main Menu -->
                    <nav class="main-menu">
                        <div class="navbar-header">
                            <!-- Toggle Button -->    	
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                         <div class="navbar-collapse collapse clearfix">
                           <ul class="navigation clearfix">
                                       <li class=" dropdown"><a href="Accueil.html">Accueil</a> </li>
                                <li ><a href="Choix AutoEcole.jsp">Choix AutoEcole</a></li>
                                <li ><a href="Blog.html">Blog</a> </li>
                                <li ><a href="Contactez-nous1.html">Contactez-nous</a> </li>
                                 <li ><a href="Connection.html">Se connecter </a> </li>
                                   <li ><a href="Inscription1.html">S'inscrire</a> 
                                       
                              </li>
                         </ul>
                        </div>

                    </nav><!-- Main Menu End-->
                </div>
                
            </div>
        </div>
        <!--End Sticky Header-->
    
    </header>
    <!--End Main Header -->
    
    <!--Page Title-->
    <section class="page-title" style="background-image:url(images/background/5.png)">
    	<div class="auto-container">
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
         

            <br>
            <br>
            <ul class="bread-crumb clearfix">
                <li><a href="Accueil.html">Accueil</a></li>
           
                <li class="active">CHOISIR MON AUTO ECOLE</li>
            </ul>
        </div>
    </section>
    <!--End Page Title-->
    
     <!--Instructor Section-->
    <section class="instructor-section instructor-team">
    	<div class="auto-container">
        	
            <div class="row clearfix">
            
            	<!--Team Member-->
            	
                        	
             <%
                                     Connexion C3 = new  Connexion ();
  String  longitude="",atitude="";
                String q = "select * from map"  ;
 ResultSet rs3=C3.Afficher(q);
               
      while(rs3.next()){
                  ;
          longitude=rs3.getString(2);
          atitude=rs3.getString(3);
        
      } %>
   
       
       
            <p align="center" class="style1"> </p>
       <div class="info-block" >
       <div class="inner">
           <form action="">
           <table><tr><td> 
           <div class="featured-block-two col-md-4 col-sm-6 col-xs-12">
       <div class="info-block" >
           <div class="inner"><img src="images/"> </div>  </div></div>
                   </td><td>
           
           
                
                   </td><td>
                    
                   </td></tr></table></form>
        
                      <div class="row form-group">
                <div class="col-md-12">
                  <label class="font-weight-bold">Identifiant de l'agence:</label>
                </div>
              </div>
          <div class="row form-group">
                <div class="col-md-12">
                  <label class="font-weight-bold">Matricule fiscale :</label>
                </div>
              </div>
                      <div class="row form-group">
                <div class="col-md-12">
                  <label class="font-weight-bold">Nom de l'agence:</label>
                </div>
              </div>
                
                                 <div class="row form-group">
                <div class="col-md-12">
                  <label class="font-weight-bold">Ville :</label>
                </div>
              </div>
                
                     <div class="row form-group">
                <div class="col-md-12">
                  <label class="font-weight-bold">Adresse :</label> 
                </div>
              </div>
                    
                     <div class="row form-group">
                <div class="col-md-12">
                  <label class="font-weight-bold">T�l�phone :</label> 
                </div>
              </div>
                  <div class="row form-group">
                <div class="col-md-12">
                  <label class="font-weight-bold">Cat�gorie :</label>
                </div>
              </div>
                
                <div class="row form-group">
                <div class="col-md-12">
                  <label class="font-weight-bold">Email :</label>
                </div>
              </div>
                
                
                <script>

      function initMap() {
        var myLatLng = {lat: <%=atitude%>, lng: <%=longitude%>};

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 10,
          center: myLatLng
        });

        var marker = new google.maps.Marker({
          position: myLatLng,
          map: map,
          title: 'Hotel ...'
        });
      }
    </script>
                
            <div id="map"></div>
            
             
       </div>    </div>
                 <section class="price-section alternate">
    	<div class="auto-container">
        	<!--Sec Title-->
            <div class="sec-title centered">
            	
                <h2>Nos prix</h2>
                <div class="separator"></div>
            </div>
            <div class="row clearfix">
            	<!--Price Column-->
                
                <form action="bech naaml boite dialog">
                
                    <div class="price-column col-md-5 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<div class="price-title">Offre 1: Code</div>
                        <div class="total-price"><sup> </sup>DT</div>
                         <ul>
                             <li>Nombre de chapitre : 6 Chapitres </li>
                        	<li>Dur�e de l'abonnement : 2 Semaines  </li>
                            <li>Acc�s,periode formation : 24H/24H</li>
                            
                        </ul>
                          <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="S'abonner " class="btn btn-primary  py-2 px-4">
                  
                </div>
              </div>   
                    </div>
                </div>
                         
                          <div class="price-column col-md-5 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<div class="price-title">Offre 2: Code</div>
                        <div class="total-price"><sup> </sup>DT</div>
                        <ul>
                            <li>Nombre de chapitre : 6 Chapitres </li>
                        	<li>Dur�e de l'abonnement : 1 Mois  </li>
                            <li>Acc�s,periode formation : 24H/24H</li>
                            
                        </ul>
                            
                          <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="S'abonner " class="btn btn-primary  py-2 px-4">
                  
                </div>
              </div>   
                    </div>
                </div>
                         
                <div class="price-column col-md-5 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<div class="price-title">Offre 1: Conduite</div>
                        <div class="total-price"> <sup>DT</sup></div>
                        
                        <ul>
                        	<li>Nombre de s�ance : 2H/Jour</li>
                            <li>Dur�e de l'abonnement : 10 S�ances </li>
                            
                        </ul>
                         <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="S'abonner " class="btn btn-primary  py-2 px-4">
                  
                </div>
              </div>
                    </div>
                </div>
                
               <div class="price-column col-md-5 col-sm-6 col-xs-12">
                	<div class="inner-box">
                    	<div class="price-title">Offre 2: Conduite</div>
                        <div class="total-price"> <sup>DT</sup></div>
                        
                        <ul>
                        	<li>Nombre de s�ance : 2H/Jour</li>
                            <li>Dur�e de l'abonnement : 20 S�ances </li>
                            
                        </ul>
                         <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="S'abonner " class="btn btn-primary  py-2 px-4">
                  
                </div>
              </div>
                    </div>
                </div>
          
                
             
               </form> </div> 
    </section>
                
       </div></div>
           
          
                
            <!-- Styled Pagination -->
                     
        </div>
          

    <!--End Instructor Section-->
    

    <!--Main Footer-->
    <footer class="main-footer">
    	<!--Widgets Section-->
    	<div class="widgets-section">
        	<div class="auto-container">
            	<div class="row clearfix">
                	<!--Big Column-->
                	<div class="big-column col-md-6 col-sm-12 col-xs-12">
                    	<div class="row clearfix">
                        
                        	<!--Footer Column-->
                        	<div class="footer-column col-md-6 col-sm-6 col-xs-12">
                            	<!--About Widget-->
                                <div class="footer-widget about-widget">
                                	<div class="img-logo1">
                                    	<a href="Accueil.html"><img src="images/logo1.png" alt="" /></a>
                                    </div>
                                	<div class="widget-content">
                                    	<div class="bold-text">Notre Auto Ecole!</div>
                                        <div class="text">     Concentrer sur votre r�ussite    </div>
                                </div>
                            </div>
                            </div>
                        
                        </div>
                    </div>
                    
                    <!--Big Column-->
                    <div class="big-column col-md-6 col-sm-12 col-xs-12">
                    	<div class="row clearfix">
                        	
                            <!--Footer Column-->
                        	<div class="footer-column col-md-6 col-sm-6 col-xs-12">
                            	<!--Info Widget-->
                                <div class="footer-widget info-widget">
                                	<h2>Rester en contact</h2>
                                    <div class="widget-content">
						<ul class="list-style-one">
                                        		<li><span class="icon flaticon-location-pin"></span>Tunisie</li>
                                            <li><span class="icon flaticon-technology-3"></span>+(216)92 250 711  </li>
                                            <li><span class="icon flaticon-technology-3"></span>+(216)56 603 911 </li>
                                            <li><span class="icon flaticon-interface"></span>autotun@gmail.com</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            
                            <!--Footer Column-->
                        	<div class="footer-column col-md-6 col-sm-6 col-xs-12">
                            	<div class="footer-widget subscribe-widget">
                                    <h2>Nouveau message</h2>
                                    <div class="widget-content">
                                        <div class="newsletter-form">
                                            <form method="post" action="Contactez-nous1.html">
                                                <div class="form-group">
                                                    <input type="text" name="nom" value="" placeholder="Nom *" required="">
                                                </div>
                                                <div class="form-group">
                                                    <input type="email" name="email" value="" placeholder="Email " required="">
                                                </div>
                                                <div class="form-group">
                                                    <button type="submit" class="theme-btn btn-style-one">S'abonner</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
							</div>
                            
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <!--Footer Bottom-->
        <div class="footer-bottom">
        	<div class="auto-container">
            	<div class="row clearfix">
                	<div class="col-md-6 col-sm-12 col-xs-12">
                    	<div class="copyright">&copy; AutoTun 2019 AutoEcole | Tous Les droits reserv�s</div>
                    </div>
                    <div class="col-md-6 col-sm-12 col-xs-12">
                    	<ul class="social-links-two">
                            <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                    
                            <li><a href="#"><span class="fa fa-google-plus"></span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--End Main Footer-->
    
    

<!--End pagewrapper-->

<!--Scroll to top-->
<div class="scroll-to-top scroll-to-target" data-target=".main-header"><span class="icon fa fa-long-arrow-up"></span></div>

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.fancybox.pack.js"></script>
<script src="js/jquery.fancybox-media.js"></script>
<script src="js/owl.js"></script>
<script src="js/appear.js"></script>
<script src="js/wow.js"></script>
<script src="js/script.js"></script>


  <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDsolkqSTNaW0_azXoMXu0KcI215xkaspY&callback=initMap">
    </script>
</body>

</html>
