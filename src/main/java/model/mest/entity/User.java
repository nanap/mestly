//This class representing users of this application
package model.mest.entity;

import model.mest.utility.*;
import model.mest.entity.*;
import java.io.Serializable;
import java.util.*;
import java.net.URL;

public class User implements Serializable{

  private String firstName;
  private String lastName;
  private String username;
  private String oneLiner;
  private String email;
  private String password;

  private ArrayList<String> tagList = new ArrayList<String>();
  private HashSet<String> followingList = new HashSet<String>();
  private ArrayList<University> universityList = new ArrayList<University>();
  private ArrayList<Work> workList = new ArrayList<Work>();
  private HashMap<String, URL> serviceList = new HashMap<String, URL>();
  private Theme defaultTheme = ThemeManager.getDefaultTheme();
  //private Theme currentTheme = new Theme();


  public User(String firstName, String lastName, String username,
              String email, String password, String oneLiner)
    {
      this.username     =   username;
      this.email        =   email;
      this.password     =   password;
      this.firstName    =   firstName;
      this.lastName     =   lastName;
      this.oneLiner     =   oneLiner;
      //this.defaultTheme  =   ThemeManager.getDefaultTheme();
    }

public User(){
      this.username     =   "";
      this.email        =   "";
      this.password     =   "";
      this.firstName    =   "";
      this.lastName     =   "";
      this.oneLiner     =   "";

}

    //first name
  public String getFirstName() {
      return this.firstName;
  }

  public void setFirstName(String firstName) {
      this.firstName = firstName;
  }


  //last name
  public String getLastName() {
      return this.lastName;
  }

  public void setLastName(String lastName) {
      this.lastName = lastName;
  }

  //username
  public String getUsername() {
      return this.username;
  }

  public void setUsername(String username) {
      this.username = username;
  }

  //one liner
  public String getOneLiner() {
      return this.oneLiner;
  }

  //email
  public String getEmail() {
      return this.email;
  }

  //password
  public String getPassword() {
      return this.password;
  }

  //taglist
  public List getTagList() {
      return this.tagList;
  }

  

  //onliner
  public void setOneLiner(String oneLiner) {
      this.oneLiner = oneLiner;
  }

  //email
  public void setEmail(String email) {
      this.email = email;
  }

  //password
  public void setPassword(String password) {
      this.password = password;
  }

  //taglist
   public void setTagList(ArrayList<String> tagList) {
       this.tagList = tagList;
   }

  //followinglist
  public void setFollowingList(HashSet<String> followingList) {
       this.followingList = followingList;
  }

  public HashSet<String> getFollowingList() {
      return this.followingList;
  }

  //servicelist
  public HashMap<String, URL> getServiceList(){
      return this.serviceList;
  }
  
  public void setServiceList(HashMap<String, URL> serviceList) {
      this.serviceList = serviceList;
  }


  //active theme
  public Theme getActiveTheme(){
    return defaultTheme;
  } 

  public void setActiveTheme(Theme activeTheme){
    defaultTheme = activeTheme;
  } 


  //Work
  public ArrayList<Work> getWorkList() {
      return this.workList;
  }

  public void setWorkList(ArrayList<Work> workList) {
      this.workList = workList;
  }


  //UniversityList
  public ArrayList<University> getUniversityList() {
    return this.universityList;
  }

  public void setUniversityList(ArrayList<University> universityList) {
      this.universityList = universityList;
  }


  /**Tag List*/
  public boolean addTag(String tag) {
    if (tagList.contains(tag)) {
        return false;
          }
    tagList.add(tag);
    return true; 
  }


  public boolean removeTag(String tag) {
   if (tagList.contains(tag)) {
        return tagList.remove(tag);
          }  
    return false;
  }


  /**Service Addition and subtraction*/
  public boolean addService(String service, URL url) {
      if ((!ServiceManager.isSupportedService(service)) || serviceList.containsKey(service)) {
          return false;
      }
        serviceList.put(service,url);
        return true;
  }


  public boolean removeService(String service) {
      if (serviceList.containsKey(service)) {
        serviceList.remove(service);
        return true;
      }
    return false;
  }
  
  /**Following Someone*/
  public boolean addFollowing(String username) {
  if (followingList.contains(username)) {
        return false;
      }
    followingList.add(username);
    return true;
  }

  public boolean removeFollowing(String username) {
    if (followingList.contains(username)) {
          followingList.remove(username);
          return true;
        }
      return false;
  }


  /** Adds work to the list of jobs you have*/
  public boolean addWork(Work work) {
    for (Work now : workList) {
      if (now.equals(work)) {
          return false;
        }
    }
      workList.add(work);
      Collections.sort(workList, new CareerStageComparator());
      return true;
  }

  public boolean removeWork(long uid) {
    for (int i = 0; i < workList.size() ; i++ ) {
       if (workList.get(i).getUid() == uid) {
          workList.remove( workList.get(i));
          return true;
      }
    }
    return false;
  }     
  
  

  public boolean addUniversity(University university) {
    if(universityList.contains(university)) {
        return false;
    }
      
    universityList.add(university);
    Collections.sort(universityList, new CareerStageComparator());
    return true;
  }


  public boolean removeUniversity(long uid) {
    for (int i=0; i < universityList.size() ; i++) {
      if (universityList.get(i).getUid() == uid) {
          universityList.remove(universityList.get(i));
          return true;      
      }   
    } 
    return false;
  }
}