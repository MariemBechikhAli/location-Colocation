
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

  <% 
     String titre="";
     String adr="";
     String type="";
     String surf="0";
     String nb="0";
     String meuble="oui";
    
     String loyer="0";
     String caution="0";
     String desc="";
     String photo1="";
     String idan="";
     String date="";
     String idanlog="";
     String TV="";
      String Wifi="";
     String clim="";
     String pkg=""; 
     String asc="";
     String chg="";
     String machine="";
     String pisc="";
     String sdb="";
     String balcon="";
     String terasse="";
     String jardin="";
     String lon="";
     String lat="";
     
     try{
    Connexion c = new Connexion();
   int idanlog1=Integer.parseInt (request.getParameter("idanlog1"));
   String req="select * from annoncelogement where idanlog="+idanlog1+"";
   System.out.print(req);
  ResultSet rs = c.Afficher(req);
   
while(rs.next()){
    idanlog=rs.getString(1);
    titre= rs.getString(2);
    adr= rs.getString(3);
    type= rs.getString(4);
    surf= rs.getString(5);
    nb=  rs.getString(6);
    meuble= rs.getString(7);
     desc= rs.getString(8);
    loyer= rs.getString(9);
    caution= rs.getString(10);
    photo1=rs.getString(11);
    idan=rs.getString(12);
    date= rs.getString(14);
     Wifi= rs.getString(15);
     TV= rs.getString(16);
     clim= rs.getString(17);
     pkg= rs.getString(18);
     asc= rs.getString(19);
    chg= rs.getString(20);
  machine= rs.getString(21);
  pisc= rs.getString(22);
  sdb= rs.getString(23);
  balcon= rs.getString(24);
  terasse= rs.getString(25);
  jardin= rs.getString(26);
  lon=rs.getString(27);
  lat=rs.getString(28);
  
}
 }catch(Exception e){
 }
      
   %>   

    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(images/<%=photo1%>);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">
          <div class="col-md-10">
            <span class="d-inline-block text-white px-3 mb-3 property-offer-type rounded"> Details de</span>
            <h1 class="mb-2"><%=titre%></h1>
            <p class="mb-5"><strong class="h2 text-success font-weight-bold"> <%=loyer%>DT/mois</strong></p>
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
                <div><img src="images/<%=photo1%>" alt="Image" class="img-fluid"></div>
                
              </div>
            </div>
            <div class="bg-white property-body border-bottom border-left border-right">
              <div class="row mb-5">
                <div class="col-md-6">
                  <strong class="text-success h1 mb-3"><%=loyer%>DT</strong>
                </div>
                <div class="col-md-6">
                  <ul class="property-specs-wrap mb-3 mb-lg-0  float-lg-right">
                 <li>
                    <span class="property-specs">Nb pieces</span>
                    <span class="property-specs-number">S + <%=nb%></span>
                    
                  </li>
                <li>
                    <span class="property-specs">Surface</span>
                    <span class="property-specs-number"><%=surf%>m<sup>2</sup></span>
                    
                  </li>
                </ul>
                </div>
              </div>
              <div class="row mb-5">
                <div class="col-md-6 col-lg-4 text-center border-bottom border-top py-3">
                  <span class="d-inline-block text-black mb-0 caption-text">Type logement</span>
                  <strong class="d-block"><%=type%></strong>
                </div>
                <div class="col-md-6 col-lg-4 text-center border-bottom border-top py-3">
                  <span class="d-inline-block text-black mb-0 caption-text">Meuble ?</span>
                  <strong class="d-block"><%=meuble%></strong>
                </div>
                <div class="col-md-6 col-lg-4 text-center border-bottom border-top py-3">
                  <span class="d-inline-block text-black mb-0 caption-text">cautionnement</span>
                  <strong class="d-block"><%=caution%>DT</strong>
                </div>
              </div>
              
              <h2 class="h4 text-black">PLUS D'INFOS</h2>
              <p><%=desc%></p>

              <div class="row no-gutters mt-5">
                <div class="col-12">
                  <h2 class="h4 text-black mb-3"></h2>
                </div>
               
                 
              </div>
               <br>
                 
           
            </div>
          </div>
          <div class="col-lg-4">

            <div class="bg-white widget border rounded">
                <%
    String mprenomm1="";
     String mprenomm2="";
     String mail="";
      String tel="";
    try{ 
    Connexion C2 = new  Connexion();

   String req="select * from annonceur where idAn="+idan+""; 
    ResultSet rs =C2.Afficher(req);
   while(rs.next()){
  mprenomm1=rs.getString(2);
  mprenomm2=rs.getString(3);
   mail=rs.getString(9);
  tel=rs.getString(8);}
}catch (Exception e ){
System.out.println(e.toString());
}
%>
                
              <h3 class="h4 text-black widget-title mb-3">Contact Annonceur</h3>
              <form action="message.jsp "class="form-contact-agent">
                <div class="form-group">
                  <label for="name"><%=mprenomm1%> <%=mprenomm2%></label>
                                 </div>
                <div class="form-group">
                  <label for="email"><%=mail%></label>
                  
                </div>
                <div class="form-group">
                  <label for="phone"><%=tel%></label>
                  
                </div>
				
                
              </form>
            </div>

           
   <div class="bg-white widget border rounded">
              <h3 class="h4 text-black widget-title mb-3">Equipements</h3>
              
