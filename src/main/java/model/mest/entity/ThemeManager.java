//This is the class for managing themes
package model.mest.entity;

import java.util.*;
import java.net.URL;
import java.net.MalformedURLException;

public class ThemeManager {
  private static ArrayList<Theme> themeList = new ArrayList<Theme>();


  public ThemeManager(){
  }

  public static boolean addTheme(Theme theme) {
    if (themeList.contains(theme)) {
      return false;
    }
    else{
      themeList.add(theme);
      return true;
    }
  }



  public static Theme getTheme(long uid){
    for ( Theme selectedTheme : themeList ) {
      if (selectedTheme.getUid() == uid) {
          return selectedTheme;
      }
    }
    return null;
  }

 
  public static Theme getDefaultTheme() {
    try{
        URL first =  new URL("http://www.ark.com/beta?");
        return new Theme("firstTheme", first);

    }catch(MalformedURLException e){
        return null;
    }
  }


  public static boolean removeTheme(Long uid) {
    for ( Theme accessTheme : themeList ) {
      if (accessTheme.getUid().equals(uid)) {
      themeList.remove(accessTheme);
      return true;
      }
    }
    return false;
  }

  public static ArrayList<Theme> getThemeList() {
  return themeList;
  }
}