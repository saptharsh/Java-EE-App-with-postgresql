package org.sap.javajsp.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.sap.javajsp.dao.UserDAO;
import org.sap.javajsp.model.UserBean;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

private static final long serialVersionUID = 2562294252731783855L;

@Override
public void doPost(HttpServletRequest request, HttpServletResponse response) 
                    throws ServletException, java.io.IOException {

try
{       

     UserBean user = new UserBean();
     user.setUserName(request.getParameter("un"));
     user.setPassword(request.getParameter("pw"));
     user = UserDAO.login(user);
                
     if (user.isValid())
     {
           
          HttpSession session = request.getSession(true);       
          session.setAttribute("currentSessionUser",user); 
          response.sendRedirect("Home.jsp"); //logged-in page            
     }
           
     else 
          response.sendRedirect("Error.jsp"); //error page 
} 
      
      
catch (Throwable theException)        
{
     System.out.println(theException); 
}
       }
   }

