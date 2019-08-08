<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Index</title>
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body style="backgroung-color:lightblue;">
<center>
	<table border=1 align="center">


		<h2>CUSTOMER Management System</h2>


		<table border=1>
			<tr>
				<th>Pick your operation</th>
			</tr>

			<tr>
				<th><a href="../addcustomer.jsp">Add a customer</a></th>
			</tr>
			<br>
			<tr>
				<th><a href="../delete.jsp">Delete a customer</a></th>
			</tr>
			<br>
			<tr>
				<th><a href="../modify.jsp">Modify a customer</a></th>
			</tr>
			<br>
			<tr>
				<th><a href="../retrieve.jsp">Retrieve a customer</a></th>
			</tr>
			<br>


			<tr>
				<th><a href="../customers/">Retrieve all customer</a></th>
			</tr>

		</table>
	</table>
</center>
</body>
</html>