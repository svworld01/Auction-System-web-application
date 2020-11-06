
package auction.controller;

import auction.mysql.CRUD;
import auction.services.Alert;
import java.io.*;
import java.util.LinkedHashMap;
import javax.servlet.ServletException;
import javax.servlet.http.*;


public class Update_sel extends HttpServlet {



    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sel_id=request.getParameter("sel_id");
        String sel_name=request.getParameter("sel_name");
        String sel_phone=request.getParameter("sel_phone");
        String sel_gender=request.getParameter("sel_gender");
        String sel_website=request.getParameter("sel_website");
        String sel_status=request.getParameter("sel_status");
        
        String condition="WHERE sel_id=?";
        String[] param={sel_id};
        LinkedHashMap<String,String> map=new LinkedHashMap<>();
        map.put("sel_id", sel_id);
        map.put("sel_name", sel_name);
        map.put("sel_phone", sel_phone);
        map.put("sel_gender", sel_gender);
        map.put("sel_website", sel_website);
        map.put("sel_status", sel_status);
        
       if(new CRUD().updateRows("sellers",map,condition,param)){
           Alert.setMessage("success", " Great!! ", " Updated Successfully!! ");
           response.sendRedirect("admin/sel_view.jsp?sel_id="+sel_id);
       }
       else{
           Alert.setMessage("danger", " oh!! ", " Updated Failed!! ");
           response.sendRedirect("admin/sel_view.jsp?sel_id="+sel_id);
       }
    }

    
}
