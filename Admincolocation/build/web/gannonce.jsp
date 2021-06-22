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
               <img alt="" src="img/<%=photo%> "width="180">     </span> 
                 
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
	   
        <div align="justify">
          <!--overview start-->
        </div>
       
        <div class="row">
          <div class="col-lg-12">
            <div align="justify">
              <ol class="breadcrumb">
                <li><i class="fa fa-home"></i><a href="index.jsp">Accueil</a></li>
              </ol>
            </div>
          </div>
        </div>
        <div align="justify">
		</div>
		
          <!--overview start-->
          
          <!-- javascripts -->
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
              </div>
              <h1><em><strong>Gestion des annonces </strong></em></h1>
             
              <h2> <i class="fa fa-table"></i> Liste des annonces des colocataires </h2>
			
              <form name="form2" method="post" action="rechannrg.jsp">
			       <h4><em> Filtrer par :</em>
                             <select name="adrlog" onChange="document.form2.submit();">
                               <option>Region</option>
                               <option>Ariana</option>
                               <option>B&eacute;ja</option>
                               <option>Ben Arous</option>
                               <option>Bizerte</option>
                               <option>Gabes</option>
                               <option>Gafsa</option>
                               <option>Jandouba</option>
                               <option>kairouan</option>
                               <option>kasserine</option>
                               <option>k&eacute;bili</option>
                               <option>Le Kef</option>
                               <option>Mahdia</option>
                               <option> Manouba</option>
                               <option>M&eacute;denine</option>
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
			
							 <select name="typelog">
          <option>Activité</option>
          <option>Studio</option>
          <option>Appartement</option>
          <option>Chambre</option>
                                                  </select>
                             <select name="etat">
                               <option>Etat</option>
                               <option>Active</option>
                               <option>Desactive</option>
                                     </select>
                             
</h4>
                          
			 
              <%   try{
    Connexion C = new Connexion ();
   String req="select * from annoncecolocataire";
   System.out.println(req);
ResultSet rs =C.Afficher(req);
%>
  <div>
 <section class="panel">
<table  class="table">
                <thead>
                  <tr>
                    <th> <i class="icon_profile"></i> Nom</th>
                     <th> <i class="icon_profile"></i> Prenom</th>
                    <th> <i class="icon_mobile"></i> Telephone</th>
                    <th><i class="icon_pin_alt"></i> Adresse Logements</th>
                    <th><i class="icon_house_alt"></i> Activité</th>
                    <th><i class="icon_adjust-vert"></i> Etes-vous</th>
                    
                  <th> <i class="icon_calendar"></i> Date publication</th>
                 
                   <th> <i class="icon_cogs"></i>Action</th>
                  </tr>
                </thead>
                <tbody>
 <%             
        while(rs.next())
        if (rs.getString(13).equals("Active")){
         out.print("<tr> <td>"+rs.getString(2)+" <td>"+rs.getString(3)+"<td>"+rs.getString(9)+"<td>"+rs.getString(7)+"<td>"+rs.getString(6)+"<td>"+rs.getString(11)+"<td>"+rs.getString(12)+"<td>");
%>
      <div class="btn-group">
                        <a class="btn btn-primary" href="etat1?id=<%=rs.getString(1)%>"> <i class="icon_check_alt2" title="Desactiver"></i></a>
                        <a class="btn btn-danger" href="supp.jsp?id=<%=rs.getString(1)%>"><i class="icon_trash_alt" title="Supprimer"></i></a>
      </div>
<%
    } else{
         out.print("<tr> <td>"+rs.getString(2)+" <td>"+rs.getString(3)+"<td>"+rs.getString(9)+"<td>"+rs.getString(7)+"<td>"+rs.getString(6)+"<td>"+rs.getString(11)+"<td>"+rs.getString(12)+"<td>");
   %> 
               <div class="btn-group">
                        <a class="btn btn-success" href="etat?id=<%=rs.getString(1)%>"> <i class="icon_check_alt2" title="Activer" ></i></a>
                        <a class="btn btn-danger" href="supp.jsp?id=<%=rs.getString(1)%>"><i class="icon_trash_alt" title="Supprimer"></i></a>
      </div> 
   <% 
}
} catch(Exception e)

