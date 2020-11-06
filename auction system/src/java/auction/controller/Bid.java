
package auction.controller;
import auction.mysql.CRUD;
import auction.services.Alert;
import auction.services.DateTime;
import java.util.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Bid extends HttpServlet {
        
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DateTime d = new DateTime();
        String currentDate = DateTime.getDate();
        String currentTime  = DateTime.getTime();
        HttpSession session=request.getSession();
        int bid_cost=Integer.parseInt(request.getParameter("bid_cost"));
        System.out.println(bid_cost);
        CRUD crud = new CRUD();
        String condition="WHERE pro_id=? ";
        String [] param={session.getAttribute("proID").toString()};
        LinkedHashMap<String,String> map, insertBid = new LinkedHashMap<>();
        map=crud.selectAllRecards("product", "*", condition, param).getFirst();
        if(map.get("bid_status").equals("0")){
            if(Integer.parseInt(map.get("pro_min_cast")) < bid_cost){
                LinkedHashMap userData = (LinkedHashMap)session.getAttribute("user");
                //check
                System.out.println("USERDATA : "+userData);
                insertBid.put("pro_id", session.getAttribute("proID").toString());
                insertBid.put("cus_id", (String)userData.get("cus_id"));
                insertBid.put("bid_cost", ""+bid_cost);
                insertBid.put("bid_date", currentDate);
                insertBid.put("bid_time", currentTime);
                //check
                System.out.println("InsertBId : "+insertBid);
                if(crud.insertInto("bids", insertBid)){
                    LinkedHashMap<String, String> setupdate = new LinkedHashMap<>();
                    setupdate.put("bid_status", "1");
                    if(crud.updateRows("product", setupdate, condition, param)){
                        Alert.setMessage("success", "Congratulations!", " Your bid is successfully submitted !!");
                        response.sendRedirect("bid.jsp");
                    }

                }
            }else{
                Alert.setMessage("danger", "Oh No !", "You have to bid for greator than last bided amount..");
                response.sendRedirect("bid.jsp");
            }
        }else{
          
            condition = " where pro_id = ? order by id desc limit 1";
            
            int bidAmount =Integer.parseInt(crud.selectAllRecards("bids", " * ", condition, param).getFirst().get("bid_cost"));
            if(bid_cost>bidAmount){
                LinkedHashMap userData = (LinkedHashMap)session.getAttribute("user");
                insertBid.put("pro_id", session.getAttribute("proID").toString());
                insertBid.put("cus_id", (String)userData.get("cus_id"));
                insertBid.put("bid_cost", ""+bid_cost);
                insertBid.put("bid_date", currentDate);
                insertBid.put("bid_time", currentTime);
                if(crud.insertInto("bids", insertBid)){
                     Alert.setMessage("success", "Congratulations!", " Your bid is successfully submitted !!");
                    response.sendRedirect("bid.jsp");
                }
            }else{
                Alert.setMessage("danger", "Oh No !", "You have to bid for greator than last bided amount..");
                response.sendRedirect("bid.jsp");
            }
        }
    }
}
