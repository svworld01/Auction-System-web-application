
package auction.controller;

import auction.mysql.CRUD;
import auction.services.Alert;
import java.io.*;
import java.util.LinkedHashMap;
import javax.servlet.ServletException;
import javax.servlet.http.*;


public class UpdateCat extends HttpServlet {



    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cat_id=request.getParameter("cat_id");
        String cat_name=request.getParameter("cat_name");
        String cat_publish=request.getParameter("cat_publish");
        String status=request.getParameter("status");
        String deleted=request.getParameter("deleted");
        String condition="WHERE cat_id=?";
        String[] param={cat_id};
        LinkedHashMap<String,String> map=new LinkedHashMap<>();
        map.put("cat_id", cat_id);
        map.put("cat_name", cat_name);
        map.put("cat_publish", cat_publish);
        map.put("cat_status", status);
        map.put("cat_deleted", deleted);
       if(new CRUD().updateRows("product_categoy",map,condition,param)){
           Alert.setMessage("success", " Great!! ", " Updated Successfully!! ");
           response.sendRedirect("admin/cat_view.jsp?cat_id="+cat_id);
       }
       else{
           Alert.setMessage("danger", " oh!! ", " Updated Failed!! ");
           response.sendRedirect("admin/cat_view.jsp?cat_id="+cat_id);
       }
    }

    
}
