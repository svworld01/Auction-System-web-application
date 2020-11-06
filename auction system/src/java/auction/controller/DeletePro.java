/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package auction.controller;

import auction.mysql.CRUD;
import auction.services.Alert;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author The Robust Coder
 */
public class DeletePro extends HttpServlet {

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pro_id=request.getParameter("pro_id");
        String condition="WHERE pro_id=? ";
        String[] param={pro_id};
        if(new CRUD().deleteRow("product", condition, param)){
            Alert.setMessage("success", " Great!! ", " Data Deleted Successfully!! ");
            response.sendRedirect("admin/product.jsp?pro_id="+pro_id);
        }else{
             Alert.setMessage("danger", " Oh!! ", "  Operation failed ");
             response.sendRedirect("admin/product.jsp?pro_id="+pro_id);
        }   
        
        
    }

}
