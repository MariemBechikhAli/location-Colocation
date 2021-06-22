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
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-theme.css" rel="stylesheet">
        <link href="css/elegant-icons-style.css" rel="stylesheet" />
        <link href="css/font-awesome.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
        <link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
        <!-- Custom styles -->
        <link rel="stylesheet" href="css/fullcalendar.css">
        <link href="css/widgets.css" rel="stylesheet">




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
                                        String nom = "";
                                        String prenom = "";
                                        String photo = "";
                                        try {
                                            Connexion C = new Connexion();
                                            String req = " select * from locataire where idloc=" + id;
                                            System.out.print(req);
                                            ResultSet rs = C.recherche(req);
                                            while (rs.next()) {
                                                nom = rs.getString(2);
                                                prenom = rs.getString(3);
                                                photo = rs.getString(7);
                                            }

                                        } catch (Exception e) {
                                            System.out.print(e.toString());
                                        }
                                    %>
                                    <a href="profilloc.jsp"><img class="w3-circle" width="50" height="50" alt="" src="images/<%=photo%>" > </a>
                                    <li class="has-children">
                                        <a href="profilan.jsp"> <%=nom%> <%=prenom%>      </a> 
                                        <ul class="dropdown arrow-top">  

                                            <%Connexion C1 = new Connexion();
                                                int nbb = 0;
                                                try {

                                                    String req1 = "select * from message where idlocataire=" + id;
                                                    System.out.print(req1);
                                                    ResultSet rs1 = C1.Afficher(req1);

                                                    while (rs1.next()) {
                                                        if ((rs1.getString(6) != null) && (rs1.getString(9).equals("non"))) {
                                                            nbb++;
                                                        }
                                                    }

                                                } catch (Exception e) {
                                                    System.out.print(e.toString());
                                                }
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
        <div class="site-blocks-cover overlay" style="background-image: url(images/coloc2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
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

            <!-- statics end -->

            <form action="ajoutermsg.jsp" class="form-inline">
                <table width="910" border="0">
                    <tr>
                        <td width="500"></td>


                        <!-- project team & activity start -->
                    <div class="row">
                        <div class="col-md-4 portlets">
                            <!-- Widget -->
                            <td width="910"> 
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <div class="pull-left">
                                            <div>Discussion instantanée</div>
                                        </div>
                                        <div class="widget-icons pull-right">
                                            <div><a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
                                                <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>

                                    <div class="panel-body">
                                        <div>
                                            <!-- Widget content -->
                                        </div>
                                        <div class="padd sscroll">

                                            <div>
                                                <ul class="chats">


                                                    <%
                                                        try {
                                                            String idancre = request.getParameter("idancre");
                                                            
                                                            String date = "";
                                                            String con = "non";
                                                            Connexion c = new Connexion();
                                                            String req = "select * from message where idannon=" + idancre + " and idlocataire=" + id + " ";
                                                            System.out.print(req);
                                                            ResultSet rsc = c.Afficher(req);

                                                            String idlm = "";
                                                            String img = "";
                                                            String imgA = "";
                                                            String noma = "";
                                                            String noma1 = "";

                                                            String imgl = "";

                                                            while (rsc.next()) {
                                                                String req0 = "select * from annonceur where idAn=" + rsc.getString(4);
                                                                System.out.println("req0 " + req0);
                                                                Connexion c1 = new Connexion();
                                                                ResultSet rsc1 = c1.Afficher(req0);
                                                                rsc1.first();

                                                                img = rsc1.getString(7);
                                                                noma = rsc1.getString(2);
                                                                noma1 = rsc1.getString(3);
                                                                String req0l = "select * from locataire where idloc=" + rsc.getString(3);
                                                                Connexion c1l = new Connexion();
                                                                ResultSet rsc1l = c1l.Afficher(req0l);
                                                                System.out.print(req0l);
                                                                rsc1l.first();
                                                                imgl = rsc1l.getString(7);

                                                                if ((rsc.getString(2) != null) && (rsc.getString(8).equals("non"))) {%>


                                                    <!-- Use the class "pull-left" in avatar -->



                                                    <ul class="chats"><li class="by-me"><div class="avatar pull-left">
                                                                <div><img src="images/<%=imgl%>" alt="" width="50" />

                                                                </div>
                                                            </div>

                                                            <div class="chat-content">
                                                                <div>
                                                                    <!-- In meta area, first include "name" and then "time" -->
                                                                </div>
                                                                <div class="chat-meta">
                                                                    <div> Moi <span class="pull-right"><%=rsc.getString(5)%></span></div>
                                                                </div>
                                                                <div><%=rsc.getString(2)%>
                                                                </div>
                                                                <div  align="right"><p><a href="supp.jsp?idms=<%=rsc.getString(1)%>" onClick="return confirm('Voulez vous vraiment supprimer ce message ?')">supprimer</a></p></div>
                                                              </li>
                                                    </ul>  <div class="clearfix"></div>
                                                            </div>
                                                        </li>
                                                        <div>


                                                            



                                            </div>

                                            <% } else {%>


                                            <% }%>
                                            <%   if ((rsc.getString(6) != null) && (rsc.getString(8).equals("non"))) {%>

                                            <ul class="chats">
                                                <li class="by-other">   <div class="avatar pull-right">
                                                        <div><img src="images/<%=img%>" width="50" alt="" />  </div>
                                                    </div>
                                                    <div class="chat-content">

                                                        <div class="chat-meta">
                                                            <div><%=rsc.getString(5)%> <span class="pull-right"><%=noma%> <%=noma1%></span></div>
                                                        </div>
                                                        <div align="right"><%=rsc.getString(6)%> </div>
                                                        <div  align="left"><p><a href="suppan.jsp?idms=<%=rsc.getString(1)%>" onclick="return confirm('Voulez vous vraiment supprimer ce message ?')">supprimer</a></p></div>
                                                    </div>
                                                </li>
                                            </ul>
                                            <div class="clearfix"></div>
                                            <div>
                                                <% } else {%>
                                                <%}%>
                                                <% }%>
                                                <!-- Widget footer -->
                                            </div>
                                        </div>

                                        <div class="widget-foot">

                                            <div class="form-group">
                                                <div>
                                                    <input type="text" name="message" class="form-control" placeholder="Ecrivez un message...">
                                                </div>
                                            </div>
                                            <input type ="hidden" name="idancre" value="<%=idancre%>">
                                            <div>
                                                <button type="submit" class="btn btn-info">Envoyer</button>
                                            </div>

                                        </div>
                                        <div>
                                            </td>
                                            </tr>
                                            <%

                                                } catch (Exception e) {
                                                }
                                            %>
                                        </div>
                                    </div>
                                </div>

                        </div>
                    </div>
                    </div>



                </table> </form>

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