//This class is for validation of users
package model.mest.entity;

import model.mest.entity.User;
import model.mest.entity.UserManager;
import java.util.*;
import java.net.URL;


public class Validation {

	public Validation(){

	}


	 public static boolean veruserName(String username ) {
	 	if (username.equals( UserManager.getUser(username).getUsername()) ) {
	 		return false;
	 	}else if ( username.matches("[a-zA-Z]{2,}") ) {
	 		return true;
	 	}
	 	return false;
	 }


	 public static  boolean verfirstName(String firstName) {
	 	if (firstName.matches("[a-zA-Z]{2,}")) {
	 		return true;
	 	}
	 	return false;
	 }


	 public static boolean verlastName(String lastName) {
	 	if (lastName.matches("[a-zA-Z]{2,}")) {
	 		return true;
	 	}
	 	return false;
	 }

	

	 public static boolean veremail(String email, String username) {

	 	if (email.equals(UserManager.getUser(username).getEmail())) {
	 		return false;
	 	}else if (email.matches("^[_a-zA-Z0-9-]+(\\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\\.[a-zA-Z0-9-]+)*(\\.[a-zA-Z]{2,4})$")) {
	 		
	 	}
	 		return true;
	 }


	 public static boolean verpassword(String password) {
	 	if (password.matches("[a-zA-Z0-9]{8,}")) {
	 		return true;
	 	}
	 		return false;
	 }

	 public static boolean verpasswordconfirm( String password,String passwordconfirm ) {
	 	if (password.equals(passwordconfirm)) {
	 		return true;
	 	}
	 		return false;
	 }

}