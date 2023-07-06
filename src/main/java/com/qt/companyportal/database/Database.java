
package com.qt.companyportal.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Database {
    
    private static final String DATABASE = "database_db";
    private static final String DBURL = "jdbc:mysql://localhost/" + DATABASE;
    private static final String DBUSER = "root";
    private static final String DBPASS = "12345";

    public static Connection connectDb() {
        Connection con = null;
        try {
            //Driver Registration
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
           System.out.println("Connention Successfull");
        } catch (ClassNotFoundException | SQLException e) { 
            System.out.println(e.getMessage());
        }
        return con;
    }

    public static void main(String[] args) {
       Database.connectDb();
    }
    
}
