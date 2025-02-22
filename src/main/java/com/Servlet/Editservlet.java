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
@WebServlet("/Editservlet")
public class Editservlet extends HttpServlet {
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		try {
			
			 
			int noteid=Integer.parseInt(request.getParameter("nnoteid"));
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			PostDAO dao=new PostDAO(DBConnect.getConn());
			boolean f=dao.PostUpdate(noteid, title,content);
			
			if(f==true) {
 				System.out.print("data updated successfully");
				HttpSession session=request.getSession();
				session.setAttribute("updatemsg","Notes Updated Successfully");
				response.sendRedirect("shownotes.jsp");
			}
			else {
				System.out.println("data not inserted");

//				System.out.print("data updated successfully");
//				HttpSession session=request.getSession();
//				session.setAttribute("updatemsg","Notes Updated Successfully");
//				response.sendRedirect("shownotes.jsp");
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
	}

}
