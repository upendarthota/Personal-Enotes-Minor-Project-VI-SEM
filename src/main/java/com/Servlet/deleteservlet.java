package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.PostDAO;
import com.Db.DBConnect;

 
@SuppressWarnings("serial")
@WebServlet("/deleteservlet")
public class deleteservlet extends HttpServlet {
	 
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 Integer noteid=Integer.parseInt(request.getParameter("note_id"));
		 
		 PostDAO dao=new PostDAO(DBConnect.getConn());
		 boolean f=dao.deletenotes(noteid);
		 HttpSession session=null;
		 if(f)
		 {
			 session=request.getSession();
			 session.setAttribute("updatemsg","Notes Deleted Successfully");
			 response.sendRedirect("shownotes.jsp");
		 }
		 else {
			 session=request.getSession();
			 session.setAttribute("wrongmsg","something went wrong");
			 response.sendRedirect("shownotes.jsp");
		 }
		 
	}

	 
}
