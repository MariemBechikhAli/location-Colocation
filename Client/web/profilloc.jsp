<%@page import="Controller.Connexion"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
   <title>Homeland &mdash; Colorlib Website Template</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Roboto+Mono:300,400,500"> 
   <link rel="stylesheet" href="fonts/icomoon/style.css">
   <link rel="stylesheet" href="css/bootstrap.min.css">
   <link rel="stylesheet" href="css/magnific-popup.css">
   <link rel="stylesheet" href="css/jquery-ui.css">
   <link rel="stylesheet" href="css/owl.carousel.min.css">
   <link rel="stylesheet" href="css/owl.theme.default.min.css">
   <link rel="stylesheet" href="css/bootstrap-datepicker.css">
   <link rel="stylesheet" href="css/mediaelementplayer.css">
   <link rel="stylesheet" href="css/animate.css">
   <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
   <link rel="stylesheet" href="css/fl-bigmug-line.css">
   <link rel="stylesheet" href="css/aos.css">
   <link rel="stylesheet" href="css/style.css">
 <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Bluesky template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Roboto+Mono:300,400,500"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/mediaelementplayer.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="css/fl-bigmug-line.css">
    
  
    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
   <style type="text/css">
<!--
.Style1 {color: #0000FF}
-->
</style>
<style type="text/css">
<!--
.Style2 {color: #FFFFFF}
-->
</style>
  </head>
  
   <body>
    <div class="site-loader"></div>
    <div class="site-wrap">
    <div class="site-mobile-menu">
    <div class="site-mobile-menu-header">
    <div class="site-mobile-menu-close mt-3">
     <span class="icon-close2 js-menu-toggle"></span>
    </div>
    </div>
    <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
    <div class="site-navbar mt-4">
    <div class="container py-1">
    <div class="row align-items-center">
    <div class="col-8 col-md-8 col-lg-4">
     <h1 class="mb-0"><a href="index_locataire.jsp" class="text-white h2 mb-0"><strong>Colocation<span class="text-danger">.tn</span></strong></a></h1>
    </div>
    <div class="col-4 col-md-4 col-lg-8">
     <nav class="site-navigation text-right text-md-right" role="navigation">
    <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="index_locataire.jsp" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>
      <ul class="site-menu js-clone-nav d-none d-lg-block">
       <li class="active">
        <a href="index_locataire.jsp">Accueil</a>
       </li>
      	    
                  <%
                    String id = session.getAttribute("id").toString();
       String nom="";
       String prenom="";
       String date_naiss = "";
      String sexe = "";
      String act = "";
      String photo = "";
      String adr = "";
      String tel = "";
      String email = "";
                      try{
                  Connexion C = new Connexion();
                    String req=" select * from locataire where idloc="+id;
                     ResultSet rs = C.recherche(req);
                   while(rs.next()){
                         nom = rs.getString(2);
                         prenom = rs.getString(3);
                          date_naiss = rs.getString(4); 
         sexe = rs.getString(5);
         act = rs.getString(6);
         photo = rs.getString(7);
         adr = rs.getString(8);
         tel = rs.getString(9);
         email = rs.getString(10);
                     }
                   
                  }
                    catch(Exception e)
                            {}
                      %>
                  <a href="profilloc.jsp"><img class="w3-circle" width="50" height="50" alt="" src="images/<%=photo%>" > </a>
      <li class="has-children">
    <a href="profilloc.jsp"> <%=nom%> <%=prenom%>      </a> 
  <ul class="dropdown arrow-top">  
       <%Connexion C1 = new  Connexion ();
        int nbb=0;
     try{
          
       String  req1="select * from message where idlocataire="+id;
        System.out.print (req1);
       ResultSet rs1=C1.Afficher(req1);
    
       while (rs1.next()){
            if((rs1.getString(6)!=null) &&(rs1.getString(9).equals("non")))
            {nbb++;}
       }
       
                   
                  }
                    catch(Exception e)
                            {System.out.print(e.toString());}
        %>
         <li><a class="icon-envelope" href="messageloc.jsp"> Chats(<%=nbb%>)</a></li>           
       
                       <li><a  class="icon-user" href="profilloc.jsp"> Mon Profil </a></li>
                      <li><a class="icon-sign-out"  href="deconnexion.jsp"> Deconnexion</a></li>   
                    </ul>
                  </li>

                </ul>
              </nav>
            </div>
           

          </div>
        </div>
    </div>
  </div>
    

    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(images/city_8.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">
          <div class="col-md-10">
            <span class="d-inline-block text-white px-3 mb-3 property-offer-type rounded"> </span>
            <h1 class="mb-2"> Mon profil </h1>
            <p class="mb-5"><strong class="h2 text-success font-weight-bold"> </strong></p>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section site-section-sm">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">
            <div>
              <div class="slide-one-item home-slider owl-carousel">
                <div><img src="images/<%=photo%>" alt="Image" class="img-fluid"></div>
               
              </div>
            </div>
            <div class="bg-white property-body border-bottom border-left border-right">
              <div class="row mb-5">
                <div class="col-md-6">
                  <strong class="text-success h1 mb-3"><%=nom%> <%=prenom%></strong>
                </div>
                <div class="col-md-6">
                  <ul class="property-specs-wrap mb-3 mb-lg-0  float-lg-right">
                 <li>
                    <span class="property-specs">sexe</span>
                    <span class="property-specs-number"><%=sexe%></span>
                    
                  </li>
                  
                <li>
                    <span class="property-specs">Date de naissance</span>
                    <span class="property-specs-number"><%=date_naiss%></span>
                    
                  </li>
                  <li>
                    <span class="property-specs">Ativité</span>
                    <span class="property-specs-number"><%=act%></span>
                    
                  </li>
                </ul>
                </div>
              </div>
              <div class="row mb-5">
                <div class="col-md-6 col-lg-4 text-center border-bottom border-top py-3">
                  <span class="d-inline-block text-black mb-0 caption-text">Adresse</span>
                  <strong class="d-block"><%=adr%></strong>
                </div>
                <div class="col-md-6 col-lg-4 text-center border-bottom border-top py-3">
                  <span class="d-inline-block text-black mb-0 caption-text">e-mail</span>
                  <strong class="d-block"><%=email%></strong>
                </div>
                <div class="col-md-6 col-lg-4 text-center border-bottom border-top py-3">
                  <span class="d-inline-block text-black mb-0 caption-text">telephone</span>
                  <strong class="d-block"><%=tel%></strong>
                </div>
              </div>
                 <form action="modifier_profil_loc.jsp">
                <div class="form-group">
                  <input type="submit" class="btn btn-primary" value="Modifier">
                </div>
            </form>    
            </div>
          </div>
        </div>
      </div>
    </div>
            
   
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <div class="mb-5">
              <h3 class="footer-heading mb-4">About Homeland</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe pariatur reprehenderit vero atque, consequatur id ratione, et non dignissimos culpa? Ut veritatis, quos illum totam quis blanditiis, minima minus odio!</p>
            </div>
          </div>
          <div class="col-lg-4 mb-5 mb-lg-0">
            <div class="row mb-5">
              <div class="col-md-12">
                <h3 class="footer-heading mb-4">Navigations</h3>
              </div>
              <div class="col-md-6 col-lg-6">
                <ul class="list-unstyled">
                  <li><a href="#">Home</a></li>
                  <li><a href="#">Buy</a></li>
                  <li><a href="#">Rent</a></li>
                  <li><a href="#">Properties</a></li>
                </ul>
              </div>
              <div class="col-md-6 col-lg-6">
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Privacy Policy</a></li>
                  <li><a href="#">Contact Us</a></li>
                  <li><a href="#">Terms</a></li>
                </ul>
              </div>
            </div>


          </div>

          <div class="col-lg-4 mb-5 mb-lg-0">
            <h3 class="footer-heading mb-4">Follow Us</h3>

                <div>
                  <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
                </div>

            

          </div>
          
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          
        </div>
      </div>
    </footer>

  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/mediaelement-and-player.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/circleaudioplayer.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>