{ System.out.println(e.toString());}   
%>
</tbody>
    </table>
    </section>
  </div>
<br>
   <h2><i class="fa fa-table"></i> Liste des annonces des logements</h2>
   <p>  <h4><em> Filtrer par :</em>
                             <select name="region">
                               <option>Ariana</option>
                               <option>B&eacute;ja</option>
                               <option>Ben Arous</option>
                               <option>Bizerte</option>
                               <option>Gabes</option>
                               <option>Gafsa</option>
                               <option>Jandouba</option>
                               <option>kairouan</option>
                               <option>kasserine</option>
                               <option>k&eacute;bili</option>
                               <option>Le Kef</option>
                               <option>Mahdia</option>
                               <option> Manouba</option>
                               <option>M&eacute;denine</option>
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
							 <select name="typelog">
          <option>Studio</option>
          <option>Appartement</option>
          <option>Chambre</option>
        </select>
                             <select name="etat">
                               <option>Active</option>
                               <option>Desactive</option>
     </select>
	 <select name="select">
                               <option>Meuble</option>
                               <option>Non meuble</option>
     </select>
   </h4>
                             
			   <form name="form1" method="post" action="rechannrg.jsp">
			     <label></label>
</form>
			   </p>
   <%  
            try{
     Connexion C1 = new Connexion ();
   String req="select * from annoncelogement";
   ResultSet rs =C1.Afficher(req);
            
%>
  <div>
       <section class="panel">
              
<table class="table">
                <thead>
                  <tr>
             <th width="100"><i class="icon_info"></i> Titre</th>  
             <th><i class="icon_pin_alt"></i> Adresse</th>
              <th><i class="icon_house_alt"></i> Type Logement</th>
               <th><i class="icon_adjust-vert" width="50"></i> Nombre pieces</th>
                <th><i class="icon_briefcase"></i>loyer</th>
               <th width="90"><i class="icon_info"></i> Description</th>
                  <th> <i class="icon_group"></i> Annonceur </th>
   
                  <th> <i class="icon_calendar"></i> Date publication</th>
                  
                  <th> <i class="icon_cogs"></i>Action</th>


                  </tr>
                </thead>
                <tbody>
                    <%
                      while(rs.next())
  if (rs.getString(14).equals("active")){
    out.print("<tr> <td>"+rs.getString(2)+ "<td>"+rs.getString(3)+" <td>"+rs.getString(4)+" <td>"+rs.getString(6)+"<td>"+rs.getString(9)+"<td>"+rs.getString(8)+"<td>"+rs.getString(12)+"<td>"+rs.getString(14)+"<td>");
 %>
      <div class="btn-group">
                        <a class="btn btn-primary" href="etat3?id=<%=rs.getString(1)%>"> <i class="icon_check_alt2" title="Desactiver"></i></a>
                        <a class="btn btn-danger" href="supp_1.jsp?id=<%=rs.getString(1)%>"><i class="icon_trash_alt" title="Supprimer"></i></a>
      </div>
<%
    }
else{
    out.print("<tr> <td>"+rs.getString(2)+ "<td>"+rs.getString(3)+" <td>"+rs.getString(4)+" <td>"+rs.getString(6)+"<td>"+rs.getString(9)+"<td>"+rs.getString(8)+"<td>"+rs.getString(12)+"<td>"+rs.getString(14)+"<td>");
 %> 
               <div class="btn-group">
                        <a class="btn btn-success" href="etat2?id=<%=rs.getString(1)%>"> <i class="icon_check_alt2" title="Activer"></i></a>
                        <a class="btn btn-danger" href="supp_1.jsp?id=<%=rs.getString(1)%>"><i class="icon_trash_alt" title="Supprimer"></i></a>
      </div> 
   <% 
} 
}catch(Exception e)

{ System.out.println(e.toString());
}   
                    
                   
     %>          
                </tbody>
         </table>
    </section>
	
  </div>

</body>

</html>
