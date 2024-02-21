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

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname= request.getParameter("username");
		String upwd= request.getParameter("password");
		HttpSession session=request.getSession();
		if(uname==null || uname.equals("") || upwd==null || upwd.equals("")  ) {
			request.setAttribute("status","invalid");
			RequestDispatcher dispatcher =request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		try {
			Class.forName("com.mysql.jdbc.Driver");
			try (Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/online_cab?allowPublicKeyRetrieval=true&useSSL=false",
                    "root", "your_password")) {
			PreparedStatement pst = con.prepareStatement("select * from users where uname=? and upwd=?");
			pst.setString(1, uname);
			pst.setString(2, upwd);
			ResultSet rs= pst.executeQuery();
			if(rs.next()) {
				session.setAttribute("name", rs.getString("uname"));
				RequestDispatcher dispatcher1 =request.getRequestDispatcher("index.jsp");
				dispatcher1.forward(request, response);
			}else {
				request.setAttribute("status", "failed");
				RequestDispatcher dispatcher2 = request.getRequestDispatcher("login.jsp");
				dispatcher2.forward(request, response);
			}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }

}
