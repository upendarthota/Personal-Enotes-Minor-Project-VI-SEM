<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<%@include file="allcomponents/allcss.jsp"%>
</head>
<body>
	<%@include file="allcomponents/navbar.jsp"%>
	<div class="continer-fluid bcol">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center  text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Registration</h4>
					</div>

					<%
					String regmsg = (String) session.getAttribute("reg-success");
					if (regmsg != null) {
					%>

					<div class="alert alert-success" role="alert">
						<%=regmsg%>Login <a href="login.jsp">Click here</a>
					</div>
					<%
					session.removeAttribute("reg-success");
					}
					%>


					<%
					String failmsg = (String) session.getAttribute("failmsg");
					if (failmsg != null) {
					%>

					<div class="alert alert-danger" role="alert">
						<%=failmsg%>Register <a href="register.jsp">Click here</a>
					</div>
					<%
					session.removeAttribute("failmsg");
					}
					%>



					<div class="card-body">
						<form method="post" action="Userservlet">
							<div class="form-group">
								<label for="fullname">Full Name</label> <input type="text"
									class="form-control" id="fullname" aria-describedby="emailHelp"
									placeholder="Enter FullName" name="fname">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									name="email"> <small id="emailHelp"
									class="form-text text-muted">We'll never share your
									email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" name="password">
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Check me out</label>
							</div>
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