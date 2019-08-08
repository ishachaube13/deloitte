<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
</style>
</head>
<body>
<center>
<h3>Login</h3>
	<form action="../customers/checkuser" method="post">
	<table>
	
	<tr>
		
		<th>Customer Name</th>
		<td><input type="text" name="user" value="user"></td> 
	</tr>
	<tr>
		<th>Customer password</th>
		<td><input type="password" name="password" value="password"></td>
	</tr>
	<tr>
		<td></td>
		<td> <input type="submit" value="SUBMIT"></td>
	</tr>
	</table>
	</form>
</center>
</body>
</html>