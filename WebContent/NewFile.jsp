<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP FORM</title>
	</head>
	<style>
		.container{
			display: flex;
			flex-direction: column;
			align-items: flex-start;
			background-color: #F0E68C;
		}
		.item{
			flex: 1,
		}
		.ruler{
			border: 1px solid green;
		}
	</style>
	<body>
		<form class="container">
			<div class="item">
				<span>UserName:&#42;</span>
				<input name="username" type="text"/>			
				<hr class="ruler">
			</div>
			<div class="item">
				<span>Email Address:&#42;</span>
				<input name="useremail" type="email"/>			
				<hr class="ruler">
			</div>
			<div class="item">
				<span>Phone Number:&#42;</span>
				<input name="phone" type="number"/>			
				<hr class="ruler">
			</div>
			<div class="item">
				<span>Age:&#42;</span>
				<input name="age" type="number"/>			
				<hr class="ruler">
			</div>
			<div class="item">
				<input type="submit"/>
			</div>
		</form>
		<%= "Name :"+" "+request.getParameter("username") %>
		<br/>  
		<%= "Email :"+" "+request.getParameter("useremail") %>  
		<br/>
		<%="PhoneNumber :"+" "+ request.getParameter("phone") %>  
		<br/>
		<%= "Age :"+" "+request.getParameter("age") %>  
	</body>
</html>