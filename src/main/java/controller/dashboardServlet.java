package controller;

import java.io.*;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*; 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
  

public class dashboardServlet extends HttpServlet{

   
    //@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	   throws ServletException, IOException{

	   	if (req.getSession().getAttribute("username") == null) {
	   		resp.sendRedirect("/login");
	   		return;
	   	}

         req.getRequestDispatcher("/WEB-INF/dashboard.jsp").forward(req,resp);
       
    }
}

