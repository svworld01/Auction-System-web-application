/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package auction.services;

/**
 *
 * @author The Robust Coder
 */
public class Alert {
    public static String message;

    public static String getMessage() {
        return message;
    }

    public static void setMessage(String type,String quote,String message) {
        Alert.message = " <div class='alert alert-"+type+"' role='alert'>\n" +
"                                <button type='button' class='close' data-dismiss='alert'><span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span></button>\n" +
"                                <strong>"+quote+"</strong>"+message+"\n" +
"                            </div>";
    }
    public static void clear(){
        Alert.message="";
    }
}
