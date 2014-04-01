package controller;

import model.mest.entity.UserManager;
import model.mest.entity.User;
import java.util.*;
import java.io.*;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*; 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

  

public class UserDirectoryServlet extends HttpServlet{

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	   throws ServletException, IOException{

	   if (req.getSession().getAttribute("Username") == null) {

			resp.sendRedirect("/login?next=" + req.getRequestURI());
			return;
		}
    			  	 
	    ArrayList<User> list = new ArrayList<User>();
   		list = UserManager.getUserList();

   		req.setAttribute("List",list);
   		

	   	//we place the entire method in brackets and wrote String at the front
	   	// so that the object returned from the session can be typecasted into a string
	   	// another way we could do that is to add .toString() at the end of the line before
	   	// the ;
		String username = req.getSession().getAttribute("Username").toString();	 	
	   	String email = UserManager.getUser(username).getEmail();
	   	//req.getSession().getAttribute("Email").toString();

	   	// UserManager.getUser(currentuser).getEmail();
	   	req.setAttribute("Username",username);
	   	req.setAttribute("Email",email );
	   	req.getRequestDispatcher("/WEB-INF/userdirectory.jsp").forward(req,resp);
    }
}

