package auction.controller;

import auction.mysql.CRUD;
import java.io.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class AddProduct extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String img="";
       LinkedHashMap<String,String> map=new LinkedHashMap<>();
       try{
           ServletFileUpload sf=new ServletFileUpload(new DiskFileItemFactory());
           List<FileItem> multifiles=sf.parseRequest(request);
           for(FileItem item:multifiles){
               if(item.isFormField()){
                   map.put(item.getFieldName(), item.getString());
               }
               else{
                   item.write(new File("C:\\Users\\The Robust Coder\\Documents\\NetBeansProjects\\auction system\\web\\upload\\"+item.getName()));
                   img=item.getName();
               }
           }
           
       }catch(Exception e){
           System.out.println(e);
       }
        map.put("pro_img",img);
        if(new CRUD().insertInto("product", map)){
            System.out.println("Successfully Addedd!!");
            response.sendRedirect("admin/product.jsp");
        }
        else{
            System.out.println("Failed!!");
        }
    }
   

}
