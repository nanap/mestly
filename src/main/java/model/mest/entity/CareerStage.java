//This class describes generic careers
package model.mest.entity;

import java.util.GregorianCalendar;
import java.net.URL;

public abstract class CareerStage {

  protected GregorianCalendar endDate;
  protected String location;
  protected URL locationURL;
  protected String name;
  protected GregorianCalendar startDate;
  protected long uid;
  private static long starter = 0L;
  protected URL website; 

  
  public  CareerStage(){
      this.name       =   name;
      this.startDate  =   startDate;
      this.endDate    =   endDate;
      this.website    =   website;
      this.location   =   location;
      this.locationURL=   locationURL;
      uid = starter;
      starter++;
  
}


  public  CareerStage(String name, GregorianCalendar startDate, GregorianCalendar endDate,
  						         URL website, String location, URL locationURL)
  {
  		this.name 		  = 	name;
  		this.startDate	=	  startDate;
  		this.endDate	  =	  endDate;
  		this.website	  =	  website;
  		this.location	  =	  location;
  		this.locationURL=	  locationURL;
      uid = starter;
      starter++;
  	}



  //Calendar
  public GregorianCalendar getEndDate() {
      return this.endDate;
  }


  public void setStartDate(GregorianCalendar startDate) {
      this.startDate = startDate;
  }


  //location
  public String getLocation() {
      return this.location;
  }

   public void setLocation(String location) {
      this.location = location;
  }


  //locationURL
  public URL getLocationURL() {
      return this.locationURL;
  }

  public void setLocationURL(URL locationURL) {
      this.locationURL = locationURL;
  }


  //Name
  public String getName() {
      return this.name;
  }

   public void setName(String name) {
      this.name = name;
  }



  //Date
  public GregorianCalendar getStartDate() {
      return this.startDate;
  }


  public void setEndDate(GregorianCalendar endDate) {
      this.endDate = endDate;
  }



  //UID
  public long getUid() {
      return this.uid;
  }

  public void setUid(long uid) {
      this.uid = uid;
  }


  //Website
  public URL getWebsite() {
      return this.website;
  }

  public void setWebsite(URL website) {
      this.website = website;
  }
}