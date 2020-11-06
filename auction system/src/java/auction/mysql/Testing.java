/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package auction.mysql;

import java.util.LinkedHashMap;
import java.util.LinkedList;

/**
 *
 * @author The Robust Coder
 */
public class Testing {
    public static void main(String... Arr) {
     CRUD c=new CRUD(); 
     String[] param={"200"};
     String condition="WHERE id=?";
//        LinkedList<LinkedHashMap<String,String>> l;
//        l=new LinkedList<>();
//        l= c.selectAllRecards("test", "*", condition, param);
//        for(LinkedHashMap<String,String> map:l){
//            System.out.println(map);
//        }
        LinkedHashMap<String,String> m=new LinkedHashMap<>();
//        m.put("id", "300");
//        m.put("name", "saurabh");
//        m.put("email", "saurabh@gmail.com");
//        m.put("password", "saurabh");
//        c.insertInto("test", m);
        //c.deleteRow("test", condition, param);
        m.put("name", "pawan");
        m.put("email", "pawan@gmail.com");
        c.updateRows("test", m, condition, param);
    }
}
