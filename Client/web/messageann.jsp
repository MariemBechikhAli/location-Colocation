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
                            <h1 class="mb-0"><a href="index_annonceur.jsp" class="text-white h2 mb-0"><strong>Colocation<span class="text-danger">.tn</span></strong></a></h1>
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
                                        String nom = "";
                                        String prenom = "";
                                        String photo = "";
                                        try {
                                            Connexion C = new Connexion();
                                            String req = " select * from annonceur where idAn=" + id;
                                            System.out.print("index ancr " + req);
                                            ResultSet rs = C.recherche(req);
                                            while (rs.next()) {
                                                nom = rs.getString(2);
                                                prenom = rs.getString(3);
                                                photo = rs.getString(7);
                                            }
                                        } catch (Exception e) {
                                        }
                                    %>

                                    <li class="has-children">
                                        <a href="mesannonceslog.jsp">Mes annonces</a>
                                        <ul class="dropdown arrow-top">
                                            <li><a href="mesannonceslog.jsp">Annonces Logements</a></li>
                                            <li><a href="mesannoncescoloc.jsp">Annonces Colocataire</a></li>   
                                        </ul></li>
                                    <a href="profilan.jsp"><img class="w3-circle" width="50" height="50" alt="" src="images/<%=photo%>" > </a>

                                    <li class="has-children">


                                        <a href="profilan.jsp"> <%=nom%> <%=prenom%>      </a> 


                                                   <ul class="dropdown arrow-top">
                                      <% Connexion C = new Connexion();
                                                int ct = 0;
                                                int ct1 = 0;
                                                int ct2 = 0;
                                                int cm = 0;
                                                int nt = 0;
                                                int total = 0;
                                                int ntc = 0;
                                                int cmc = 0;
                                                try {
                                                    //reservation
                                                    System.out.println("Reservation");
                                                    String req1 = "select * from annoncelogement where idAn=" + id;
                                                    System.out.print(req1);
                                                    ResultSet rsan = C.Afficher(req1);

                                                    while (rsan.next()) {
                                                        String req = "select * from reservation where idanlog=" + rsan.getString(1);
                                                        System.out.print("Reservation ----->" + req);
                                                        Connexion C2 = new Connexion();

                                                        ResultSet rsan1 = C2.Afficher(req);
                                                        while (rsan1.next()) {

                                                            ct++;
                                                        }
                                                    }
                                                     System.out.println("Reservation= "+ct);
                                                     //interesser
                                                     System.out.println("Interesser ");
                                                    Connexion c = new Connexion();
                                                    String req2 = "select * from annoncecolocataire where idAn=" + id;
                                                    System.out.print(req2);
                                                    ResultSet rsan2 = c.Afficher(req2);
                                                    while (rsan2.next()) {
                                                        String req3 = "select * from interesser where idancoloc=" + rsan2.getInt(1);
                                                        System.out.print("Interesser ----->" + req3);
                                                        Connexion c1 = new Connexion();
                                                        ResultSet rsan3 = c1.Afficher(req3);
                                                        while (rsan3.next()) {
                                                            ct1++;
                                                        }
                                                    }
                                                    ct2 = ct + ct1;
                                                    System.out.println("interesser= "+ct1);
                                                    //com anlog
                                                    System.out.println("Commentaire anlog");
                                                    String req05 = "select * from annoncelogement where idAn=" + id;
                                                    System.out.print(req05);
                                                    ResultSet rsan05 = C.Afficher(req05);
                                                    while (rsan05.next()) {
                                                        String req5 = "select * from commentaire where idanlg=" + rsan05.getString(1);
                                                        System.out.print("commentaire ----->" + req5);
                                                        Connexion C5 = new Connexion();

                                                        ResultSet rsan5 = C5.Afficher(req5);
                                                        while (rsan5.next()) {
                                                            cm++;
                                                        }

                                                    }
                                                    System.out.println("nbre cpm an log= "+cm);
                                                    //commentare coloc
                                                    System.out.println("Commentaire coloc");
                                                    Connexion c005 = new Connexion();
                                                    String req005 = "select * from annoncecolocataire where idAn=" + id;
                                                    System.out.print(req005);
                                                    ResultSet rsan005 = c005.Afficher(req005);
                                                    while (rsan005.next()) {
                                                        String r5 = "select * from commentaire where idcoloc=" + rsan005.getString(1);
                                                        System.out.print("commentaire coloc ----->" + r5);
                                                        Connexion C50 = new Connexion();

                                                        ResultSet an5 = C50.Afficher(r5);
                                                        while (an5.next()) {
                                                            cmc++;
                                                        }

                                                    }
                                                    System.out.println("nbre com coloc= "+cmc);
                                                    //Note anlog
                                                    System.out.println("Note anlog");
                                                    String req06 = "select * from annoncelogement where idAn=" + id;
                                                    System.out.print(req06);
                                                    ResultSet rsan06 = C.Afficher(req06);
                                                    while (rsan06.next()) {
                                                        String req6 = "select * from note where idanlg=" + rsan06.getString(1);
                                                        System.out.print("Notes ----->" + req6);
                                                        Connexion c6 = new Connexion();

                                                        ResultSet rsan6 = c6.Afficher(req6);
                                                        while (rsan6.next()) {
                                                            nt++;
                                                        }

                                                    }
                                                    System.out.println("nbre Note anlog= "+nt);
                                                    //note coloc
                                                    System.out.println("Note coloc");
                                                    Connexion cn = new Connexion();
                                                    String req07 = "select * from annoncecolocataire where idAn=" + id;
                                                    System.out.print(req07);
                                                    ResultSet rsan07 = cn.Afficher(req07);
                                                    while (rsan07.next()) {
                                                        String req7 = "select * from note where idcoloc=" + rsan07.getString(1);
                                                        System.out.print("Notes coloc ----->" + req7);
                                                        Connexion c7 = new Connexion();

                                                        ResultSet rsan7 = c7.Afficher(req7);
                                                        while (rsan7.next()) {
                                                            ntc++;
                                                        }

                                                    }
                                                    System.out.println("nbre Note coloc= "+ntc);
                                                    total = ct2 + cm + nt + ntc+cmc;
                                                    System.out.println("total noti= "+total);
                                                } catch (Exception e) {
                                                    System.out.print(e.toString());
                                                }
                                            %>

                                            <%Connexion C1 = new Connexion();
                                                int nbb = 0;
                                                try {

                                                    String req1 = "select * from message where idannon=" + id;
                                                    System.out.print(req1);
                                                    ResultSet rs1 = C1.Afficher(req1);

                                                    while (rs1.next()) {
                                                        if ((rs1.getString(2) != null) && (rs1.getString(10).equals("non"))) {
                                                            nbb++;
                                                        }
                                                    }

                                                } catch (Exception e) {
                                                    System.out.print(e.toString());
                                                }
                                            %>
                                            <li><a class="icon-bell" href="notifi.jsp"> Notifications(<%=total%>)</a></li>
                                            <li><a class="icon-envelope" href="messageann.jsp"> Chats(<%=nbb%>)</a></li>
                                            <li><a  class="icon-user" href="profilan.jsp" > Mon Profil </a></li>
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
    <div class="slide-one-item home-slider owl-carousel">
    <div class="site-blocks-cover overlay" style="background-image: url(images/coloc2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
    <div class="container">
    <div class="row align-items-center justify-content-center text-center">
        <div class="mejs__captions-button">
              <h1 class="mb-2"> <strong>Maisons,villas,appartements,studios et meme chambres a louer partout en Tunisie </strong></h1>
  </div>
    </div>
    </div>
    </div>  
    <div class="site-blocks-cover overlay" style="background-image: url(images/coloc1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
    <div class="container">
    </div>
    </div>  
    </div>
    <div class="site-section site-section-sm pb-0">
    <div class="container">
    <div class="row">
   
      </div>  
       <div class="row">
       <div class="col-md-12">
       <div class="view-options bg-white py-3 px-3 d-md-flex align-items-center">
       <div class="mr-auto">
       
       </div>
       <div class="ml-auto d-flex align-items-center">
           
          
       </div>
       </div>
       </div>
       </div>
    <h2  align="center"><strong>Messageries(<%=nbb%>)</strong> </h2>
   
           
           
      
 <% try{
        Connexion c = new Connexion ();
        String con="non";
        String req="select * from message where idannon="+id+" order by date_pub desc"; 
        System.out.print("---->"+req);
        ResultSet rsc =c.Afficher(req);
 %>

<table width="300" height border="0">
                  
                
  <%
      String imgloc="";
      String idlocm="";
      String img="";
  String n="";
  String p="";
     while(rsc.next()){
      String req0 = "select * from locataire where idloc="+rsc.getString(3);   
      System.out.print("--->1"+req0);
      
      Connexion c1 = new Connexion ();
      
      ResultSet rsc1 =c1.Afficher(req0);
       idlocm=rsc.getString(3);
      rsc1.first();
    imgloc=rsc1.getString(7);    
 idlocm=rsc1.getString(1);
 n=rsc1.getString(2);
 p=rsc1.getString(3);
%>

<input type ="hidden" name="idlocm" value="<%=idlocm%>">
<%if ((rsc.getString(2)!=null)&& (rsc.getString(10).equals("non"))){ %>
<tr>
    <td width="55" height="90" rowspan="3"><div  ><img class="w3-circle" width="40" height="60" src="images/<%=imgloc%>" alt="">            </td>
      </tr>
            <tr> 
                <td height="2" colspan="2"><a href="me1.jsp?idlocm=<%=rsc.getString(3)%>" ><%=n%> <%=p%></a></td></tr>
  <tr>
    <td height="2" width="123"><%=rsc.getString(2)%></td>
    <td width="108"><span class="Style2"></span><%=rsc.getString(5)%></td>
  </tr>


 
    
 

   <%
}}
      }catch (Exception e)
{System.out.print(e.toString());


}
      %>
