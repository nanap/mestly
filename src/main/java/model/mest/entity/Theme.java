//class describing a theme
package model.mest.entity;

import java.net.URL;


public class Theme {

  protected Long uid;
  protected String title;
  protected URL url;
  private static Long counter = 0L;


  public Theme(){

  }
    
  
  public Theme(String title, URL url){
  	this.title	=	  title;
  	this.url	  =	  url;
    this.uid    =   counter;
    counter++;
  }

  

  //UID
  public Long getUid() {
      return this.uid;
  }

  public void setUid(Long uid) {
      this.uid = uid;
  }

  //Title
  public String getTitle() {
      return this.title;
  }

  public void setTitle(String title) {
      this.title = title;
  }

  //URL
  public URL getUrl() {
      return this.url;
  }

  public void setUrl(URL url) {
      this.url = url;
  }

  // public String toString(){ 
  //    String name = " this method is working";
  //    return name;
  // }
}