package db;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import javax.sql.DataSource;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import java.util.logging.Logger;

public class Database {
    
    private static Connection conn;
    private static InitialContext ic;
    private static DataSource ds;
    
    public static Connection getConnection(){
        try{
            ic = new InitialContext();
            ds = (DataSource) ic.lookup("java:comp/env/jdbs/_library");
            if(conn == null){
                conn = ds.getConnection();
            }
        }catch (SQLException | NamingException ex){
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }  
}
