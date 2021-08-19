package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.LecturerLogin;
import com.util.DBLecturerLogin;

@WebServlet("/login")
public class LecturerLoginServelet extends HttpServlet {
    private static final long serialVersionUID = 1;
    private DBLecturerLogin loginDao;

    public void init() {
        loginDao = new DBLecturerLogin();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	
    	PrintWriter pw=response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        LecturerLogin loginBean = new LecturerLogin();
        loginBean.setUsername(username);
        loginBean.setPassword(password);

        try {
            if (loginDao.validate(loginBean)) {
                //HttpSession session = request.getSession();
                // session.setAttribute("username",username);
                response.sendRedirect("JSP/lecturerLoginSuccessfull.jsp");
            } else {
                @SuppressWarnings("unused")
				HttpSession session = request.getSession();
                //session.setAttribute("user", username);
                pw.println("Login Failed...!");
                response.sendRedirect("JSP/lecturerLoginFail.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}