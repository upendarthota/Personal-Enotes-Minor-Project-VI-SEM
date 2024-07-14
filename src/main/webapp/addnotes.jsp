<%@page import="com.Db.DBConnect,com.DAO.PostDAO,com.User.UserDetails,com.User.Post"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    UserDetails user1=(UserDetails)session.getAttribute("userD");
     if(user1==null){
    	response.sendRedirect("login.jsp");
    	session.setAttribute("login-error","Please Login...");
    }
    %>
         
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="allcomponents/allcss.jsp" %>
</head>
<body>
<div class="container-fluid">
<%@include file="allcomponents/navbar.jsp" %>
<h1 class="text-center">Add your Notes</h1>
<div class="container">
<div class="row">
<div class="col-md-12">

  
<form action="AddNotesServlet" method="post">
  <div class="form-group">
  
    <%
  UserDetails us=(UserDetails)session.getAttribute("userD");
  if(us!=null){
	  %>
	  
 
  
  <input type="hidden" value="<%=us.getId()%>" name="uid"> 
  <%  }
  %>
  
    <label for="exampleInputEmail1">Enter Title</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="title" placeholder="Enter title">
   </div>
   
   <div class="form-group">
       <label for="exampleInputEmail1" >Enter Content</label>
   
   <textarea rows="10" cols=""  class="form-control"   name="content"></textarea>
   
   </div>
   
   <div class="container text-center"> 
  <button type="submit" class="btn btn-primary">Add Notes</button>
  </div>
</form>

</div>


</div>

</div>
</div>

<%@include file="allcomponents/footer.jsp" %>
</body>
</html>