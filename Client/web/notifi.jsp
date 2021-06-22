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

      <div class="site-blocks-cover overlay" style="background-image: url(images/hero_bg_1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-center text-center">
            <div class="mejs__captions-button">
              <h1 class="mb-2"> <strong>Maisons,villas,appartements,studios et meme chambres a louer partout en Tunisie </strong></h1>
            </div>
          </div>
        </div>
      </div>  

      <div class="site-blocks-cover overlay" style="background-image: url(images/hero_bg_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
         <div class="container">
          <div class="row align-items-center justify-content-center text-center">
            <div class="mejs__captions-button">
              <h1 class="mb-2"> <strong>Maisons,villas,appartements,studios et meme chambres a louer partout en Tunisie </strong></h1>
            </div>
          </div>
        </div>
      </div>  


    </div>
                      
    
   <div align="center">
     <% 
 String n ="";
 String p ="";
 String ph="";
 String idr="";
 int idlog=0;
 String  date ="";
 String  titre ="";
 String non="non";
      try {
          Connexion C3 = new Connexion ();
  
       String req3="select * from annoncelogement where idAn="+id;
        System.out.print(req3);
        
        ResultSet rs3= C3.Afficher(req3); 
        while (rs3.next())
            {
                idlog=rs3.getInt(1);
             date =rs3.getString(14);
              titre =rs3.getString(2);
            Connexion C4 = new Connexion ();
                String req4="select * from reservation where confirm = 'non' and idanlog="+idlog;
            System.out.print(req4);
            ResultSet rs4= C4.Afficher(req4);
            while (rs4.next())
                { idr = rs4.getString(1);
                    %>
     <table width="800" height="110" border="0">
           
       <%
                   Connexion C5 = new Connexion ();
                   String req5="select * from locataire where idloc="+rs4.getString(4);
                 System.out.print(req5);
                 ResultSet rs5= C5.Afficher(req5);
                 
                  while (rs5.next())
                        {  rs5.first();
                      String  idloc1 =  rs5.getString(1);
                        n = rs5.getString(2);
                        p = rs5.getString(3);
                         ph = rs5.getString(7);
                      
                         
                         %>
       <tr> 
         <td width="60" height="106"> <img src="images/<%=ph%>" width="61" height="75"></td>
         <td width="500" height="106"> <div ><strong> <span class="Style5"><%=n%> <%=p%> </span></strong>  <span class="Style3 Style5">veut louer l'habitat publié le <strong> <%=date%> </strong> sous  le titre <strong>  <%=titre%> .</strong></span> </div></td>
                                    
         <td width="68"><form action="confirmer_reservation.jsp">
           <label>
             <input type="hidden" name="idr" value= "<%=idr%>" >
           <input name="Confirmer" type="submit" class="btn btn-success text-white " value="Confirmer" >
           </label>
         </form>                             </td>
         
          <td width="58"><form action="">
            <label>
            <input name="submit" type="submit" class="btn btn-success text-white " value="Refuser" action="">
            </label>
         </form>                             </td>
       </tr>
       
         </table>
           
     <%
            }          
            }
            }
         } catch(Exception e){   System.out.print(e.toString());}
      
   %>
   </div>
   <div align="center">
   
   
       <% 
