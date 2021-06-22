package Controller;


import java.sql.*;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Maryem
 */
public class Connexion {
      Connection conn=null;
       Statement stmt=null;
       public Connexion(){
           try {
       Class.forName ("com.mysql.jdbc.Driver").newInstance()  ; 
   conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/base?autoReconnect=true&useSSL=false","root","admin");
        stmt= conn.createStatement();
    }
    catch(Exception e){
    System.out.println(e.toString());
    }
       }
        public void Ajout(String req)
    {
        try{
            stmt.executeUpdate(req);
            
        }catch(Exception e){
    System.out.println(e.toString());
    }}

public ResultSet recherche (String req)
{
    ResultSet rs = null;
    try{
        rs=stmt.executeQuery(req);
    }catch(Exception e){
      System.out.print(e.toString());  
    }
    return rs;
}
 public void modifier(String req)
    {
        try{
            stmt.executeUpdate(req);
            
        }catch(Exception e){
    System.out.println(e.toString());
    }}
public ResultSet Afficher(String req)
     {
    ResultSet rs = null;
    try{
    rs=stmt.executeQuery(req);
       }
    catch(Exception e){
    System.out.print(e.toString());  
    }
    return rs;
     }
}
