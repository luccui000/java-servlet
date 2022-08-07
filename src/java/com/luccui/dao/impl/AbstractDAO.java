package com.luccui.dao.impl;
 
import com.luccui.utils.Database;
import java.sql.Connection;
import java.sql.SQLException;

public class AbstractDAO {
    protected Connection conn;
    
    public AbstractDAO() {
        try {
            Database db = Database.getInstance();
            this.conn = db.getConnection();
        } catch(SQLException ex) {
            
        } 
    }

    public Connection getConn() {
        return conn;
    } 
}
