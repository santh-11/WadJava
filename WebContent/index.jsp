<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login page</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" 
    integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" 
    crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="/js/bootstrap.js"></script>
     <script src="/js/jquery-1.11.3.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-11 col-sm-9 col-xs-8">
				<div class="box">
					<form action="Valid" method="POST">
						<h2 id="login">Login</h2>
						<div class="col-lg-12 col-md-11 col-sm-9 col-xs-10">
							<div class="inputBox">
								<input type="text" name="name" id="name" required="required"
									autofocus> <label>Username</label>
							</div>
						</div>
						<div class="col-lg-12 col-md-11 col-sm-9 col-xs-10">
							<div class="inputBox">
								<input type="password" name="password" id="password"
									required="required"> <label>Password</label>
							</div>
						</div>
						<div class="col-lg-12 col-md-11 col-sm-9 col-xs-6">
							<input type="submit" id="submit" value="SignIn">
							<button id="signup">
								<a href="signup.jsp" target="_self">SignUp <span class="fas fa-sign-in-alt"></span> </a>
							</button>
						</div>
				</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
