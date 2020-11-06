
package auction.controller;

import auction.mysql.CRUD;
import auction.services.Alert;
import java.io.*;
import java.util.LinkedHashMap;
import javax.servlet.ServletException;
import javax.servlet.http.*;


public class UpdatePro extends HttpServlet {



    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pro_id=request.getParameter("pro_id");
        String pro_name=request.getParameter("pro_name");
        String pro_publish=request.getParameter("pro_publish_data");
        String pro_status=request.getParameter("pro_status");
        
        String condition="WHERE pro_id=?";
        String[] param={pro_id};
        LinkedHashMap<String,String> map=new LinkedHashMap<>();
        map.put("pro_id", pro_id);
        map.put("pro_name", pro_name);
        map.put("pro_publish_data", pro_publish);
        map.put("pro_status", pro_status);
        
       if(new CRUD().updateRows("product",map,condition,param)){
           Alert.setMessage("success", " Great!! ", " Updated Successfully!! ");
           response.sendRedirect("admin/pro_view.jsp?pro_id="+pro_id);
       }
       else{
           Alert.setMessage("danger", " oh!! ", " Updated Failed!! ");
           response.sendRedirect("admin/pro_view.jsp?pro_id="+pro_id);
       }
    }

    
}
