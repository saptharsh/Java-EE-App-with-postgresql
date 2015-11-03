package org.sap.javajsp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class ConnectionManager {

   static Connection con;
   static String url;
         
   public static Connection getConnection()
   {
     
      try
      {
         String url ="jdbc:postgresql://localhost:5432/java_WebApp"; 

         Class.forName("org.postgresql.Driver");
         
         try
         {               
            con = DriverManager.getConnection(url,"postgres","root"); 
                                     
         }
         
         catch (SQLException ex)
         {
            ex.printStackTrace();
         }
      }

      catch(ClassNotFoundException e)
      {
         System.out.println(e);
      }

   return con;
}
} 