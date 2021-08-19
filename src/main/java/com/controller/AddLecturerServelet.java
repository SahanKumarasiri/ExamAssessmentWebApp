package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Import Database Connection Class file
import com.util.DBConnectionUtilLecturer;
  
// Servlet Name
@WebServlet("/AddLecturerServelet")
public class AddLecturerServelet extends HttpServlet {
    private static final long serialVersionUID = 1L;
  
    protected void doPost(HttpServletRequest request, 
HttpServletResponse response)
        throws ServletException, IOException
    {
        try {
  
            // Initialize the database
            Connection con = DBConnectionUtilLecturer.initializeDatabase();
  
            // Create a SQL query to insert data into demo table
            // demo table consists of two columns, so two '?' is used
            PreparedStatement st = con
                   .prepareStatement("insert into lecturer (paperID, paperType, paperVersion, faculty, department, datePublished, signature, duration) values (?, ?, ?, ?, ?, ?, ?, ?)");
  
            // For the first parameter,
            // get the data using request object
            // sets the data to st pointer
            st.setString(1,(request.getParameter("paperID")));
            st.setString(2,(request.getParameter("paperType")));
            st.setString(3,(request.getParameter("paperVersion")));
            st.setString(4,(request.getParameter("faculty")));
            st.setString(5,(request.getParameter("department")));
            st.setString(6,(request.getParameter("datePublished")));
            st.setString(7,(request.getParameter("signature")));
            st.setDouble(8, Double.valueOf(request.getParameter("duration")));
  
            // Execute the insert command using executeUpdate()
            // to make changes in database
            st.executeUpdate();
  
            // Close all the connections
            st.close();
            con.close();
  
            // Get a writer pointer 
            // to display the successful result
            PrintWriter out = response.getWriter();
            out.println("<html><head><title>Paper Added</title></head><body> <center><h1 style='color:red'>Paper Added Successfully  </h1><br><br><a href='/ExamAssessmentWebApp/JSP/paper.jsp'><button  style='background-color:green;color:white;padding:5px'>Publish Paper</button></a><a href='/ExamAssessmentWebApp/JSP/ListLecturers.jsp'><button  style='background-color:gray;color:white;padding:5px'>List All Papers</button></a></center></body></html>");
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
}