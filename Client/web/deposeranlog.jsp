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
        <style type="text/css">
            <!--
            .Style3 {color: #FF0000}
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
                                                    System.out.println("Reservation= " + ct);
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
                                                    System.out.println("interesser= " + ct1);
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
                                                    System.out.println("nbre cpm an log= " + cm);
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
                                                    System.out.println("nbre com coloc= " + cmc);
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
                                                    System.out.println("nbre Note anlog= " + nt);
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
                                                    System.out.println("nbre Note coloc= " + ntc);
                                                    total = ct2 + cm + nt + ntc + cmc;
                                                    System.out.println("total noti= " + total);
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


        <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(images/hero_bg_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row align-items-center justify-content-center text-center">
                    <div class="col-md-10">

                    </div>
                </div>
            </div>
        </div>


        <div class="site-section">
            <div class="container">
                <div class="row">

                    <div class="col-md-12 col-lg-8 mb-5">



                        <form action="deposeranlog1.jsp" class="p-5 bg-white border">
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <table width="655" border="0">
                                        <h2 align="center"> Déposer une annonce de logement</h2>
                                        <tr>
                                            <td width="200" > <div class="row form-group">
                                                    <div class="col-md-12 mb-3 mb-md-0">
                                                        <label class="font-weight-bold" for="Titre"> Titre</label>
                                                        <input type="text" id="email" name="titre" class="form-control" placeholder="Titre" required="required">
                                                    </div>
                                                </div></td>
                                            <td width="10">   <span class="Style3">* </span></td>

                                            <td width="">  <div class="row form-group">
                                                    <div class="col-md-12 mb-3 mb-md-0">
                                                        <label class="font-weight-bold" for="  Region">  Region</label>

                                                        <select name="adr" class="common-input mb-20 form-control" required="required">
                                                            <option>Selectionner</option>
                                                            <option>Ariana</option>
                                                            <option>Beja</option>
                                                            <option>Ben Arous</option> 
                                                            <option>Bizerte</option>
                                                            <option>Gabes</option>
                                                            <option>Gafsa</option>
                                                            <option>Jandouba</option>
                                                            <option>kairouan</option>
                                                            <option>kasserine</option>
                                                            <option>kebili</option>
                                                            <option>Le Kef</option>
                                                            <option>Mahdia</option>
                                                            <option> Manouba</option>
                                                            <option>madenine</option>
                                                            <option>Monastir</option>
                                                            <option>Nabeul</option>
                                                            <option>Sfax</option>
                                                            <option>Sidi Bouzid</option>
                                                            <option>Siliana</option>
                                                            <option>Sousse</option>
                                                            <option>Tataouine</option>
                                                            <option>Touzeur</option>
                                                            <option>Tunis</option>
                                                            <option>Zaghouan</option>
                                                        </select>
                                                    </div>
                                                </div></td>
                                            <td width="10">   <span class="Style3">* </span></td>

                                        </tr>

                                        <tr>
                                            <td colspan="3"><div class="row form-group">
                                                    <div class="col-md-12">
                                                        <label class="font-weight-bold" for="Description">Description</label> 
                                                        <textarea name="Description" id="message" cols="30" rows="5" class="form-control" placeholder="Description" required="required"></textarea>
                                                    </div>
                                                </div></td>
                                            <td width="10">   <span class="Style3">* </span></td>

                                        </tr>
                                        <tr>
                                            <td>  <div class="row form-group">
                                                    <div class="col-md-12 mb-3 mb-md-0">
                                                        <label class="font-weight-bold" for="nbpi">Nombre de pièces</label>
                                                        <select name="nbr"class="common-input mb-20 form-control" required="required">
                                                            <option>S+</option>
                                                            <option>1</option>
                                                            <option>2</option>
                                                            <option>3</option>
                                                            <option>4</option>
                                                            <option>5</option>
                                                            <option>6</option>
                                                            <option>7</option>
                                                        </select></div>
                                                </div>                                            <td width="10">   <span class="Style3">* </span></td>

                                            <td>      <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <label class="font-weight-bold" for="type">Type</label>  


                                                        <select name="type"class="common-input mb-20 form-control">
                                                            <option value="">Selectionner</option>
                                                            <option>Villa</option>
                                                            <option>Appartement</option>
                                                            <option >Maison</option>
                                                            <option >Studio</option> 
                                                            <option>Chambre</option>
                                                        </select>

                                                    </div>
                                                </div>                                            <td width="10">   <span class="Style3">* </span></td>

                                        </tr>
                                        <tr>
                                            <td> <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <label class="font-weight-bold" for="Meublée"> Meublée</label> 
                                                        <select name="meuble"class="common-input mb-20 form-control">
                                                            <option>  Selectionner</option>
                                                            <option>Oui</option>
                                                            <option>Non</option>
                                                        </select>
                                                    </div>
                                                </div>                                            <td width="10">   <span class="Style3">* </span></td>
                                            >    
                                            <td> <div class="row form-group">
                                                    <div class="col-md-12 mb-3 mb-md-0">
                                                        <label class="font-weight-bold" for="caution">Caution</label>
                                                        <input type="number" id="email" name="caution" class="form-control" placeholder="Caution">
                                                    </div>
                                                </div>                                            <td width="10">   <span class="Style3">* </span></td>

                                        </tr>
                                        <tr>
                                            <td colspan="2"> <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <label class="font-weight-bold" for="Equipements">Equipements</label> <br/>
                                                        <table width="518" height="135" border="0">
                                                            <tr>
                                                                <td width="122"><label>
                                                                        <input type="checkbox" name="TV" value="TV" />
                                                                    </label>
                                                                    TV</td>
                                                                <td ligne="top" width="135"><label>
                                                                        <input type="checkbox" name="Ascenseur" value="Ascenseur" />
                                                                    </label>
                                                                    Ascenseur </td>
                                                                <td width="162"><label>
                                                                        <input type="checkbox" name="sdb" value="Salle de bain privée" />
                                                                    </label>
                                                                    Salle de bain privée</td>
                                                            </tr>
                                                            <tr>
                                                                <td height="26"><label>
                                                                        <input type="checkbox" name="WiFi" value="WiFi" />
                                                                    </label>
                                                                    WiFi </td>
                                                                <td><label>
                                                                        <input type="checkbox" name="Chaufage" value="Chaufage" />
                                                                    </label>
                                                                    Chaufage</td>
                                                                <td><label>
                                                                        <input type="checkbox" name="Balcon" value="Balcon" />
                                                                    </label>
                                                                    Balcon</td>
                                                            </tr>
                                                            <tr>
                                                                <td><label>
                                                                        <input type="checkbox" name="Climatisation" value="Climatisation" />
                                                                    </label>
                                                                    Climatisation</td>
                                                                <td><label>
                                                                        <input type="checkbox" name="machine" value="Machine à laver" />
                                                                    </label>
                                                                    Machine à laver</td>
                                                                <td valign="top">
                                                                    <label>
                                                                        <input type="checkbox" name="Terrasse" value="Terrasse" />
                                                                        Terrasse </label></td>
                                                            </tr>
                                                            <tr>
                                                                <td  height="26"><label>
                                                                        <input type="checkbox" name="Parking" value="Parking" />
                                                                    </label>
                                                                    Parking</td>
                                                                <td><label>
                                                                        <input type="checkbox" name="Piscine" value="Piscine" />
                                                                    </label>
                                                                    Piscine</td>
                                                                <td><label>
                                                                        <input type="checkbox" name="Jardin" value="Jardin" />
                                                                    </label>
                                                                    Jardin</td>
                                                            </tr>
                                                        </table>
                                                        <br/>
                                                    </div>
                                                </div></td>
                                        </tr>
                                        <tr>
                                            <td><div class="row form-group">
                                                    <div class="col-md-12">
                                                        <label class="font-weight-bold" for="prix">Loyer </label>
                                                        <input type="number" id="subject" reqiured="" name="prix" class="form-control" placeholder="loyer ">
                                                    </div>
                                                </div></td>
                                            <td width="10">   <span class="Style3">* </span></td>
                                            <td> <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <label class="font-weight-bold" for="surface">Surface </label>
                                                        <input type="number" id="subject" name="surface" class="form-control" placeholder="surface ">
                                                    </div>
                                                </div></td>
                                            <td width="10">   <span class="Style3">* </span></td>
                                        </tr>
                                        <tr><td colspan="2">
                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <label class="font-weight-bold" for="Photo">Photo</label> 	
                                                        <input type="file" name="photo" class="common-input mb-20 form-control" required=""  />
                                                    </div>
                                                </div>
                                            </td>
                                            <td width="10">   <span class="Style3">* </span></td>

                                        </tr>
                                        <tr>
                                            <td> <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <label class="font-weight-bold" for="surface">Longitude </label>
                                                        <input type="text" id="subject" reqiured="" name="long" class="form-control" placeholder="Latitude ">
                                                    </div>
                                                </div></td>
                                            <td width="10">   <span class="Style3">* </span></td>

                                            <td> <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <label class="font-weight-bold" for="surface"> Latitude </label>
                                                        <input type="text" id="subject" name="lat" reqiured="" class="form-control" placeholder="Latitude ">
                                                    </div>
                                                </div></td>
                                            <td width="10">   <span class="Style3">* </span></td>


                                        </tr>
                                        <tr> <td colspan="3"> <span class="Style3">*: champs Obligatoires</span></td>
                                        </tr>
                                    </table>


                                </div>
                            </div>







                            <form>
                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <input type="submit" value="Publier" class="btn btn-outline-info text-center btn-block rounded-0">
                                    </div>
                                </div>
                            </form>

                        </form>
                    </div>

                    <div class="col-lg-4">
                        <div class="p-4 mb-3 bg-white">
                            <h3 class="h6 text-black mb-3 text-uppercase"></h3>
                            <p class="mb-0 font-weight-bold"></p>
                            <p class="mb-4"></p>

                            <p class="mb-0 font-weight-bold"></p>
                            <p class="mb-4"><a href="#"></a></p>

                            <p class="mb-0 font-weight-bold"></p>
                            <p class="mb-0"><a href="#"></a></p>

                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="site-section bg-light">
            <div class="container">
                <div class="row mb-5 justify-content-center">

                </div>
                <div class="row">
                    <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
                        <div class="team-member">



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
                                    <li><a href="contact.jsp">Accueil</a></li>
                                    <li><a href="Publier.jsp">Publier Annonces</a></li>
                                    <li><a href="Recherche.jsp">Rechercher Annonces</a></li>
                                    <li><a href="about.jsp">A propos</a></li>
                                </ul>
                            </div>

                        </div>


                    </div>

                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <h3 class="footer-heading mb-4">Follow Us</h3>

                        <div>
                            <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>

                            <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>

                        </div>



                    </div>

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