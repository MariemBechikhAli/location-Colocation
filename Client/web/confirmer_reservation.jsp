<%-- 
    Document   : confirmer_reservation
    Created on : 15 mai 2019, 13:26:56
    Author     : Maryem
--%>
<%@page import="javax.swing.text.StyleConstants.ColorConstants"%>
<%@page import="com.itextpdf.text.*"%>
<%@page import="com.itextpdf.text.Image"%>
<%@page import="com.itextpdf.text.FontFactory"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="com.itextpdf.text.BaseColor"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="Controller.Connexion"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.*"%>
<%@page import="Controller.Connexion"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
         String oui="oui";
         String nom="";
                String qualite="";
                String arrive ="";
                String depart ="";
                String type="";
                String surface="";
                String nbr="";
                String noml="";
                String prenoml="";
                 String noma="";
                String prenoma="";
                String idan="";
                String loyer="";
                String caution="";
         String idCon="";
          String datee="";
          try{
       Connexion C = new Connexion ();
       int idr=Integer.parseInt (request.getParameter("idr"));
       String req="update reservation set confirm='"+oui+"' where idresv="+idr;
        System.out.print(req);
        
       C.modifier(req);
        System.out.print("succes");
        
         Connexion C0 = new Connexion();
                 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
                 Date date = new Date();
                 
            String requet=" insert into contrat values(null,"+idr+",'"+dateFormat.format(date)+"' )";
            System.out.print(req);
             C0.Ajout(requet);
             
             Connexion C00 = new Connexion();
              String id = session.getAttribute("id").toString();
          String reqc="select * from reservation where idResv="+idr;
        System.out.print("---->"+reqc);
        ResultSet rsc= C00.Afficher(reqc); 
       rsc.first();
       String idl = rsc.getString(4);
       String debut = rsc.getString(5);
       String fin = rsc.getString(6);
        String idlog = rsc.getString(3);
       out.println (debut);
       out.println (fin);
       out.println (idl);
        
        /// locataire
       Connexion C1 = new Connexion ();
         String req1="select * from locataire where idloc="+idl;
           System.out.print(req1);
           ResultSet rs1= C1.Afficher(req1);
  while (rs1.next()) {          noml= rs1.getString(2);
  prenoml= rs1.getString(3);}
           out.println (noml);
           out.println (prenoml);
        
        
        /// detail logement
        Connexion C2 = new Connexion ();
        String req2 = "select * from annoncelogement where idanlog="+idlog;
       System.out.print(req2);
        ResultSet rs2= C2.Afficher(req2);
          while (rs2.next())
           {  type = rs2.getString(4);
          surface = rs2.getString(5);
           nbr = rs2.getString(6);
           idan = rs2.getString(12);
            loyer = rs2.getString(9);
             caution = rs2.getString(10);
          }
       out.println (type);
       out.println (surface);
       out.println (nbr);
       out.println (idan);
       // annonceur
      Connexion C3 = new Connexion ();
      String req3="select * from annonceur where idAn="+idan;
        System.out.print(req3);
           ResultSet rs3= C3.Afficher(req3);
           while (rs3.next())
           {       
            noma = rs3.getString(2);
            prenoma = rs3.getString(3);
              qualite = rs3.getString(13);
           }
      out.println (noma);
        out.println (prenoma);
       out.println (qualite);
       
       /// ecreture contrat
     Connexion C4= new Connexion ();
     String req4="select * from contrat";
        System.out.print(req4);
           ResultSet rs4= C4.Afficher(req4);
          while (rs4.next())
           {       
           idCon = rs4.getString(1);
          datee = rs4.getString(3);}
           
        String file_name ="d:\\pfe 3LFIG\\contrat\\"+idCon+".pdf";
         Document document = new Document ();
          
           PdfWriter.getInstance(document, new FileOutputStream(file_name));
           document.open();
           Font font = FontFactory.getFont(FontFactory.HELVETICA,13, BaseColor.GRAY);
           Font font1 = FontFactory.getFont(FontFactory.COURIER_BOLD,18, BaseColor.DARK_GRAY);
           Font font2 = FontFactory.getFont(FontFactory.TIMES_ITALIC,14, BaseColor.BLACK);
           Font font3 = FontFactory.getFont(FontFactory.COURIER_BOLDOBLIQUE,25, BaseColor.BLACK);
           Font font0 = FontFactory.getFont(FontFactory.COURIER,10, BaseColor.BLACK);
          
           Image img = Image.getInstance("coloc2.png");
        document.add(img); 
       
          Paragraph p012= new Paragraph ("Ref: CLCTN"+ idCon , font0);
           p012.setAlignment(Element.ALIGN_RIGHT);
           Paragraph p1= new Paragraph (" Contrat de location  ", font3 );
           p1.setAlignment(Element.ALIGN_CENTER);
           Paragraph a1= new Paragraph (" Date émission :   " + datee );
           document.add(a1);
         //   Paragraph p001= new Paragraph ("Soumis au titre Ier de la loi du 6 juillet 1989 tendant à améliorer les rapports locatifs et portant modification de la loi n° 86-1290 du 23 décembre 1986", font0);
           // Paragraph p0001= new Paragraph ("LOCAUX VIDES A USAGE D’HABITATION", font1);
            Paragraph p01= new Paragraph ("_____________________________________________________________________________" );
            Paragraph p2= new Paragraph ( "Désignation des parties", font1);
            Paragraph p3= new Paragraph ( " Le présent contrat est conclu entre les soussignés :", font2);
            Paragraph p4= new Paragraph (  " Nature du bailleur : " + qualite );
            Paragraph p5= new Paragraph ( "Nom et prénom du bailleur : " + noma +" "+ prenoma);
            Paragraph p6= new Paragraph ( "désigné(s) ci-après « le locataire » ");
             Paragraph p7= new Paragraph ("Nom et prénom du locataire :" + noml + " "+ prenoml );
             Paragraph p8= new Paragraph ( "Il a été convenu ce qui suit :" , font2);
             Paragraph p9= new Paragraph ( "Objet du contrat", font1);
              Paragraph p10= new Paragraph ( " Le présent contrat a pour objet la location d’un logement ainsi déterminé :", font2);
              Paragraph p11= new Paragraph ("Consistance du logement ");
               Paragraph p12= new Paragraph ( "-Type d’habitat, Immeuble : " + type);
               Paragraph p13= new Paragraph ("-Surface habitable : 	" + surface +" m²");
               Paragraph p14= new Paragraph ( "- nombre de pièces principales : " + nbr);
               Paragraph p15= new Paragraph ( " Date de prise d’effet et durée du contrat ", font1);
               Paragraph p16= new Paragraph ( "La durée du contrat et sa date de prise d’effet sont ainsi définies :", font2);
                Paragraph p17= new Paragraph ( "A.Date de prise d’effet du contrat : ");
                Paragraph p18= new Paragraph ( "B.	Durée du contrat  ");
                Paragraph p19= new Paragraph ( "i.	Date d’arrivé : " + debut );
                Paragraph p20= new Paragraph("ii.    Date de depart : " + fin );
                  Paragraph p21= new Paragraph ( "Conditions financières ", font1);
                 //  Paragraph p22= new Paragraph ("Les parties conviennent des conditions financières suivantes :");
                 // Paragraph p23= new Paragraph ("A.	Loyer");
                   Paragraph p24= new Paragraph ( " Fixation du loyer initial :", font2);
                   Paragraph p25= new Paragraph ( "a)	Montant du loyer mensuel : "+loyer +"DT" );
                   Paragraph p26= new Paragraph ("b)	Cautionnement  :  "+caution+"DT" );
                   Paragraph p27= new Paragraph ( " Le 	/ "+ "    "+"	/"+ "    "+" 	, à "+ "       "+"	");
                   Paragraph p28= new Paragraph ( "Signature du bailleur                                                  Signature du locataire" , font); 
                    Paragraph p29= new Paragraph ( "          .                                                                                              .  ");
            //       Paragraph p30= new Paragraph ( "Signature du locataire", font);
              //      Paragraph p31= new Paragraph ( "      .     ");
     //  p28.setAlignment(Element.ALIGN_RIGHT);
       //p29.setAlignment(Element.ALIGN_RIGHT);
         document.add(p012);
                    document.add(p1);
//         document.add(p001);
  //        document.add(p0001);
    document.setPageSize(PageSize.A4);
            document.setMargins(30, 30, 40, 40);
           document.add(p01);
        document.add(p2);
        document.add(p3);
        document.add(p4);
        document.add(p5);
        document.add(p6);
        document.add(p7);
        document.add(p8);
        document.add(p9);
        document.add(p10);
        document.add(p11);
        document.add(p12);
        document.add(p13);
        document.add(p14);
        document.add(p15);
        document.add(p16);
        document.add(p17);
        document.add(p18);
        document.add(p19);
        document.add(p20);
        document.add(p21);
       // document.add(p22);
       // document.add(p23);
        document.add(p24);
        document.add(p25);
        document.add(p26);
        document.add(p27);
        document.add(p28);
         document.add(p29);
    //     document.add(p30);
      //     document.add(p31);
         document.close();
         response.sendRedirect("detailsanrlog-anr.jsp?idanlog1="+idlog);
            System.out.println("succés");
          }catch(Exception e)
        {System.out.print(e.toString());
          }
              %>   
    </body>
</html>
