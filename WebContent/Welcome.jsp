<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UserDetails page</title>
    
    <link rel="stylesheet" href="style.css">
    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" 
    integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" 
    crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    </head>
<body>


<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");

if(session.getAttribute("welcome")==null){
 response.sendRedirect("index.jsp");
}
else{
%>
<div class="header">
<h1 id="heading">User  Database </h1>
</div>
<table class="table table-bordered table-striped  table-hover">
<thead class="thead-dark" >
<tr>
<th>Firstname</th>
<th>Lastname</th>
<th>Username</th>
<th>Email Id</th>
<th>Contact No</th>

</tr>
</thead>

<tbody>


<% 
        Connection con = null;
		Statement s = null;
		ResultSet rs = null;
	
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "dsac", "helloworld");
			s=con.createStatement();
			rs=s.executeQuery("select * from UserDetails");		
		while(rs.next()){
		%>		
		<tr>
		<td><%=rs.getString("FirstName")%></td>
		<td><%=rs.getString("LastName")%></td>
		<td><%=rs.getString("Username")%></td>
		<td><%=rs.getString("Email")%></td>
		<td><%=rs.getString("PhoneNumber")%></td>
		</tr>
		<% 
		}
		%>
		
</tbody>
</table>
<div class="register">

<a href="signup1.jsp"><button class="btn btn-success" title="register button" id="register">Register </button></a>
</div>
<div class="footer">
<a href="logout.jsp"><button class="btn btn-danger" title="logout button" id="logout">Logout </button></a>
</div>
</body>
<%
}
%>
</html>