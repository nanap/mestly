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
  


public class HomeServlet extends HttpServlet{

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException{

   		ArrayList<User> list = new ArrayList<User>();
   		list = UserManager.getUserList();

   		req.setAttribute("List",list);
   		req.getRequestDispatcher("/WEB-INF/home.jsp").forward(req,resp);
	} 
}