<table width="495" height="135" border="0">
  <tr>
   
            <%  if (TV.equals("TV")){
           %>
            <td width="187"><label> 
                    <input type="checkbox" name="TV" value="TV" checked="checked" disabled  />
                </label> TV </td>
     <% }else {%>
           <td width="187"><label> 
                    <input type="checkbox" name="TV" value="TV"  disabled  />
    </label></td>
             TV <% }%>
              <%  if (asc.equals("Ascenseur")){
           %>
    <td ligne="top" width="298"><label>
      <input type="checkbox" name="Ascenseur" value="Ascenseur" checked="checked" disabled  />
    </label>
Ascenseur 
      <% }else {%>
    <td ligne="top" width="298"><label>
      <input type="checkbox" name="Ascenseur" value="Ascenseur" disabled  />
    </label>
   Ascenseur  </td>
     <% }%> </tr>
  <tr>
      <%  if (Wifi.equals("WiFi")){
           %>
    <td height="26"><label>
      <input type="checkbox" name="WiFi" value="WiFi" checked="checked" disabled  />
    </label>
WiFi </td>
     <% }else {%>
     <td height="26"><label>
      <input type="checkbox" name="WiFi" value="WiFi" disabled  />
    </label>
WiFi </td>
     <% }%> 
     <%  if (pkg.equals("Parking")){
           %>
    <td><label>    
      <input type="checkbox" name="Parking" value="Parking" checked="checked" disabled />
</label>
Parking</td>
     <% }else {%>
     <td><label>    
      <input type="checkbox" name="Parking" value="Parking" disabled />
</label>
Parking</td>
    <% }%>  </tr>
  <tr>
        <%  if (clim.equals("Climatisation")){
           %>
    <td><label>    
      <input type="checkbox" name="Climatisation" value="Climatisation" checked="checked" disabled />
</label>
Climatisation</td>
     <% }else {%>
     <td><label>    
      <input type="checkbox" name="Climatisation" value="Climatisation" disabled />
</label>
Climatisation</td>
    <% }%>  
      <%  if (terasse.equals("Terrasse")){
           %>
    <td><label>    
      <input type="checkbox" name="Terrasse" value="Terrasse" checked="checked" disabled />
</label>
Terrasse</td>
     <% }else {%>
     <td><label>    
      <input type="checkbox" name="Terrasse" value="Terrasse" disabled />
</label>
Terrasse</td>
    <% }%>  
    
    </tr>
  <tr>
         <%  if (sdb.equals("Salle de bain privée")){
           %>
    <td><label>    
      <input type="checkbox" name="Salle de bain privée" value="Salle de bain privée" checked="checked" disabled />
</label>
Salle de bain privïée</td>
     <% }else {%>
     <td><label>    
      <input type="checkbox" name="Salle de bain privée" value="Salle de bain privée" disabled />
</label>
Salle de bain privïée</td>
    <% }%>  
        <%  if (balcon.equals("Balcon")){
           %>
    <td><label>    
      <input type="checkbox" name="Balcon" value="Balcon" checked="checked" disabled />
</label>
Balcon</td>
     <% }else {%>
     <td><label>    
      <input type="checkbox" name="Balcon" value="Balcon" disabled />
</label>
Balcon
     </td>
    <% }%>  
    
    </tr>
  <tr>
          <%  if (machine.equals("Machine à laver")){
           %>
    <td><label>    
      <input type="checkbox" name="Machine à laver" value="Machine à laver" checked="checked" disabled />
</label>
Machine à laver/td>
     <% }else {%>
     <td><label>    
      <input type="checkbox" name="Machine à laver" value="Machine à laver" disabled />
</label>
Machine à laver</td>
    <% }%>  
    
      <%  if (jardin.equals("Jardin")){
           %>
    <td><label>    
      <input type="checkbox" name="jardin" value="jardin" checked="checked" disabled />
</label>
Jardin</td>
     <% }else {%>
     <td><label>    
      <input type="checkbox" name="jardin" value="jardin" disabled />
</label>
jardin</td>
    <% }%>  
    
    </tr>
  <tr>
          <%  if (chg.equals("Chaufage")){
           %>
    <td><label>    
      <input type="checkbox" name="Chaufage" value="Chaufage" checked="checked" disabled />
</label>
Chaufage</td>
     <% }else {%>
     <td><label>    
      <input type="checkbox" name="Chaufage" value="Chaufage" disabled />
</label>
Chaufage</td>
    <% }%>  
    
    <%  if (pisc.equals("Piscine")){
           %>
    <td><label>    
      <input type="checkbox" name="Piscine" value="Piscine" checked="checked" disabled />
</label>
Piscine</td>
     <% }else {%>
     <td><label>    
      <input type="checkbox" name="Piscine" value="Piscine" disabled />
</label>
Piscine</td>
    <% }%>     

    </tr>
