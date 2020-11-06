
package auction.controller;

import auction.mysql.CRUD;
import auction.services.Alert;
import java.io.*;
import java.util.LinkedHashMap;
import javax.servlet.ServletException;
import javax.servlet.http.*;


public class AddCategory extends HttpServlet {



    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String cat_name=request.getParameter("cat_name");
        String cat_publish=request.getParameter("cat_publish");
        LinkedHashMap<String,String> map=new LinkedHashMap<>();
        map.put("cat_name", cat_name);
        map.put("cat_publish", cat_publish);
       if(new CRUD().insertInto("product_categoy",map)){
           Alert.setMessage("success", " Great!! ", " Inserted Successfully!! ");
           response.sendRedirect("admin/categry.jsp");
       }
       else{
           Alert.setMessage("danger", " oh!! ", "Insertion Failed!!");
       }
    }

    
}
