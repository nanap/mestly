/** A class for managing services supported by MESTly in a private set supportedServices (probably by an admin person)*/
package model.mest.entity;

import java.util.HashSet;

public class ServiceManager {

  private static HashSet<String> supportedServices = new HashSet<String>();

  public static HashSet<String> getSupportedServices(){
    return supportedServices;
  }

  public static boolean addSupportedService(String service) {
    for (String obj: supportedServices) {
      if (obj.contains(service)) {
        return false;
      }
    }
      supportedServices.add(service);
      return true;
  }

  public static boolean removeSupportedService(String service) {
    for (String obj : supportedServices) {
      if (obj.contains(service)) {
        supportedServices.remove(service);
        return true;
      }
    }
      return false;
  }

  public static boolean isSupportedService(String service) {
    for (String obj : supportedServices) {
      if (obj.contains(service)) {
        return true;
      }
    }
      return false;
  }
}