</table> 
            <label></label>
   </div>
          </div>
           
        </div>
      </div>
    </div>
    <div id="map">
     <script>

      function initMap() {
        var myLatLng = {lat:<%=lon%>, lng: <%=lat%>};

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 12,
          center: myLatLng
        });

        var marker = new google.maps.Marker({
          position: myLatLng,
          map: map,
          title: 'Hotel ...'
        });
      }
    </script>
    </div>
    <div class="site-section site-section-sm bg-light">
      <div class="container">

        <div class="row">
          <div class="col-12">
            <div class="site-section-title mb-5">
              <h2>Propriétés connexes</h2>
            </div>
          </div>
        </div>
      <%   try{
    Connexion C3 = new Connexion ();
   String req="select * from annoncelogement where etat='active' ";
   System.out.print("detailsvis "+req);
  ResultSet rs = C3.recherche(req);
 
%>
        <div class="row mb-5">
              <%
              while(rs.next()){
            %>
          <div class="col-md-6 col-lg-4 mb-4">
            <div class="property-entry h-100">
              <a href="detailsvis.jsp?idanlog1=<%=rs.getString(1)%>" class="property-thumbnail">
                
                <img src="images/<%=rs.getString(11)%>" alt="Image" class="img-fluid">
              </a>
              <div class="p-4 property-body">
                <h2 class="property-title"><a href="detailsvis.jsp"><%=rs.getString(2)%></a></h2>
                <span class="property-location d-block mb-3"><span class="property-icon icon-room"></span> <%=rs.getString(3)%></span>
                <strong class="property-price text-primary mb-3 d-block text-success"><%=rs.getString(9)%>DT/mois</strong>
                <ul class="property-specs-wrap mb-3 mb-lg-0">
                  <li>
                    <span class="property-specs">Nb pieces</span>
                    <span class="property-specs-number">S + <%=rs.getString(6)%> </span>
                    
                  </li>
                  <li>
                    <span class="property-specs">Surf</span>
                    <span class="property-specs-number"><%=rs.getString(5)%>m<sup>2</sup></span>
                    
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
<div id="map"></div>
            
            <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDsolkqSTNaW0_azXoMXu0KcI215xkaspY&callback=initMap">
    </script>
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