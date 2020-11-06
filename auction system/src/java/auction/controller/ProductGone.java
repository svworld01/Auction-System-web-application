/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package auction.controller;

import auction.mysql.CRUD;
import auction.services.Alert;
import java.io.IOException;
import java.util.LinkedHashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author The Robust Coder
 */
public class ProductGone extends HttpServlet {


  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String pro_id=request.getParameter("pro_id");
       String [] param={pro_id};
       String Condition="WHERE pro_id=? ";
        System.out.println(pro_id);
        LinkedHashMap<String,String> map=new LinkedHashMap<String,String>();
        map.put("bid_status", "2");
        if(new CRUD().updateRows("product", map, Condition, param)){
            Alert.setMessage("success", "great", "Product Is Bided!!");
            response.sendRedirect("sellers/pro_view.jsp?pro_id="+pro_id);
        }
    }

    
}
