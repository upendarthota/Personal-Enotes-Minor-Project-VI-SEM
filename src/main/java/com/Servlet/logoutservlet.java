package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/Logoutservlet")
public class logoutservlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			HttpSession session = request.getSession();
			session.invalidate();
			// session.removeAttribute("userD");

			HttpSession session2 = request.getSession();
			session2.setAttribute("logoutmsg", "Logout successfully....");

			response.sendRedirect("login.jsp");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
