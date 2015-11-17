package org.sap.javajsp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.sap.javajsp.model.UserBean;

public class UserDAO    
{
   static Connection currentCon = null;
   static ResultSet rsprepare = null;
   static PreparedStatement stmnt = null;
   public static UserBean login(UserBean bean) {
   
      //preparing some objects for connection 
      String username = bean.getUsername();    
      String password = bean.getPassword();   
       
      String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
      
       
   // "System.out.println" prints in the console; Normally used to trace the process
   System.out.println("Your user name is " + username);          
   System.out.println("Your password is " + password);
   System.out.println("Query: "+sql);
       
   try 
   {
      //connect to DB 
      currentCon = ConnectionManager.getConnection();
      
      stmnt = currentCon.prepareStatement(sql);
      
      stmnt.setString(1, username);
      stmnt.setString(2, password);
      
      rsprepare = stmnt.executeQuery();
      
      boolean moree = rsprepare.next();
      
      // if user does not exist set the isValid variable to false
      if (!moree) 
      {
         System.out.println("Sorry, you are not a registered user! Please sign up first");
         bean.setValid(false);
      } 
           
      //if user exists set the isValid variable to true
      else if (moree) 
      {
         String firstName = rsprepare.getString("FirstName");
         String lastName = rsprepare.getString("LastName");
           
         System.out.println("Welcome " + firstName);
         bean.setFirstName(firstName);
         bean.setLastName(lastName);
         bean.setValid(true);
      }
   } 

   catch (Exception ex) 
   {
      System.out.println("Log In failed: An Exception has occurred! " + ex);
   } 
       
   //some exception handling
   finally 
   {
      if (rsprepare != null)   {
         try {
            rsprepare.close();
         } catch (Exception e) {}
            rsprepare = null;
         }
   
      if (stmnt != null) {
         try {
            stmnt.close();
         } catch (Exception e) {}
            stmnt = null;
         }
   
      if (currentCon != null) {
         try {
            currentCon.close();
         } catch (Exception e) {
         }

         currentCon = null;
      }
   }

return bean;
   
   }   

} 