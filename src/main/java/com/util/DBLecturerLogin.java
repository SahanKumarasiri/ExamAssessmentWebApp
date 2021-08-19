package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.LecturerLogin;

public class DBLecturerLogin {

    public boolean validate(LecturerLogin loginBean) throws ClassNotFoundException {
        boolean status = false;

        Class.forName(ConstantsForLecturer.DB_DRIVER);
        
        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/exam_moodle?useSSL=false", ConstantsForLecturer.USER, ConstantsForLecturer.PASSWORD);

                // Step 2:Create a statement using connection object
                PreparedStatement preparedStatement = connection
                .prepareStatement("select * from user where username = ? and password = ? ")) {
                preparedStatement.setString(1, loginBean.getUsername());
                preparedStatement.setString(2, loginBean.getPassword());

                System.out.println(preparedStatement);
                ResultSet rs = preparedStatement.executeQuery();
                status = rs.next();

            } catch (SQLException e) {
                // process sql exception
                printSQLException(e);
            }
            return status;
        }

        private void printSQLException(SQLException ex) {
            for (Throwable e: ex) {
                if (e instanceof SQLException) {
                    e.printStackTrace(System.err);
                    System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                    System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                    System.err.println("Message: " + e.getMessage());
                    Throwable t = ex.getCause();
                    while (t != null) {
                        System.out.println("Cause: " + t);
                        t = t.getCause();
                    }
                }
            }
        }
    }