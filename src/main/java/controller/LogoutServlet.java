package controller;

import java.io.*;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*; 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import javax.servlet.http.HttpSession;

  

public class LogoutServlet extends HttpServlet{

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	   throws ServletException, IOException{

	   	HttpSession session = req.getSession();
	   	session.invalidate();
	   	resp.sendRedirect("/");
	   	
    }
}

