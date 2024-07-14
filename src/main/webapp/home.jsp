<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
response.setHeader("Cache-Control", "no-Cache, no-store ,must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");

UserDetails user2 = (UserDetails) session.getAttribute("userD");

if (user2 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "Please Login...");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<%@include file="allcomponents/allcss.jsp"%>
</head>
<body>
	<div class="container-fluid p-0">
		<%@include file="allcomponents/navbar.jsp"%>
		<div class="card py-5">
			<div class="card-body text-center">

				<img alt="" src="Images/a.jpg" class="img-fluid mx-auto"
					style="max-width: 300px;">
				<h1>START TAKING NOTES</h1>
				<a href="addnotes.jsp" class="btn btn-outline-primary">start
					here</a>

			</div>
		</div>
	</div>
	<%@include file="allcomponents/footer.jsp"%>
</body>
</html>