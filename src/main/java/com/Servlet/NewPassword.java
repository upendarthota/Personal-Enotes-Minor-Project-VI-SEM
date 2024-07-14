package com.Servlet;

//import com.DAO.UserDAO;

import java.io.IOException;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//
//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//
//import com.Db.DBConnect;
import com.User.UserDetails;

@WebServlet("/newPassword")
public class NewPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

 	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");

//		String newPassword = request.getParameter("password");
//		String confPassword = request.getParameter("confPassword");

		// email is already registered or not in the database

		UserDetails us = new UserDetails();
		us.setEmail(email);

//		if (us) {
//
//			if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {
//				UserDAO dao = new UserDAO(DBConnect.getConn());
//				UserDetails user = dao.change(us);
//				session = request.getSession();
//				session.setAttribute("status", "Password changed successfully Successfully");
//				response.sendRedirect("login.jsp");
//
//			}
//
//		} else {
//			session = request.getSession();
//			session.setAttribute("status", "Something went wrong");
//			response.sendRedirect("register.jsp");
//
//		}

	}
}
