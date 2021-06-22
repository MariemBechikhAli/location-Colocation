/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Controller.Connexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
 import java.text.DateFormat;
import java.util.Date;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Maryem
 */
@WebServlet(urlPatterns = {"/update_annonce_log"})
public class update_annonce_log extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String idAn =request.getParameter("idAn");
            String idanlog = request.getParameter("idanlog");
            String titre = request.getParameter("titre");
            String adrlog = request.getParameter("adr");
            String type = request.getParameter("type");
            String surface = request.getParameter("surface");
            String nb_piece = request.getParameter("nbr");
            String meuble = request.getParameter("meuble");
            String loyer = request.getParameter("prix");
            String caution = request.getParameter("caution");
            String description = request.getParameter("Description");
            String photo = request.getParameter("photo");
            String TV = request.getParameter("TV");
            String Ascenseur = request.getParameter("Ascenseur");
            String sdb = request.getParameter("sdb");
            String WiFi = request.getParameter("WiFi");
            String Chaufage = request.getParameter("Chaufage");
            String Balcon = request.getParameter("Balcon");
            String Climatisation = request.getParameter("Climatisation");
            String machine = request.getParameter("machine");
            String Terrasse = request.getParameter("Terrasse");
            String Parking = request.getParameter("Parking");
            String Piscine = request.getParameter("Piscine");
            String Jardin = request.getParameter("Jardin");
            String etat = "Active";
             DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
 Date date = new Date();
            Connexion C = new Connexion();
            String req = "update annoncelogement set titre='" + titre + "',adrlog='" + adrlog + "', type='"+type+"',surface='" + surface + "',nbre_piece=" + nb_piece + ",meuble='" + meuble + "',description='" + description + "',loyer=" + loyer + ",caution=" + caution + ",photo='" + photo + "', idAn="+idAn+", etat='" + etat + "', date_pub='" + dateFormat.format(date) + "', WiFi='" + WiFi + "', TV='" + TV + "', Climatisation='" + Climatisation + "', Parking='" + Parking + "', Ascenseur='" + Ascenseur + "', Chaufage='" + Chaufage + "', machine_a_laver='"+machine+"', piscine='" +Piscine+"', salle_de_bain_privee='" +sdb+ "', balcon='" + Balcon + "', Terrasse='" + Terrasse + "', Jardin='" + Jardin + "' where idanlog=" + idanlog ;
            System.out.print(req);
            C.modifier(req);
            response.sendRedirect("mesannonceslog.jsp");
//detailsanrlog-anr.jsp?idanlog="+idanlog
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
