
package auction.controller;

import auction.mysql.CRUD;
import auction.services.Alert;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CustomerLogin extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password= request.getParameter("password");
        
        String condition = " where cus_email=?";
        String[] param = {email};
        
         LinkedList<LinkedHashMap<String, String>> list;
         
         list = new CRUD().selectAllRecards("customer", " * ", condition, param);
         
         if(list.isEmpty()){
             Alert.setMessage("danger", "oh! ", "You have entered wrong email address..");
             response.sendRedirect("login.jsp");
         }
         else if(!list.getFirst().get("cus_password").equals(password)){
             Alert.setMessage("danger", " Oh! ", "You have entered wrong password..");
             response.sendRedirect("login.jsp");
         }else{
             HttpSession session = request.getSession();
             session.setAttribute("user", list.getFirst());
             if(session.getAttribute("proID")==null){
                 response.sendRedirect("index.jsp");
             }else{
                 response.sendRedirect("bid.jsp");
             }
         }
        
    }

}
