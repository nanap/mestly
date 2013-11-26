package controller;

import java.io.*;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import javax.servlet.http.HttpSession;


public class loginServlet extends HttpServlet {

		//@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp)
					throws ServletException, IOException {
				req.getRequestDispatcher("/WEB-INF/login.jsp").forward(req,resp);
		}


		//@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp)
					throws ServletException, IOException {
				String name = req.getParameter("name");
				String password = req.getParameter("password");

				if (req.getParameter("name") == null 
					|| req.getParameter("password") == null) {
						resp.sendRedirect("/login");
						return;
				}
				
				// Creating a session
				HttpSession session = req.getSession();        
				session.setAttribute("username", name);
				session.setAttribute("password", password);

				if (req.getParameter("next") == null) {
					resp.sendRedirect("/dashboard");
				}

				resp.sendRedirect(req.getParameter("next"));
		}
}