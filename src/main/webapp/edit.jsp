<%@page import="com.Db.DBConnect,com.DAO.PostDAO,com.User.Post"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");
if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "Please Login...");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Page</title>
<%@include file="allcomponents/allcss.jsp"%>
</head>
<body>
	<%
	int noteid = Integer.parseInt(request.getParameter("note_id"));

	PostDAO post = new PostDAO(DBConnect.getConn());
	Post p = post.getdatabyid(noteid);
	%>



	<div class="container-fluid">
		<%@include file="allcomponents/navbar.jsp"%>
		<h1 class="text-center">Edit your Notes</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">


					<form action="Editservlet" method="post">
						<input type="hidden" value="<%=noteid%>" name="nnoteid">
						<div class="form-group">



							<label for="exampleInputEmail1">Edit Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="title"
								placeholder="Enter title" value="<%=p.getTitle()%>">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Edit Content</label>

							<textarea rows="10" cols="" class="form-control" name="content"> <%=p.getContent()%> </textarea>
						</div>

						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Save Notes</button>
						</div>
					</form>

				</div>


			</div>

		</div>
	</div>

	<%@include file="allcomponents/footer.jsp"%>



</body>
</html>