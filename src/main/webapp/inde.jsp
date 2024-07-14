<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.back-img {
	background: url("Images/b.jpg");
	width: 100%;
	height: 80vh;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

.content-1 {
	font-family: adobe-garamond-pro, serif;
	font-size: 42px;
	font-style: italic;
	font-weight: normal;
	letter-spacing: normal;
	line-height: 52px;
	text-transform: none;
	color: #343434;
}

.foot {
	height: 10vh;
}
</style>
<title>Home Page</title>
<%@include file="allcomponents/allcss.jsp"%>

</head>
<body>


 <%@include file="allcomponents/navbar.jsp"%> 

	<div class="continer-fluid back-img ">
		<div class="text-center">
			<h1 class="text-white">
				<i class="fa fa-book" aria-hidden="true"></i>Personal E-Notes 
			</h1>
			<a href="login.jsp" class="btn btn-light"><i
				class="fa fa-user-circle-o" aria-hidden="true"></i> Login</a> <a
				href="register.jsp" class="btn btn-light"><i
				class="fa fa-user-plus" aria-hidden="true"></i> Register</a>



		</div>


		<div class="text-center mt-5">
			<h1 class="text-white content-1">WELCOME</h1>

			<p class="content-1">
				" When Your heart <br> Speaks,take<br> good notes"
			<p>
		</div>




	</div>

	<%@include file="allcomponents/footer.jsp"%>
</body>
</html>