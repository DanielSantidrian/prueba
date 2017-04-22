
/* 
 * Copyright (c) 1999, Sun Microsystems, Inc. All Rights Reserved.
 *
 * This software is the confidential and proprietary information of Sun
 * Microsystems, Inc. ("Confidential Information"). You shall not
 * disclose such Confidential Information and shall use it only in
 * accordance with the terms of the license agreement you entered into
 * with Sun.
 *
 * SUN MAKES NO REPRESENTATIONS OR WARRANTIES ABOUT THE SUITABILITY OF
 * THE SOFTWARE, EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED 
 * TO THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE, OR NON-INFRINGEMENT. SUN SHALL NOT BE LIABLE FOR
 * ANY DAMAGES SUFFERED BY LICENSEE AS A RESULT OF USING, MODIFYING, OR
 * DISTRIBUTING THIS SOFTWARE OR ITS DERIVATIVES.
 *
 * Map.java
 *
 * A TreeMap class for storing names and addresses
 *
 */
 
 
 package email;
 
 import java.util.*;
 
 
 public class Map extends TreeMap {
 
 
 	// In this treemap, name is the key and email is the value
 	
 	private String name, email, action;
 	private int count = 0;     
 	
 	public Map() { } 
 	   
 
 	
 	// setting and getting the name
 	
 	public void setName( String formName ) {
 	    if ( formName != "" ) {
 	         name = formName; 	         
 	    }		     	
 	}
 	
 		 	 		
 	public String getName() {	
 	    return name; 	
 	}	
 			


 	// setting and getting the email address
 	
 	public void setEmail( String formEmail ) {
 	    if ( formEmail != "" ) {	    
 	         email = formEmail;			         
 	         System.out.println( name );	// for debugging only
 	         System.out.println( email ); 	// for debugging only         	         
 	    }	
 	}
 	
 	
 	public String getEmail() {
 	    email = get(name).toString();
 	    return email; 	
 	}
 	
 
 	
 	// the action will be used to track which page
 	// the user was on when an exception occurred
 	
 	
 	public void setAction( String pageAction ) {
 	     action = pageAction; 	 	
 	}
 	
 	
 	public String getAction() {
 	    return action;	
 	}
 	
 			
 	 		 	 
 }
 
 
 