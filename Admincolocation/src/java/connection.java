/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Controller.Connexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jihen
 */
@WebServlet(urlPatterns = {"/connection"})
public class connection extends HttpServlet {

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
           
       String login=request.getParameter("login");
           String password=request.getParameter("password");
                
                     Class.forName("com.mysql.jdbc.Driver").newInstance();
              Connection conn=null;
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/base?autoReconnect=true&useSSL=false","root","admin");
                    
           String req="select * from administrateur where login='"+login+"' and password='"+password+"'";
          System.out.print(req); 
         Statement stmt=conn.createStatement();
        HttpSession session=request.getSession(true);
        int id=0 ;
          ResultSet rs =stmt.executeQuery(req);
         
         int comp=0;
         while(rs.next()){
              id = rs.getInt(1);
             comp++;
        }
         if(comp==1){
             session.setAttribute("id",id);
        response.sendRedirect("index.jsp");
         }
        
         else  response.sendRedirect("login-err.jsp");
             
              }catch(Exception e)
          {response.sendRedirect("login-err.jsp");
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
