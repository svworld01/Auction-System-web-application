package auction.mysql;

import java.sql.ResultSetMetaData;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CRUD extends DataBase {//open class
    public boolean executeUpdate(String sql) throws SQLException{
        Connection con=getConnection();
        try{
            PreparedStatement ps=con.prepareStatement(sql);
            int i=ps.executeUpdate();
            return (i>0);
            
        }catch(Exception e){
            System.out.println(e);
        }
        finally{
            con.close();
        }
        return false;
    }//close method
    
    public ResultSet executeQuery(String sql) throws SQLException{
        Connection con=getConnection();
        ResultSet rs=null;
        try{
            PreparedStatement ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
        }catch(Exception e){
            System.out.println(e);
        }
        return rs;
    }
    
    
    public LinkedList<LinkedHashMap<String,String>> selectAllRecards(String tbname,String columns,String condition,String[] param){
        LinkedList<LinkedHashMap<String,String>> list=new LinkedList<>();
        String query="SELECT "+columns+" FROM "+tbname+" "+condition;
        //System.out.println("Your Query : "+query);
        Connection con=getConnection();
        try{
            PreparedStatement ps=con.prepareStatement(query);
            for(int counter=0;counter<param.length;counter++){
                ps.setString(counter+1,param[counter]);
            }
            ResultSet rs=ps.executeQuery();
            ResultSetMetaData rsmd=rs.getMetaData();
            
            while(rs.next()){
                LinkedHashMap<String, String> map = new LinkedHashMap<>();
                for(int i=1; i<=rsmd.getColumnCount(); i++){
                    map.put(rsmd.getColumnName(i), rs.getString(i));
                }
                list.add(map);
            }
        }catch(Exception e){
            System.out.println(e);
        }
       finally{
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(CRUD.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return list;
            
    }
    
    
    //insert into database
    
    public boolean insertInto(String tbname,LinkedHashMap<String,String> map){
        Connection con=getConnection();
        int i=1;
        String query="INSERT INTO "+tbname+"( ";
        String col="";
        String param="";
        for(Map.Entry e:map.entrySet()){
            col+=e.getKey()+",";
            param+="?,";
        }
        col=col.substring(0, col.lastIndexOf(","));
        param=param.substring(0, param.lastIndexOf(","));
        query+=col+") VALUES ( "+param+") ";
        //System.out.println(query);
        try {
            PreparedStatement ps=con.prepareStatement(query);
            for(Map.Entry e:map.entrySet()){
                ps.setString(i++, (String) e.getValue());
                
            }
            
            return (ps.executeUpdate()>0);
        } catch (SQLException ex) {
            Logger.getLogger(CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
      
    return false;
    }//close methos
    
    //delete method
    
    public boolean deleteRow(String tbname,String condition,String[] param){
       
        String query="DELETE FROM "+tbname+" "+condition;
        Connection con=getConnection();
        try{
            PreparedStatement ps=con.prepareStatement(query);
            for(int i=0;i<param.length;i++){
                ps.setString(i+1, param[i]);
                
            }
            
            return (ps.executeUpdate()>0);
        }catch(Exception e){
            System.out.println(e);
        }
      return false;  
    }
    
    //update data
    public boolean updateRows(String tbname,LinkedHashMap<String,String> map,String condition,String[] param){
        int i=1;
        int j=0;
        Connection con=getConnection();
        String query="UPDATE "+tbname+" SET ";
        String setData="";
            for(Map.Entry e:map.entrySet()){
                setData+=e.getKey()+" = ?,";
                
            }
            setData=setData.substring(0, setData.lastIndexOf(","));
            query+=setData+" "+condition;
            //System.out.println(query);
            try{
                PreparedStatement ps=con.prepareStatement(query);
                for(Map.Entry e:map.entrySet())
                ps.setString(i++, (String) e.getValue());
                do{
                    ps.setString(i++,param[j++]);
                    
                }while(j<param.length);
                return (ps.executeUpdate()>0);
            
                
            }catch(Exception e){
                System.out.println(e);
            }finally{
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(CRUD.class.getName()).log(Level.SEVERE, null, ex);
            }
            }
        return false;
    }

    public boolean deleteRow(String product_categoy, String condition, String s) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}//close class
