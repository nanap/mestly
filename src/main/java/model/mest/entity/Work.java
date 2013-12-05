//This class describes employment and project work of a user
package model.mest.entity;

import java.net.URL;
import java.util.*;

public class Work extends CareerStage {
	  
    private String jobTitle;
    private String responsibilities;
 
    
	public Work(String companyName, String jobTitle, String responsibilities,
              GregorianCalendar startDate, GregorianCalendar endDate,   
              URL website, String locationName, URL locationURL)
  {

          super( companyName, startDate, endDate, website, locationName, locationURL);
          this.jobTitle = jobTitle;
          this.responsibilities  = responsibilities;

	}


    //Job Title
    public String getJobTitle() {
        return this.jobTitle;
    }


      public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }


    //Responsibilities
    public String getResponsibilities() {
        return this.responsibilities;
    }
  

    public void setResponsibilities(String responsibilities) {
        this.responsibilities = responsibilities;
    }

}