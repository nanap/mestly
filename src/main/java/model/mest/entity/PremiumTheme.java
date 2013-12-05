//class describing a premium theme that has to be purchased
package model.mest.entity;

import java.net.URL;

public class PremiumTheme extends Theme {
	

  	private Double price;
  	


  	public PremiumTheme(String title, URL url, double price){
  		super(title, url);
  		this.price	=	price;
  	}

  	public void newOperation() {
  	}



  	public Double getPrice() {
  	    return this.price;
  	}

  	public void setPrice(Double price) {
  	    this.price = price;
  	}

}