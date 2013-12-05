//This class describing study of a user
package model.mest.entity;

import java.util.*;
import java.util.GregorianCalendar;
import java.net.URL;
import java.util.Comparator;



public class University extends CareerStage {

 
  public User myUser;
  //private String universityName;
  private String degree;
  private String focus;
  
 

  public University(String universityName, String degree, String focus, 
          			   GregorianCalendar startDate, GregorianCalendar endDate, URL website,
          			   String location, URL locationURL){

  	               super(universityName, startDate, endDate,website, location, locationURL);
  	               this.degree			      =	degree;
  	               this.focus			        =	focus;
  }



  public String getDegree() {
      return this.degree;
  }

  public String getFocus() {
      return this.focus;
  }

  public void setDegree(String degree) {
      this.degree = degree;
  }

  public void setFocus(String focus) {
      this.focus = focus;
  }


}