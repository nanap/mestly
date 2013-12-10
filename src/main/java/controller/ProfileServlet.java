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
  


public class ProfileServlet extends HttpServlet{

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException{

		if (req.getSession().getAttribute("Username")==null) {
			req.setAttribute("next",req.getRequestURI());

			String username = req.getParameter("name");
			User user = UserManager.getUser(username);
			req.setAttribute("user",user);
   			req.getRequestDispatcher("/WEB-INF/profile.jsp").forward(req,resp);
   			return;
   		}else{
   			String username = req.getSession().getAttribute("Username").toString();
   			User user = UserManager.getUser(username);
   			req.setAttribute("user",user);
   			req.getRequestDispatcher("/WEB-INF/profile.jsp").forward(req,resp);
   			return;
   		}

   		
	} 
}

