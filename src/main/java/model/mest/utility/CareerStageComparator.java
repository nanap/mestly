//This class describes the natural order of career stages
package model.mest.utility;

import model.mest.entity.*;
import java.util.GregorianCalendar;
import java.net.URL;
import java.util.Comparator;



public class CareerStageComparator implements Comparator<CareerStage>{

  //Compare
  public int compare(CareerStage careerStage1, CareerStage careerStage2) {
    long first = careerStage1.getEndDate().getTimeInMillis();
    long second = careerStage2.getEndDate().getTimeInMillis();
    long sFirst = careerStage1.getStartDate().getTimeInMillis();
    long sSecond = careerStage2.getStartDate().getTimeInMillis();

        if (first > second) {
          return -1;
        }
        else if (first < second) {
          return 1;
        }
        else if (first == second) {
          if (sFirst > sSecond) {
            return -1;
          }
          else if (sFirst < sSecond) {
            return 1;
          }
        }
      return 0;
  }
}