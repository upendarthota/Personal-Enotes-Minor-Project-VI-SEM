package com.Servlet;

import java.io.IOException;

import com.DAO.UserDAO;
import com.Db.DBConnect;
import com.User.UserDetails;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 
@SuppressWarnings("serial")
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	 

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String uemail=request.getParameter("uemail");
	String upwd=request.getParameter("upwd");
	
	UserDetails us=new UserDetails();
	us.setEmail(uemail);
	us.setPassword(upwd);
	
	UserDAO dao=new UserDAO(DBConnect.getConn());
	
	UserDetails user=dao.loginuser(us);
	
	if(user!=null) {
		
		HttpSession session=request.getSession();
		session.setAttribute("userD",user);
		
		response.sendRedirect("home.jsp");
	}
	
	else {
		
		HttpSession session=request.getSession();
		session.setAttribute("loginfail","Invalid email and password");
		response.sendRedirect("login.jsp");
	}
	
	
	}

}
