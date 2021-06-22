<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="fr">
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
  <script language="javascript">
                           function activer () {
  document.formulaire.valider.disabled = false;
}
                       </script>
  <style type="text/css">
<!--
.Style1 {color: #FF0000}
-->
  </style>
  </head>  
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
              <h1 class="mb-0"><a href="index.jsp" class="text-white h2 mb-0"><strong>Colocation.tn<span class="text-danger">.</span></strong></a></h1>
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
                      <li><a href="charte.jsp">Annonceur</a></li>
                      <li><a href="charte1.jsp">Locataire</a></li>   
                    </ul> 
				 
					 <li><a href="about.jsp">A propos</a></li>
                    
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
            <h1 class="mb-2">Erreur</h1>
          </div>
        </div>
      </div>
    </div>
    

    <div class="site-section">
      <div class="container">
        <div class="row">
       
          <div class="col-md-12 col-lg-8 mb-5">
          
            
          
            <form action="ajouterann.jsp" class="p-5 bg-white border" name="formulaire">

            <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                        <table width="655" border="0">
                            <h2 align="center">Inscription</h2>
                            <tr>
                                <td width="266">
                                    <div class="col-md-12 mb-3 mb-md-0">
                                        <label class="font-weight-bold" for="Nom">Nom</label>
                                        <input type="text" name="nom" id="nom" class="form-control" placeholder="Nom" required="required"/>
                                    </div>
                                    </div></td>
                                <td width="266">  <div class="row form-group">
                                        <div class="col-md-12 mb-3 mb-md-0">
                                            <label class="font-weight-bold" for="Prenom">Prenom</label>
                                            <input type="text" name="prenom" id="fullname" class="form-control" placeholder="Prenom" required="required"/>
                                        </div>
                                    </div></td>
                            <tr>
                                <td colspan="2"><div class="row form-group">
                                        <div class="col-md-12">
                                            <label class="font-weight-bold" for="email">E-mail</label>
                                            <input type="email" id="email" name="email" class="form-control" pattern=".+@.+.com" placeholder="sophie@example.com" required="required"/>
                                        </div>
                                    </div></td>
                            </tr>
                            <tr>             <td colspan="2"> <div class="row form-group">
                                        <div class="col-md-12">
                                            <span class="Style1">
                                Abonné déjà  existant veuillez verifier votre e-mail !  </span>
                                        </div></div></td></tr>
                <tr>
                                <td>  <div class="row form-group">
                                        <div class="col-md-12 mb-3 mb-md-0">
                                            <label class="font-weight-bold" for="sexe">sexe</label>
                                            <label>


                                                <input type="radio" name="sexe" value="Homme" required="required"/>
                                            </label>
                                            Homme
                                            <label>
                                                <input type="radio" name="sexe" value="Femme" required="required"/>
                                            </label>
                                            Femme</div>
                                    </div></td>
                                <td>      <div class="row form-group">
                                        <div class="col-md-12">
                                            <label class="font-weight-bold" for="je suis" > Je suis</label>
                                            <select required="required" name="qualite"  class="common-input mb-20 form-control" >

                                                <option  >Selectionner</option>
                                              <option  value="Personne physique">Personne physique</option>
                        <option value="Personne morale">Personne morale</option>
                                            </select>    
                                        </div>
                                    </div></td>
                            </tr>
                            <tr>
                                <td> <div class="row form-group">
                                        <div class="col-md-12">
                                            <label class="font-weight-bold" for="Activite"> Activite</label>
                                            <select name="activite"class="common-input mb-20 form-control">
                                                <option>Selectionner</option>
                                                <option value="Salarié(e)">Salarié(e)</option>
                                                <option value="Etudiant(e)">Etudiant(e)</option>
                                                <option value="Retraité(e)">Retraité(e)</option>
                                                <option value="Sans Activité">Sans Activité</option>
                                            </select>
                                        </div>
                                    </div></td>    
                                <td> <div class="row form-group">
                                        <div class="col-md-12 mb-3 mb-md-0">
                                            <label class="font-weight-bold" for="Region"> Region</label>
                                            <select name="region" class="common-input mb-20 form-control">

                                                <option>Selectionner</option>
                                                <option>Ariana</option>
                                                <option>Béja</option>
                                                <option>Ben Arous</option> 
                                                <option>Bizerte</option>
                                                <option>Gabes</option>
                                                <option>Gafsa</option>
                                                <option>Jandouba</option>
                                                <option>kairouan</option>
                                                <option>kasserine</option>
                                                <option>kébili</option>
                                                <option>Le Kef</option>
                                                <option>Mahdia</option>
                                                <option> Manouba</option>
                                                <option>Médenine</option>
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
                            </tr>

                            <tr>
                                <td colspan="2"> <div class="row form-group">
                                        <div class="col-md-12">
                                            <label class="font-weight-bold" for="Photo">Photo</label>
                                            <input type="file" name="photo" class="common-input mb-20 form-control" required=""  />
                                        </div>
                                    </div></td>
                            </tr>
                            <tr>
                                <td><div class="row form-group">
                                        <div class="col-md-12">
                                            <label class="font-weight-bold" for="Date">Date de Naissance </label>
                                            </label>
                                            <input type="date" id="date" name="date" class="form-control" required="required">
                                        </div>
                                    </div></td>
                                <td> <div class="row form-group">
                                        <div class="col-md-12">
                                            <label class="font-weight-bold" for="Telephone"> Telephone </label>

                                            <input type="number" id="subject" name="tel" class="form-control" placeholder=" Numero Telephonique " required="required">
                                        </div>
                                    </div></td>

                            </tr>


                          <tr><td>
                                            <div class="row form-group">
                                                <div class="col-md-12">
                                                     <label class="font-weight-bold" for="Mot de passe">Mot de passe</label> 
                                                    <input type="password"id="subject" name="passe" class="form-control" placeholder="Mot de passe" required="required"  minlength="6"
                                                           pattern="[A-Z]+[a-z]+[0-9]*"  title="Veuillez saisir un mot de passe avec au moins 6 caractéres, commancant par une lettre majuscule." autocomplete="nouveau-mot-de-passe">
                                                </div>
                                            </div>
                                        </td>
                                        <td> <div class="row form-group">
                                                <div class="col-md-12">
                                                    <label class="font-weight-bold" for="Mot de passe">Confirmer mot de passe</label> 
                                                    <input type="password"id="subject" name="confirm" class="form-control" placeholder="Reècrire le mot de passe" required="required">
                                                </div>
                                            </div></td></tr>
                          </table>
                </div>
            </div>
            <input type="checkbox" name="checkbox" value="checkbox" onclick="return activer()">
            J'accepte les conditions <br>           


            <div class="row form-group">
                <div class="col-md-12">
                    <input type="submit" value="s'inscrire" class="btn btn-primary  py-2 px-4 rounded-0" name="valider"  disabled  /> 
                </div>
            </div>
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
                  <li><a href="#">Inscription</a></li>
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