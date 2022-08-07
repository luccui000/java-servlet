package com.luccui.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

 
public class Database {
    private Connection connection = null;
    private static Database Instance = null;
    private static String DB_URL = "jdbc:mysql://localhost:3306/web_ban_hang";
    private static String DB_USERNAME = "root";
    private static String DB_PASSWORD = ""; 
    
    private Database() { 
        try { 
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            this.connection = DriverManager.getConnection(Database.DB_URL, Database.DB_USERNAME, Database.DB_PASSWORD); 
        } catch (Exception ex) { 
            ex.printStackTrace();
        } 
    } 
    public static Database getInstance() throws SQLException{
        if(Instance == null) {
            Instance = new Database();
        } else if (Instance.getConnection().isClosed()) {
            Instance = new Database();
        }
        return Instance;
    }
    public Connection getConnection() 
    { 
        return this.connection;
    } 
}
