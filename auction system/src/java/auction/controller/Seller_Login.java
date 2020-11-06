/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package auction.controller;

import auction.mysql.CRUD;
import auction.mysql.Login;
import auction.services.Alert;
import java.io.*;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import javax.servlet.ServletException;
import javax.servlet.http.*;

/**
 *
 * @author The Robust Coder
 */
public class Seller_Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        String condition=" WHERE sel_email = ?";
        String [] param={email};
        LinkedList<LinkedHashMap<String,String>> list;
        list=new CRUD().selectAllRecards("sellers ", "*", condition, param);
        if(list.isEmpty()){
            Alert.setMessage("danger", "oh!! ", "You have entered wrong email id!!");
            response.sendRedirect("sellers/index.jsp");
        }else{
            LinkedHashMap<String,String> map=list.getFirst();
            if(map.get("sel_password").equals(password)){
                HttpSession session=request.getSession();
                session.setAttribute("sellers", map);
                response.sendRedirect("sellers/home.jsp");
            }else{
                Alert.setMessage("danger", "oh!! ", "You have entered wrong password!!!");
                response.sendRedirect("sellers/index.jsp");
            }
        }
    }
}
