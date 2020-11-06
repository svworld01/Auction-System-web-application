package auction.mysql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Login extends CRUD{
    private String user_type;

    public String getUser_type() {
        return user_type;
    }

    public void setUser_type(String user_type) {
        this.user_type = user_type;
    }
    
    public int athinticate(String email,String password){
        if(getUser_type()==null){
            return 0;
        }
        if(getUser_type().equals("admin")){
            return athinticateAdmin(email,password);
        }
        if(getUser_type().equals("user")){
            return athinticateUser(email, password);
        }
        return 4;
    }
    private int athinticateAdmin(String email,String password) {//admin athentication method opren
        int result=0;
        Connection con=getConnection();
        String sql="select * from admin where email=?";
        try{
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1,email);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                if(rs.getString("password").equals(password)){
                    result=1;
                }
                else{
                    result=3;
                }
                
            }
            else{
                result=2;
            }
        }catch(Exception e){
            System.out.println(e);
        }
        finally{
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return result;
    }
     private int athinticateUser(String email,String password){
          int result=0;
        Connection con=getConnection();
        String sql="select * from user where email=?";
         try{
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1,email);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                if(rs.getString("password").equals(password)){
                    result=1;
                }
                else{
                    result=3;
                }
                
            }
            else{
                result=2;
            }
        }catch(Exception e){
            System.out.println(e);
        }
         finally{
              try {
                  con.close();
              } catch (SQLException ex) {
                  Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
              }
         }
        return result;
    }
    //*********Update any table*********//
     public boolean UpdateRow(String tbname, LinkedHashMap<String,String> set, String condition, String[] parameters){
         String query = "UPDATE `"+tbname+"` SET ";
         String setdata = "";
         String para="";
         for(Map.Entry e: set.entrySet()){
             setdata +=" `"+e.getKey()+"` = ? ,";
         }
         setdata = setdata.substring(0, setdata.lastIndexOf(","));
         query += setdata + " "+condition;
         System.out.println(query);
         
         //creating connection
         Connection con = getConnection();
         try{
             PreparedStatement ps = con.prepareStatement(query);
             int setCounter= 1;
             for(Map.Entry e: set.entrySet()){
                 ps.setString(setCounter++, e.getValue().toString());
             }
             int paramCounter = 0;
             do{
                 ps.setString(setCounter++, parameters[paramCounter++]);
             }while(paramCounter<parameters.length);
             
             return (ps.executeUpdate()>0);
         }catch(Exception ex){
             System.out.println(ex);
         }
         return false;
     }
}
/*

if return 
1-success
3-password error
2-email error
*/