</table>
      
      </ul>
      </div>
      </div>
      </div>
      </div>

      </div>
     </div>
     </div>
       <div class="row mt-5">
       <div class="col-md-12 text-center">
       <div class="site-pagination">
        <a href="#" class="active">1</a>
        <a href="#">2</a>
        <a href="#">3</a>
        <a href="#">4</a>
        <a href="#">5</a>
        <span>...</span>
        <a href="#">10</a>
       </div>
       </div>  
       </div>
      </div>
      </div>
      <div class="site-section">
      <div class="container">
      <div class="row justify-content-center">
      <div class="col-md-7 text-center">
      <div class="site-section-title">
       <h2>Why Choose Us?</h2>
      </div>
       <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis maiores quisquam saepe architecto error corporis aliquam. Cum ipsam a consectetur aut sunt sint animi, pariatur corporis, eaque, deleniti cupiditate officia.</p>
      </div>
      </div>
      <div class="row">
      <div class="col-md-6 col-lg-4">
       <a href="#" class="service text-center">
        <span class="icon flaticon-house"></span>
        <h2 class="service-heading">Research Subburbs</h2>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt iure qui natus perspiciatis ex odio molestia.</p>
        <p><span class="read-more">Read More</span></p>
       </a>
      </div>
      <div class="col-md-6 col-lg-4">
       <a href="#" class="service text-center">
        <span class="icon flaticon-sold"></span>
        <h2 class="service-heading">Sold Houses</h2>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt iure qui natus perspiciatis ex odio molestia.</p>
        <p><span class="read-more">Read More</span></p>
       </a>
      </div>
      <div class="col-md-6 col-lg-4">
       <a href="#" class="service text-center">
        <span class="icon flaticon-camera"></span>
        <h2 class="service-heading">Security Priority</h2>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt iure qui natus perspiciatis ex odio molestia.</p>
        <p><span class="read-more">Read More</span></p>
       </a>
      </div>
      </div>
      </div>
      </div>
      <div class="site-section bg-light">
      <div class="container">
      <div class="row justify-content-center mb-5">
      <div class="col-md-7 text-center">
      <div class="site-section-title">
       
      </div>
      </div>
     </div>
   
    
    </div>
    </div> <!-- .accordion-item -->
    
    </div>
    </div> <!-- .accordion-item -->
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
       Copyright &copy;<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
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