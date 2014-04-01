package controller;

import model.mest.entity.UserManager;
import model.mest.entity.User;
import java.io.*;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*; 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;


public class SettingsServlet extends HttpServlet{
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException{

		if (req.getSession().getAttribute("Username") == null) {

			resp.sendRedirect("/login?next=" + req.getRequestURI());
			return;
		}
    		req.getRequestDispatcher("/WEB-INF/settings.jsp").forward(req,resp);
	} 

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException{

			String password = req.getParameter("newpassword");
			String passwordnew = req.getParameter("newpasswordconfirm");
			String username = req.getSession().getAttribute("Username").toString();
			System.out.println(username);

			String deleteuser = req.getParameter("delete");

			if (deleteuser != null) {
				
				HttpSession session = req.getSession();
				UserManager.removeUser(username);
				session.invalidate();
				resp.sendRedirect("/");
			}   

			if (password.equals(passwordnew)) {
				System.out.println(UserManager.getUser(username).getPassword());

				User newUser = UserManager.getUser(username);
				newUser.setPassword(password);
				UserManager.updateUser(newUser);


				String yes = "Password change confirmed";
				req.setAttribute("yes",yes);
				req.getRequestDispatcher("/WEB-INF/settings.jsp").forward(req,resp);
				return;

			}else {
				System.out.println("Didn't work");
				String no = "Passwords are different";
				req.setAttribute("no",no);
				req.getRequestDispatcher("/WEB-INF/settings.jsp").forward(req,resp);
				return;
			} 
			       
	}
}

