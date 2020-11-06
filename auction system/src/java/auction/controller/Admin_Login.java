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
public class Admin_Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        Login login=new Login();
        login.setUser_type("admin");
        switch(login.athinticate(email, password)){
            case 0:
                System.out.println("set the user type first!!");
                break;
            case 2:
                Alert.setMessage("danger", "oh!! ", "You have entered wrong email id!!");
                response.sendRedirect("admin/index.jsp");
                break;
            case 3:
                Alert.setMessage("danger", "oh!! ", "You have entered wrong password!!");
                response.sendRedirect("admin/index.jsp");
                break;
            case 1:
                String condition=" WHERE email = ?";
                String[] param={email};
                HttpSession session=request.getSession();
                LinkedList<LinkedHashMap<String,String>> l;
                l=new CRUD().selectAllRecards("admin","*", condition, param);
                LinkedHashMap<String,String> data=l.getFirst();
                session.setAttribute("admin", data.get("id"));
                session.setAttribute("admin_name", data.get("name"));
                session.setAttribute("admin_email",email);
                response.sendRedirect("admin/home.jsp");
                break;
            case 4:
                System.out.println("Incurrect User Type!!");
        }
        
    }
}
