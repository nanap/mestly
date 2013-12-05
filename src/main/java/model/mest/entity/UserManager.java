/**This represents then class for managing all the user instances of the application.*/
package model.mest.entity;

import model.mest.utility.*;
import model.mest.entity.*;
import java.util.*;
import java.io.*;
import java.net.URL;
import java.util.ArrayList;
import java.io.BufferedReader;
import com.google.gson.*;
import com.google.gson.GsonBuilder;
import java.lang.reflect.Type;
import com.google.gson.reflect.TypeToken;
import java.util.Scanner;

public class UserManager {
  /**List of all users*/
  private static final String USER_DATA_FILE = "users.ser";

  /**A constructor for UserManager.*/
  public UserManager(){

  }
 

  /**Getting a user from the list*/
  public static User getUser(String username){
    ArrayList<User> userList = new ArrayList<User>();
    userList = getUserList();
    User foundUser = new User();
    
    for (User user : userList ) {
      if (username.equals(user.getUsername())) {
         foundUser = user;
      }
    }
    return foundUser;
  }
  
    
  /**Getting the user list*/
  public static ArrayList<User> getUserList(){
   ArrayList<User> users = new ArrayList<User>();

    try{
      File fileIn = new File(USER_DATA_FILE);
      Scanner scannerFileIn = new Scanner(fileIn);
      String content = "";

      while(scannerFileIn.hasNextLine()) {
        content += scannerFileIn.nextLine();
      }

      Type listType = new TypeToken<ArrayList<User>>(){}.getType();
      Gson gson = new Gson();

      users =gson.fromJson(content,listType);
      scannerFileIn.close();
    }catch(IOException i){
      i.printStackTrace();
      return new ArrayList<User>();
    }
    return users;
  }


  public static boolean addUser(User user) {
    try{
      ArrayList<User> userList = new ArrayList<User>();
        userList = getUserList();
        userList.add(user);

        Gson gson = new GsonBuilder().setPrettyPrinting().create();

        String userListJson = gson.toJson(userList);
        FileWriter writerReciever = new FileWriter(USER_DATA_FILE);

        writerReciever.write(userListJson);
        writerReciever.close();

    }catch(IOException i){
      i.printStackTrace();
    }
    ArrayList<User> userList = new ArrayList<User>();
        for (int i = 0; i < userList.size();i++ ) {
          if (userList.get(i).getUsername().equals(user.getUsername())) {
           return true;
          } 
        }
        return false;
  }


  /**Remove User from a userList using the user's name */
  public static boolean removeUser(String username) {
    try{

      ArrayList<User> userList = new ArrayList<User>();
      userList = getUserList();

      for (int i = 0; i < userList.size();i++ ) {
        if (username.equals(userList.get(i).getUsername())) {
            userList.remove(userList.get(i));

          Gson gson = new GsonBuilder().setPrettyPrinting().create();

          String userListJson = gson.toJson(userList);
          FileWriter writerReciever = new FileWriter(USER_DATA_FILE);

          writerReciever.write(userListJson);
          writerReciever.close();

        }
      } 

        return true;
    }catch(IOException i){
      i.printStackTrace();
    }
      return false;
  }



  /**Get Followers by copying the content of a HashMap<String> into an ArrayList<String>*/
  public static ArrayList<String> getFollowers(String username) {
  ArrayList<User> userList = new ArrayList<User>();
    userList = getUserList();
    ArrayList<String> followersList = new ArrayList<String>();
    
    for (int i = 0; i < userList.size();i++ ) {
      if (userList.get(i).getFollowingList().contains(username)) {
          followersList.add(userList.get(i).getUsername());
      }
    } 
    return followersList;
  }


  // Update User method takes the older user and updates its with the new user
  public static boolean updateUser(User newuser) {
    try{
      ArrayList<User> userList = new ArrayList<User>();
      
        String olderusername = newuser.getUsername();
        removeUser(olderusername);
        userList = getUserList();

        System.out.println(userList);

        userList.add(newuser);

        System.out.println(userList);

        Gson gson = new GsonBuilder().setPrettyPrinting().create();

        String userListJson = gson.toJson(userList);
        FileWriter writerReciever = new FileWriter(USER_DATA_FILE);

        writerReciever.write(userListJson);
        writerReciever.close();

    }catch(IOException i){
      i.printStackTrace();
    }
    ArrayList<User> userList = new ArrayList<User>();
        for (int i = 0; i < userList.size();i++ ) {
          if (userList.get(i).getUsername().equals(newuser.getUsername())) {
           return true;
          } 
        }
        return false;
  }

}