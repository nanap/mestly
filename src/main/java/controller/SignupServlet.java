package controller;

import model.mest.entity.UserManager;
import model.mest.entity.User;
import model.mest.entity.Validation;
import java.io.*;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import javax.servlet.http.HttpSession;


public class SignupServlet extends HttpServlet {

		protected void doGet(HttpServletRequest req, HttpServletResponse resp)
					throws ServletException, IOException {

			req.getRequestDispatcher("/WEB-INF/signup.jsp").forward(req,resp);
		}


		protected void doPost(HttpServletRequest req, HttpServletResponse resp)
					throws ServletException, IOException {


					//Getting the parameters of the req object sent
					String username = req.getParameter("username");
					String firstName = req.getParameter("firstname");
					String lastName = req.getParameter("lastname");
					String email = req.getParameter("email");
					String password = req.getParameter("password");
					String passwordconfirm = req.getParameter("passwordconfirm");
					String oneLiner ="";

					System.out.println(Validation.veruserName(username));
					System.out.println(Validation.verfirstName(firstName));
					System.out.println(Validation.verlastName(lastName));
					System.out.println(Validation.veremail(email,username));
					System.out.println(Validation.verpassword(password));
					System.out.println(Validation.verpasswordconfirm(password,passwordconfirm));


					if ( Validation.veruserName(username) == false) {
						String errormsgUN = "Your username must be more than two 2 characters";
						req.setAttribute("errormsgUN",errormsgUN);
					}

					 if (Validation.verlastName(firstName) == false) {
						String errormsgFN="First name must be at least two 2 characters";
						req.setAttribute("errormsgFN", errormsgFN);
						
					}

					if ( Validation.verlastName(lastName) == false) {
						String errormsgLN = "Last name must be at leat two 2 characters";
						req.setAttribute("errormsgLN",errormsgLN);

					}

					if ( Validation.veremail(email,username) == false) {
						String errormsgEM = "Last name must be at leat two 2 characters";
						req.setAttribute("errormsgEM",errormsgEM);
						
					}

					if ( Validation.verpassword(password) == false) {
						String errormsgPW = "Password must be at least 8 characters long and contain at least one 1 number and one 1 character";
						req.setAttribute("errormsgPW", errormsgPW);

					}

					if ( Validation.verpasswordconfirm(password,passwordconfirm) == false) {
						String errormsgPWC = "Passwords are not identical, re-enter";
						req.setAttribute("errormsgPWC",errormsgPWC);
					} 

					
					if ( Validation.veruserName(username) == true &&
						 Validation.verfirstName(firstName) == true &&
						 Validation.verlastName(lastName) == true &&
						 Validation.veremail(email,username) == true &&
						 Validation.verpassword(password) == true &&
						 Validation.verpasswordconfirm(password,passwordconfirm) ) {

						//Creating a session from the req object
						HttpSession session = req.getSession();
						session.setAttribute("Username",username);
						session.setAttribute("password",password);
						session.setAttribute("Email",email);

						//Creating a new user, using the details from the
						//parameters of the req object..
						User currentuser =  new User (firstName,lastName,username,
            			email, password, oneLiner);
					
						//Adding the user to the list of users
						UserManager.addUser(currentuser);
					
						System.out.println(" Creating a User");
						//Redirecting the browser to request for the dashboard
						resp.sendRedirect("/dashboard");
						return;
					}else{
 
						req.getRequestDispatcher("/WEB-INF/signup.jsp").forward(req, resp);
						return;
					}
					
		}
}