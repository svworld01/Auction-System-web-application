package auction.mysql;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author The Robust Coder
 */
public class DataBase {
    
    public Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/auction","root","");
        }catch(Exception e){
            System.out.println(e);
        }
        return con;
    }
}
