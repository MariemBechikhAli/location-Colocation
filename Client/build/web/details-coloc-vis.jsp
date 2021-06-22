
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
                            <h1 class="mb-0"><a href="index.jsp" class="text-white h2 mb-0"><strong>Colocation<span class="text-danger">.tn</span></strong></a></h1>
                        </div>
                        <div class="col-4 col-md-4 col-lg-8">
                            <nav class="site-navigation text-right text-md-right" role="navigation">

                                <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

                                <ul class="site-menu js-clone-nav d-none d-lg-block">
                                    <li class="active">
                                        <a href="index.jsp">Accueil</a>  </li>   
                                    <li class="has-children">
                                        <a href="#">Deposer Annonces</a>
                                        <ul class="dropdown arrow-top">
                                            <li><a href="connexion_annonceur.jsp">Annonces Logement</a></li>
                                            <li><a href="connexion_annonceur.jsp">Annonces Colocataire</a></li>   
                                        </ul>
                                    </li>
                                    <li class="has-children">
                                        <a href="#">Connexion</a>
                                        <ul class="dropdown arrow-top">
                                            <li><a href="connexion_annonceur.jsp">Annonceur</a></li>
                                            <li><a href="connexion_locataire.jsp">Locataire </a></li>   
                                        </ul>
                                    </li>
                                    <li class="has-children">
                                        <a href="#">S'inscrire</a>
                                        <ul class="dropdown arrow-top">
                                            <li><a href="s'inscrire_annonceur.jsp">Annonceur</a></li>
                                            <li><a href="s'inscrire_locataire.jsp">Locataire</a></li>   
                                        </ul> 

                                    <li><a href="about.jsp">A propos</a></li>


                                </ul>
                            </nav>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <%
            String idan = "";
            String nom = "";
            String prenom = "";
            String date_n = "";
            String sexe = "";
            String activite = "";
            String region = "";
            String photo = "";
            String telephone = "";
            String email = "";
            String vous = "";
            String date_pub = "";
            String etat = "";
            String titre = "";
            String description = "";
            int idd = 0;
            try {
                Connexion C = new Connexion();
                int idancoloc = Integer.parseInt(request.getParameter("idancoloc"));
                String req = "select * from annoncecolocataire where idancoloc=" + idancoloc;
                ResultSet rs = C.Afficher(req);
                System.out.print(req);

                while (rs.next()) {
                    nom = rs.getString(2);
                    prenom = rs.getString(3);
                    date_n = rs.getString(4);
                    sexe = rs.getString(5);
                    activite = rs.getString(6);
                    region = rs.getString(7);
                    photo = rs.getString(8);
                    telephone = rs.getString(9);
                    email = rs.getString(10);
                    vous = rs.getString(11);
                    date_pub = rs.getString(12);
                    idd = rs.getInt(14);
                    description = rs.getString(15);
                    titre = rs.getString(16);
                    
                }
            } catch (Exception e) {
            }

        %>   

        <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(images/hero_bg_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row align-items-center justify-content-center text-center">
                    <div class="col-md-10">
                        <span class="d-inline-block text-white px-3 mb-3 property-offer-type rounded"> Details de</span>
                        <h1 class="mb-2"><%=titre%></h1>
                        <p class="mb-5"><strong class="h2 text-success font-weight-bold"> <%=region%></strong></p>
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
                                    <ul class="property-specs-wrap mb-3 mb-lg-0">
                                        <li>
                                            <span class="property-specs">Date de naissance</span>
                                            <span class="property-specs-number"><%=date_n%></span>

                                        </li>
                                        <li>
                                            <span class="property-specs">sexe</span>
                                            <span class="property-specs-number"><%=sexe%></span>

                                        </li>
                                        <li>
                                            <span class="property-specs">r�gion</span>
                                            <span class="property-specs-number"><%=region%> </span>

                                        </li>
                                    </ul>

                                </div>
                            </div>
                            <div class="row mb-5">
                                <div class="col-md-6 col-lg-4 text-center border-bottom border-top py-3">
                                    <span class="d-inline-block text-black mb-0 caption-text">Je suis</span>
                                    <strong class="d-block"><%=vous%></strong>
                                </div>

                                <div class="col-md-6 col-lg-4 text-center border-bottom border-top py-3">
                                    <span class="d-inline-block text-black mb-0 caption-text">activit�</span>
                                    <strong class="d-block"><%=activite%></strong>
                                </div>
                                <div class="col-md-6 col-lg-4 text-center border-bottom border-top py-3">
                                    <span class="d-inline-block text-black mb-0 caption-text">publi� en</span>
                                    <strong class="d-block"><%=date_pub%></strong>
                                </div>
                            </div>

                                <div class="h4 text-black">PLUS D'INFOS
                            <p><%=description%></p>
                            </div>
                            <div class="row no-gutters mt-5">
                               
                            </div>
                        </div>
                    </div>
                                     <%
    String n="";
     String p="";
     String mail="";
      String tel="";
    try{ 
    Connexion C = new  Connexion();

   String req="select * from annonceur where idAn="+idd; 
   System.out.print("details-loc-vis "+req);
    ResultSet rs =C.Afficher(req);
   while(rs.next()){
  n=rs.getString(2);
  p =rs.getString(3);
   mail=rs.getString(9);
  tel=rs.getString(8);}
}catch (Exception e ){
System.out.println(e.toString());
}
%>
                    <div class="col-lg-4">

                        <div class="bg-white widget border rounded">


                            <h3 class="h4 text-black widget-title mb-3">Contact Annonceur</h3>
                            <form action=""class="form-contact-agent">
                                <div class="form-group">
                                    <label for="name"><%=n%> <%=p%></label>
                                </div>
                                <div class="form-group">
                                    <label for="email"><%=mail%></label>
                                </div>
                                <div class="form-group">
                                    <label for="phone"><%=tel%></label>
                                </div>
                            </form>
                        </div>


                    </div>
                </div>
            </div>
        </div>

            <div class="site-section site-section-sm bg-light">
                <div class="container">

                    <div class="row">
                        


                        <div class="site-section site-section-sm bg-light">
    	<%   try{
    Connexion C = new Connexion ();
   String req="select * from annoncecolocataire where etat='Active'";
   ResultSet rs = C.Afficher(req);
  
%>

    <div class="row mb-5">
        <%
              while(rs.next()){
            %>
         <div class="col-md-6 col-lg-4 mb-4">
            <div class="property-entry h-100">
              <a href="details-coloc-vis.jsp?idancoloc=<%=rs.getString(1)%>" class="property-thumbnail">
               
                <img src="images/<%=rs.getString(8)%>" alt="Image" class="img-fluid">
              </a>
              <div class="p-4 property-body">
                <h2 class="property-title"><a href="details-coloc-vis.jsp?idancoloc=<%=rs.getString(1)%>"><%=rs.getString(16)%></a></h2>
                <span class="property-location d-block mb-3"><span class="property-icon icon-room"></span><%=rs.getString(7)%></span>
                <strong class="property-price text-primary mb-3 d-block text-success"><%=rs.getString(2)%> <%=rs.getString(3)%></strong>
                <ul class="property-specs-wrap mb-3 mb-lg-0">
                 <li>
                    <span class="property-specs">Activit�</span>
                    <span class="property-specs-number"><%=rs.getString(6)%></span>
                    
                  </li>
                   <li>
                    <span class="property-specs">Je suis</span>
                    <span class="property-specs-number"><%=rs.getString(11)%></span>
                   </li>
                    <li>
                    <span class="property-specs">Publi� le</span>
                    <span class="property-specs-number"><%=rs.getString(12)%> </span>
                  </li>
                </ul>
              </div>
            </div>	
      </div>
		  
        <%
            }
}catch(Exception e)

{ System.out.println(e.toString());
}              
%>  
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