package controller;

import model.mest.entity.UserManager;
import model.mest.entity.User;
import java.io.*;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import javax.servlet.http.HttpSession;


public class LoginServlet extends HttpServlet 
{
	String name= "";


	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException
	{
		name = (req.getParameter("name"));
		req.getRequestDispatcher("/WEB-INF/login.jsp").forward(req,resp);
	}



	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException 
	{ 
			//Getting the details of the user for authentication and loggin in
		String username = req.getParameter("username");
		String password = req.getParameter("password");

			//Getting the username and password from the Json file saved on the server
		String varifyusername = UserManager.getUser(username).getUsername();
		System.out.println(varifyusername + "test1");
		String varifypassword = UserManager.getUser(username).getPassword();
 	
		if ( username.equals(varifyusername) && username != "") {

			if ( password.equals(varifypassword) && password != "") {

				HttpSession session = req.getSession();
				session.setAttribute("Username", username);

					
				if (name != null){
					System.out.println(name);
					resp.sendRedirect("/profile?name=" + name);
					return;
				}

				if (req.getParameter("next") == null) {
					resp.sendRedirect("/dashboard");

				}else{	
					resp.sendRedirect(req.getParameter("next"));
				}  
			}else{
				String wrongpassword = "Password entered does not match the username entered";
				req.setAttribute("Wrongpassword",wrongpassword);
				req.getRequestDispatcher("/WEB-INF/login.jsp").forward(req,resp);
				return;	
			}
		}else{
			String wronguser = "Username entered is not registered with Mestly";
			req.setAttribute("Wronguser",wronguser);
			req.getRequestDispatcher("/WEB-INF/login.jsp").forward(req,resp);
			return;
		} 			
	}
}