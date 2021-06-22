
<%@page import="Controller.Connexion"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Homeland &mdash; Colorlib Website Template</title>
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
            <h1 class="mb-0"><a href="index_annonceur.jsp" class="text-white h2 mb-0"><strong>Colocation.tn<span class="text-danger">.</span></strong></a></h1>
            </div>
            <div class="col-4 col-md-4 col-lg-8">
              <nav class="site-navigation text-right text-md-right" role="navigation">

                <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

                <ul class="site-menu js-clone-nav d-none d-lg-block">
                  <li class="active">
                    <a href="index_annonceur.jsp">Accueil</a>  </li>   
				  <li class="has-children">
                    <a href="deposer.jsp">Deposer Annonces</a>
                    <ul class="dropdown arrow-top">
                      <li><a href="deposeranlog.jsp">Annonces Logements</a></li>
                      <li><a href="deposerancoloc.jsp">Annonces Colocataire</a></li>   
                    </ul>
                  </li>
				    
                  <%
                    String id = session.getAttribute("id").toString();
                      String nom="";
                      try{
                  Connexion C = new Connexion();
                    String req=" select * from annonceur where idAn="+id;
                     ResultSet rs = C.recherche(req);
                   while(rs.next()){
                         nom = rs.getString(2);
                     }
                  }
                    catch(Exception e)
                            {System.out.println(e.toString());}
                      %>
                 
                   <li class="has-children">
                   <a href="mesannonceslog.jsp">Mes annonces</a>
                    <ul class="dropdown arrow-top">
                      <li><a href="mesannonceslog.jsp">Annonces Logements</a></li>
                      <li><a href="mesannoncescoloc.jsp">Annonces Colocataire</a></li>   
                    </ul></li>
  <li class="has-children">
                    <a href="profilan.jsp"><%=nom%></a>
                    <ul class="dropdown arrow-top">
                        <% Connexion C = new Connexion ();
                        int ct=0;
                        try {
                            String req1="select * from annoncelogement where idAn="+id;
                           System.out.print(req1);
                           
                            ResultSet rsan= C.Afficher(req1); 
                            while (rsan.next())
                            { String req="select * from reservation where idanlog="+rsan.getString(1);
                                 System.out.print(req);
                                 
                                ResultSet rsan1= C.Afficher(req);
                                 while (rsan1.next())
                                    {ct++;}
                            }
                            
                        } catch(Exception e)
                            {   System.out.print(e.toString());}
                        %>
                      <li><a class="icon-menu" href="Notifications.jsp">Notifications(<%=ct%>)</a></li>
                       <li><a  class="icon-room" href="profilan.jsp">Mon Profil </a></li>
                      <li><a class="icon-close2"  href="deconnexion.jsp"> Deconnexion</a></li>   
                    </ul>
                  </li>
				                     
                </ul>
              </nav>
            </div>

          </div>
        </div>
      </div>
    </div>
 <% 
 String nomprenom ="";
 String photo="";
 String idr="";
 String idlog="";
      try {
         // Connexion C1 = new Connexion ();
  
    //   String req1="select * from annoncelogement where idAn="+id;
     //   System.out.print(req1);
      //  ResultSet rsan2= C1.Afficher(req1); 
        while (rsan2.next())
            {idlog=rsan2.getString(1);
            Connexion C2 = new Connexion ();
                String req="select * from reservation where idanlog="+rsan2.getString(1);
            System.out.print(req);
            ResultSet rsan3= C2.Afficher(req);
            while (rsan3.next())
                {idr = rsan3.getString(1);
                   Connexion C3 = new Connexion ();
                   int idloc=Integer.parseInt (request.getParameter("idloc"));
                   String req3="select * from locataire where idloc="+idloc;
                 System.out.print(req3);
                 ResultSet rsan4= C3.Afficher(req3);
                 
                  while (rsan4.next())
                        {  nomprenom = rsan4.getString(2);
                         photo = rsan4.getString(6);
                      
                         
                         %>
                         
                      

    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(images/hero_bg_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">
          <div class="col-md-10">
            <span class="d-inline-block text-white px-3 mb-3 property-offer-type rounded"> </span>
            <h1 class="mb-2"></h1>
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
                  <strong class="text-success h1 mb-3"><%=nomprenom%></strong>
                </div>
                <form action="confirmer_reservation.jsp">
                 <div class="col-md-3">
                    <input type="hidden" name="idr" value= "<%=idr%>" >
                <input name="Confirmer" type="submit" class="btn btn-success text-white " value="Confirmer" >
              </div>
                </form>
                <form action="">
             <div class="col-md-3">
                <input name="submit" type="submit" class="btn btn-success text-white " value="Refuser" action="">
              </div>
                </form>  
            </div>
              </div>
       
                
   <%
              }          
                 }
            }
                            
           
         } catch(Exception e){   System.out.print(e.toString());}
      
   %>   
              <div class="row no-gutters mt-5">
                <div class="col-12">
                  <h2 class="h4 text-black mb-3">Gallerie</h2>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <a href="images/img_1.jpg" class="image-popup gal-item"><img src="images/img_1.jpg" alt="Image" class="img-fluid"></a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <a href="images/img_2.jpg" class="image-popup gal-item"><img src="images/img_2.jpg" alt="Image" class="img-fluid"></a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <a href="images/img_3.jpg" class="image-popup gal-item"><img src="images/img_3.jpg" alt="Image" class="img-fluid"></a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <a href="images/img_4.jpg" class="image-popup gal-item"><img src="images/img_4.jpg" alt="Image" class="img-fluid"></a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <a href="images/img_5.jpg" class="image-popup gal-item"><img src="images/img_5.jpg" alt="Image" class="img-fluid"></a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <a href="images/img_6.jpg" class="image-popup gal-item"><img src="images/img_6.jpg" alt="Image" class="img-fluid"></a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <a href="images/img_7.jpg" class="image-popup gal-item"><img src="images/img_7.jpg" alt="Image" class="img-fluid"></a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <a href="images/img_8.jpg" class="image-popup gal-item"><img src="images/img_8.jpg" alt="Image" class="img-fluid"></a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <a href="images/img_1.jpg" class="image-popup gal-item"><img src="images/img_1.jpg" alt="Image" class="img-fluid"></a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <a href="images/img_2.jpg" class="image-popup gal-item"><img src="images/img_2.jpg" alt="Image" class="img-fluid"></a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <a href="images/img_3.jpg" class="image-popup gal-item"><img src="images/img_3.jpg" alt="Image" class="img-fluid"></a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <a href="images/img_4.jpg" class="image-popup gal-item"><img src="images/img_4.jpg" alt="Image" class="img-fluid"></a>
                </div>
                 
              </div>
            </div>
          </div>
           
        </div>
      </div>
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