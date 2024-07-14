<%@page
	import="com.Db.DBConnect,com.DAO.PostDAO,com.User.Post,java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
UserDetails user3 = (UserDetails) session.getAttribute("userD");

if (user3 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "Please Login...");
}
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShowNotes</title>
<%@include file="allcomponents/allcss.jsp"%>
</head>
<body>
	<%@include file="allcomponents/navbar.jsp"%>
	<%
	String update = (String) session.getAttribute("updatemsg");

	if (update != null) {
	%>
	<div class="alert alert-success" role="alert"><%=update%></div>

	<%
	session.removeAttribute("update");
	%>

	<%
	}
	%>

	<%
	String wrongmsg = (String) session.getAttribute("wrongmsg");

	if (wrongmsg != null) {
	%>
	<div class="alert alert-danger" role="alert"><%=wrongmsg%></div>

	<%
	session.removeAttribute("wrongmsg");
	%>

	<%
	}
	%>






	<div class="container">
		<h2 class="text-center">All Notes</h2>
		<div class="row">
			<div class="col-md-12">
				<%
				if (user3 != null) {
					PostDAO ob = new PostDAO(DBConnect.getConn());
					List<Post> post = ob.getData(user3.getId());
					for (Post po : post)

					{
				%>


				<div class="card mt-3">
					<img alt="" src="Images/saveeee.jpg"
						class="card-img-top mt-2 mx-auto" style="max-width: 100px;">
					<div class="card-body p-4">




						<h5 class="card-title">
							<%=po.getTitle()%></h5>
						<p><%=po.getContent()%></p>

						<p>
							<b class="text-success">Published By:<%=user3.getName()%></b><br>

							<b class="text-primary"></b>
						</p>

						<p>
							<b class="text-success">Published Date:<%=po.getpdate()%></b><br>
							<b class="text-primary"></b>
						</p>





						<div class="container text-center mt-2">
							<a href="deleteservlet?note_id=<%=po.getId()%>"
								class="btn btn-danger">Delete</a>
								 <a href="edit.jsp?note_id=<%=po.getId()%>" class="btn btn-primary">Edit</a>

						</div>
					</div>
				</div>
				<%
				}

				}
				%>

			</div>

		</div>

	</div>


	<%@include file="allcomponents/footer.jsp"%>
</body>
</html>