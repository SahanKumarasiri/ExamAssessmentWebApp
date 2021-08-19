package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
  
// This class can be used to initialize the database connection
public class DBConnectionUtilLecturer {
    public static Connection initializeDatabase() throws SQLException, ClassNotFoundException{
        // Initialize all the information regarding
        // Database Connection
        String dbDriver = ConstantsForLecturer.DB_DRIVER;
        String dbURL = ConstantsForLecturer.URL;
        // Database name to access
        String dbName = ConstantsForLecturer.DB_NAME;
        String dbUsername = ConstantsForLecturer.USER;
        String dbPassword = ConstantsForLecturer.PASSWORD;
  
        Class.forName(dbDriver);
        Connection con = DriverManager.getConnection(dbURL + dbName,
                                                     dbUsername, 
                                                     dbPassword);
        return con;
    }
}