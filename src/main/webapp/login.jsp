<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@include file="allcomponents/allcss.jsp"%>
</head>

<style>

 
</style>
<body>
	<%@include file="allcomponents/navbar.jsp"%>
	<div class="continer-fluid bcol">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center  text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Login</h4>
					</div>


					<%
					String logfail = (String) session.getAttribute("loginfail");
					if (logfail != null) {
					%>

					<div class="alert alert-danger" role="alert"><%=logfail%>
					</div>
					<%
					session.removeAttribute("loginfail");
					}
					%>




					<%
					String withoutlogin = (String) session.getAttribute("login-error");
					if (withoutlogin != null) {
					%>

					<div class="alert alert-danger" role="alert"><%=withoutlogin%></div>
					<%
					session.removeAttribute("login-error");
					}
					%>


					<%
					response.setHeader("Cache-Control", "no-Cache, no-store ,must-revalidate");
					response.setHeader("Pragma", "no-cache");
					response.setHeader("Expires", "0");

					String logout = (String) session.getAttribute("logoutmsg");
					if (logout != null) {
					%>


					<div class="alert alert-success" role="alert"><%=logout%></div>

					<%
					session.removeAttribute("logoutmsg");
					}
					%>

					<div class="card-body">
						<form method="post" action="loginServlet">

							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									name="uemail"> <small id="emailHelp"
									class="form-text text-muted">We'll never share your
									email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" name="upwd">
							</div>
							
							 <a href="forgotPassword.jsp">Forgot Password</a>
							

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="allcomponents/footer.jsp"%>
</body>
</html>