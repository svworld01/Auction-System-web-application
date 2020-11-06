/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package auction.controller;

import auction.services.Alert;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author The Robust Coder
 */
public class AuthenticateUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String proID = request.getParameter("pro_id");
        
        HttpSession session = request.getSession();
        session.setAttribute("proID", proID);
        if(session.getAttribute("user")==null){
            
            Alert.setMessage("danger", "Oh! ", "You have to log in first to bid any product..");
            response.sendRedirect("login.jsp");
        }else{
            response.sendRedirect("bid.jsp");
        }
  
        
    }

}
