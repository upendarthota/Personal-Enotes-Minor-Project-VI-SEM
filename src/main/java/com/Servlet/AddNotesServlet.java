package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.PostDAO;
import com.Db.DBConnect;

@SuppressWarnings("serial")
@WebServlet("/AddNotesServlet")
public class AddNotesServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uuid = request.getParameter("uid");
		int uid = Integer.parseInt(uuid);
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		PostDAO dao = new PostDAO(DBConnect.getConn());
		boolean f = dao.AddNotes(title, content, uid);

		if (f == true) {
			System.out.print("Data Inserted Succesfully");
			// response.sendRedirect("shownotes.jsp");
		} else {
			System.out.print("data not inserted");
			response.sendRedirect("shownotes.jsp");
		}
	}

}