String titre1="";
String dte="";
      try {
          Connexion c = new Connexion ();
  
       String reqi="select * from annoncecolocataire where idAn="+id;
        System.out.print("** "+reqi);
        
        ResultSet rsi= c.Afficher(reqi); 
        while (rsi.next())
            {
                titre1=rsi.getString(16);
                dte=rsi.getString(12);
            Connexion cc = new Connexion ();
                String reqii="select * from interesser where idancoloc="+rsi.getInt(1);
            System.out.print(reqii);
            ResultSet rsii= cc.Afficher(reqii);
            while (rsii.next())
                {
                    %>
     <table width="800" height="110" border="0">
           
       <%
                   Connexion cn = new Connexion ();
                   String reql="select * from locataire where idloc="+rsii.getString(2);
                 System.out.print(reql);
                 ResultSet rsl= cn.Afficher(reql);
                 
                  while (rsl.next())
                        {  rsl.first();
                   int  idlocm=rsl.getInt(1);
                        n = rsl.getString(2);
                        p = rsl.getString(3);
                         ph = rsl.getString(7);
                      
                         
                         %>
                         <tr> 
         <td width="60" height="106"> <img src="images/<%=ph%>" width="61" height="75"></td>
         <td width="500" height="106"> <div ><strong> <span class="Style5"><%=n%> <%=p%> </span></strong>  <span class="Style3 Style5"> est interesser par votre annonce de colocation publié le <strong> <%=dte%> </strong> sous  le titre <strong>  <%=titre1%> .</strong></span> </div></td>
                                    
         <td width="68"><form action="me1.jsp?idlocm="<%=idlocm%> >
           <label>
             <input type="hidden" name="idlocm" value= "<%=idlocm%>" >
           <input name="Contacter" type="submit" class="btn btn-success text-white " value="Contacter" >
           </label>
         </form>                             </td>
         
          <td width="58"><form action="">
            <label>
            <input name="submit" type="submit" class="btn btn-success text-white " value="Refuser" action="">
            </label>
         </form>                             </td>
       </tr>
       
         </table>
                          <%
            }          
            }
            }
         } catch(Exception e){   System.out.print(e.toString());}
      
   %>
     </div>
     

         <div align="center">
         <%
           try {  
         Connexion com = new Connexion ();
  
       String reqcm="select * from annoncelogement where idAn="+id;
        System.out.print("** "+reqcm);
        
        ResultSet rscom= com.Afficher(reqcm); 
        while (rscom.next())
            {
                String t1=rscom.getString(2);
            
               
            Connexion com1 = new Connexion ();
                String reqcom1="select * from commentaire where idanlg="+rscom.getInt(1);
            System.out.print(reqcom1);
            ResultSet rscom1= com1.Afficher(reqcom1);
            while (rscom1.next())
                {
                    %>
     <table width="800" height="110" border="0">
           
       <%
                   Connexion com2 = new Connexion ();
                   String reqcom2="select * from locataire where idloc="+rscom1.getString(5);
                 System.out.print("loc: "+reqcom2);
                 ResultSet rscom2= com2.Afficher(reqcom2);
                 
                  while (rscom2.next())
                        {  rscom2.first();
                     
                        n = rscom2.getString(2);
                        p = rscom2.getString(3);
                         ph = rscom2.getString(7);
                      
                         
                         %>
                         <tr> 
         <td width="60" height="106"> <img src="images/<%=ph%>" width="61" height="75"></td>
         <td width="500" height="106"> <div> <strong> <span class="Style5"><%=n%> <%=p%> </span></strong>  <span class="Style3 Style5"> a commenté votre annonce publié sous le titre <strong><a href="detailsanrlog-anr.jsp?idanlog1=<%=rscom.getString(1)%>" class="property-thumbnail"><%=t1%>.</a></strong> </span> </div> </td>
                                    
        
       </tr>
       
         </table>
                          <%
            }          
            }
            }
         } catch(Exception e){   System.out.print(e.toString());}
      
   %>
         </div>
         <div align="center">
         <%
           try {  
         Connexion comc = new Connexion ();
  System.out.println("commentaire coloc");
       String rcc="select * from annoncecolocataire where idAn="+id;
        System.out.print("** "+rcc);
        
        ResultSet rsc= comc.Afficher(rcc); 
        while (rsc.next())
            { int idcoloc=rsc.getInt(1);
                String tit=rsc.getString(16);          
            Connexion comc1 = new Connexion ();
                String rcc1="select * from commentaire where idcoloc="+rsc.getInt(1);
            System.out.print(rcc1);
            ResultSet rscc= comc1.Afficher(rcc1);
            while (rscc.next())
                {
                    
                    %>
     <table width="800" height="110" border="0">
           
       <%
                   Connexion com2 = new Connexion ();
                   String reqcom2="select * from locataire where idloc="+rscc.getString(5);
                 System.out.print("loc: "+reqcom2);
                 ResultSet rss= com2.Afficher(reqcom2);
                 
                  while (rss.next())
                        {  rss.first();
                     
                        n = rss.getString(2);
                        p = rss.getString(3);
                         ph = rss.getString(7);
                      
                         
                         %>
                         <tr> 
                             <td width="60" height="106"> <img src="images/<%=ph%>" width="61" height="75"></td>
                      
         <td width="500" height="106"> <div> <strong> <span class="Style5"><%=n%> <%=p%> </span></strong>  <span class="Style3 Style5"> a commenté votre annonce de colocation publié sous le titre <strong><a href="detailscoloc.jsp?idancoloc=<%=rscc.getString(1)%>" class="property-thumbnail"><%=tit%>.</a></strong> </span> </div> </td>
                                    
        
       </tr>
       
         </table>
                          <%
            }          
            }
            }
         } catch(Exception e){   System.out.print(e.toString());}
      
   %>
         </div>
         
            <div align="center">
         <%
             System.out.println("Note");
           try {  
         Connexion note = new Connexion ();
  
       String notreq="select * from annoncelogement where idAn="+id;
        System.out.print("** "+notreq);
        
        ResultSet rsnot= note.Afficher(notreq); 
        while (rsnot.next())
            {
                String t11=rsnot.getString(2);
            
               
            Connexion note2 = new Connexion ();
                String notreq2="select * from note where idanlg="+rsnot.getInt(1);
            System.out.print(notreq2);
            ResultSet resnot2= note2.Afficher(notreq2);
            while (resnot2.next())
                {
                    %>
     <table width="800" height="110" border="0">
           
       <%
                   Connexion note3 = new Connexion ();
                   String notreq3="select * from locataire where idloc="+resnot2.getString(4);
                 System.out.print("loc: "+notreq3);
                 ResultSet resnot3= note3.Afficher(notreq3);
                 
                  while (resnot3.next())
                        {  resnot3.first();
                     
                        n = resnot3.getString(2);
                        p = resnot3.getString(3);
                         ph = resnot3.getString(7);
                      
                         
                         %>
                         <tr> 
         <td width="60" height="106"> <img src="images/<%=ph%>" width="61" height="75"></td>
         <td width="500" height="106"> <div> <strong> <span class="Style5"><%=n%> <%=p%> </span></strong>  <span class="Style3 Style5"> a noté votre annonce publié sous le titre <strong><a href="detailsanrlog-anr.jsp?idanlog1=<%=rsnot.getString(1)%>" class="property-thumbnail"><%=t11%>.</a></strong> </span> </div> </td>
                                    
        
       </tr>
       
         </table>
                          <%
            }          
            }
            }
         } catch(Exception e){   System.out.print(e.toString());}
      
   %>
         </div>
         <div align="center">
         <%
             System.out.println("Note coloc");
           try {  
         Connexion nc = new Connexion ();
  
       String rn="select * from annoncecolocataire where idAn="+id;
        System.out.print("** "+rn);
        
        ResultSet nn= nc.Afficher(rn); 
        while (nn.next())
            {
                String tit1=nn.getString(16);
            
               
            Connexion note2 = new Connexion ();
                String notreq2="select * from note where idcoloc="+nn.getInt(1);
            System.out.print(notreq2);
            ResultSet resnot2= note2.Afficher(notreq2);
            while (resnot2.next())
                {
                    %>
     <table width="800" height="110" border="0">
           
       <%
                   Connexion nl = new Connexion ();
                   String n1="select * from locataire where idloc="+resnot2.getString(4);
                 System.out.print("loc: "+n1);
                 ResultSet rsnl= nl.Afficher(n1);
                 
                  while (rsnl.next())
                        {  rsnl.first();
                     
                        n = rsnl.getString(2);
                        p = rsnl.getString(3);
                         ph = rsnl.getString(7);
                      
                         
                         %>
                         <tr> 
         <td width="60" height="106"> <img src="images/<%=ph%>" width="61" height="75"></td>
         <td width="500" height="106"> <div> <strong> <span class="Style5"><%=n%> <%=p%> </span></strong>  <span class="Style3 Style5"> a noté votre annonce de colocation publié sous le titre <strong><a href="detailscoloc.jsp?idancoloc=<%=nn.getString(1)%>" class="property-thumbnail"><%=tit1%>.</a></strong> </span> </div> </td>
                                    
        
       </tr>
       
         </table>
                          <%
            }          
            }
            }
         } catch(Exception e){   System.out.print(e.toString());}
      
   %>
         </div>
         
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
              <h2>Recent Blog</h2>
            </div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis maiores quisquam saepe architecto error corporis aliquam. Cum ipsam a consectetur aut sunt sint animi, pariatur corporis, eaque, deleniti cupiditate officia.</p>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="100">
            <a href="#"><img src="images/img_4.jpg" alt="Image" class="img-fluid"></a>
            <div class="p-4 bg-white">
              <span class="d-block text-secondary small text-uppercase">Jan 20th, 2019</span>
              <h2 class="h5 text-black mb-3"><a href="#">Art Gossip by Mike Charles</a></h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="200">
            <a href="#"><img src="images/img_2.jpg" alt="Image" class="img-fluid"></a>
            <div class="p-4 bg-white">
              <span class="d-block text-secondary small text-uppercase">Jan 20th, 2019</span>
              <h2 class="h5 text-black mb-3"><a href="#">Art Gossip by Mike Charles</a></h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="300">
            <a href="#"><img src="images/img_3.jpg" alt="Image" class="img-fluid"></a>
            <div class="p-4 bg-white">
              <span class="d-block text-secondary small text-uppercase">Jan 20th, 2019</span>
              <h2 class="h5 text-black mb-3"><a href="#">Art Gossip by Mike Charles</a></h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>
            </div>
          </div>

        </div>

      </div>
    </div>

    
    <div class="site-section">
    <div class="container">
      <div class="row mb-5 justify-content-center">
        <div class="col-md-7">
          <div class="site-section-title text-center">
            <h2>Our Agents</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero magnam officiis ipsa eum pariatur labore fugit amet eaque iure vitae, repellendus laborum in modi reiciendis quis! Optio minima quibusdam, laboriosam.</p>
          </div>
        </div>
      </div>
      <div class="row">
          <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
            <div class="team-member">

              <img src="images/person_1.jpg" alt="Image" class="img-fluid rounded mb-4">

              <div class="text">

                <h2 class="mb-2 font-weight-light text-black h4">Megan Smith</h2>
                <span class="d-block mb-3 text-white-opacity-05">Real Estate Agent</span>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi dolorem totam non quis facere blanditiis praesentium est. Totam atque corporis nisi, veniam non. Tempore cupiditate, vitae minus obcaecati provident beatae!</p>
                <p>
                  <a href="#" class="text-black p-2"><span class="icon-facebook"></span></a>
                  <a href="#" class="text-black p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="text-black p-2"><span class="icon-linkedin"></span></a>
                </p>
              </div>

            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
            <div class="team-member">

              <img src="images/person_2.jpg" alt="Image" class="img-fluid rounded mb-4">

              <div class="text">

                <h2 class="mb-2 font-weight-light text-black h4">Brooke Cagle</h2>
                <span class="d-block mb-3 text-white-opacity-05">Real Estate Agent</span>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, cumque vitae voluptates culpa earum similique corrupti itaque veniam doloribus amet perspiciatis recusandae sequi nihil tenetur ad, modi quos id magni!</p>
                <p>
                  <a href="#" class="text-black p-2"><span class="icon-facebook"></span></a>
                  <a href="#" class="text-black p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="text-black p-2"><span class="icon-linkedin"></span></a>
                </p>
              </div>

            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
            <div class="team-member">

              <img src="images/person_3.jpg" alt="Image" class="img-fluid rounded mb-4">

              <div class="text">

                <h2 class="mb-2 font-weight-light text-black h4">Philip Martin</h2>
                <span class="d-block mb-3 text-white-opacity-05">Real Estate Agent</span>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores illo iusto, inventore, iure dolorum officiis modi repellat nobis, praesentium perspiciatis, explicabo. Atque cupiditate, voluptates pariatur odit officia libero veniam quo.</p>
                <p>
                  <a href="#" class="text-black p-2"><span class="icon-facebook"></span></a>
                  <a href="#" class="text-black p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="text-black p-2"><span class="icon-linkedin"></span></a>
                </p>
              </div>

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

  <script src="js/main.js"></script>
    
  </body>
</html>