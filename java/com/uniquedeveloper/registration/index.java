package com.uniquedeveloper.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/index")
public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String location= request.getParameter("location");
		String destination= request.getParameter("destination");
		HttpSession session=request.getSession();
		request.setAttribute("status","invalid");
		RequestDispatcher dispatcher =request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			try (Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/person?allowPublicKeyRetrieval=true&useSSL=false",
                    "root", "your_password")) {
			PreparedStatement pst = con.prepareStatement("select * from users where location=? and destination=?");
			pst.setString(1, location);
			pst.setString(2, destination);
			ResultSet rs= pst.executeQuery();
			if(rs.next()) {
				session.setAttribute("fare", rs.getString("fare"));
				RequestDispatcher dispatcher1 =request.getRequestDispatcher("index.jsp");
				dispatcher1.forward(request, response);
			}else {
				
			}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }
}
