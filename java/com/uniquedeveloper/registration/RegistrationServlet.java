package com.uniquedeveloper.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class RegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uname = request.getParameter("name");
        String uemail = request.getParameter("email");
        String umobile = request.getParameter("contact");
        String upwd = request.getParameter("pass");
        String re_pass= request.getParameter("re_pass");
        
        if(uname==null || uname.equals("") || upwd==null || upwd.equals("") || uemail==null || uemail.equals("")) {
			request.setAttribute("status","invalidR");
			RequestDispatcher dispatcher =request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
		}
        else if(umobile.length()!=10) {
        	request.setAttribute("status","mobEr");
			RequestDispatcher dispatcher =request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
        }
        else if(!upwd.equals(re_pass)) {
        	request.setAttribute("status","RepassEr");
			RequestDispatcher dispatcher =request.getRequestDispatcher("registration.jsp");
			dispatcher.forward(request, response);
        }
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/online_cab?allowPublicKeyRetrieval=true&useSSL=false",
                    "root", "your_password")) {

                PreparedStatement pst = con.prepareStatement(
                        "insert into users(uname, upwd, uemail, umobile) values(?, ?, ?, ?)");
                pst.setString(1, uname);
                pst.setString(2, upwd);
                pst.setString(3, uemail);
                pst.setString(4, umobile);

                int rowCount = pst.executeUpdate();
                if (rowCount > 0) {
                    request.setAttribute("status", "success");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
                    dispatcher.forward(request, response);
                } else {
                    request.setAttribute("status", "error");
                    // response.sendRedirect("error.jsp");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Your logic here
        // For example, you can set response content type and write some output:
        response.setContentType("text/plain");
        response.getWriter().write("Served at: " + request.getContextPath());
    }
}
