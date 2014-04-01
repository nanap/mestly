package controller;

import model.mest.entity.*;
import model.mest.utility.*;
import java.util.*;
import java.io.*;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*; 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
  


public class EditUserServlet extends HttpServlet{

   protected void doGet(HttpServletRequest req, HttpServletResponse resp)
   throws ServletException, IOException{
      //if no user name exits, 
      if (req.getSession().getAttribute("Username") == null) {
         //respind by sending a redirect to the home page along with the URI that sent the request then return
         resp.sendRedirect("/login?next=" + req.getRequestURI());
         return;
      }
         String username = req.getSession().getAttribute("Username").toString();    
         String oldLocation = UserManager.getUser(username).getLocation();
        
         // UserManager.getUser(currentuser).getEmail();
         req.setAttribute("location",oldLocation);
         
         //else send him to the edituser.jsp
         req.getRequestDispatcher("/WEB-INF/edituser.jsp").forward(req,resp);
   } 


   protected void doPost(HttpServletRequest req, HttpServletResponse resp)
   throws ServletException, IOException{

         System.out.println(req.getRequestURI());
         //System.out.println(req.getRequestURL());

         String lat = req.getParameter("lat");
         System.out.println(lat);
         String lng = req.getParameter("lng");
         System.out.println(lng);

         String location = lat + ","+ lng;
         //System.out.println(location);

         String username = req.getSession().getAttribute("Username").toString();
         System.out.println(username);

         if (location != null) {
            User locationUser = UserManager.getUser(username);
            locationUser.setLocation(location);
            UserManager.updateUser(locationUser);
            //System.out.println(locationUser.getLocation());
         }

         req.setAttribute("location",location);
         req.getRequestDispatcher("/WEB-INF/edituser.jsp").forward(req,resp);
            return;
                
   }
}

