<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>add customer</title>
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
<body>
	<h3>Enter customer details</h3>

	<form action="customers/save" method="post">
		<table border=2>


			<tr>
				<th>Customer Id<input style="align: left;" type="text" name="id"
					required autofocus /></th>
			</tr>
			<br>
			<tr>
				<th>Customer Name<input type="text" name="name" required
					autofocus /></th>
			<tr>
				<br>
			<tr>
				<th>Customer Location <input type="radio" name="location"
					value="Chennai"> Chennai <input type="radio"
					name="location" value="Bangalore">Bangalore <input
					type="radio" name="location" value="Pune"> Pune <input
					type="radio" name="location" value="Mumbai"> Mumbai
				</th>
			</tr>
			<br>
			<!--  Customer Domain<input type="text" name="domain" required autofocus/> -->
			<tr>
				<th>Customer Domain<select name="domain">
						<option value="Please Select">Please Select</option>
						<option value="java">java</option>
						<option value=".net">.net</option>
						<option value="html">html</option>
						<option value="css">css</option>
				</select></th>
			</tr>
			<br>
			<tr>
				<th><input type="submit" value="Add customer"></th>
			</tr>

		</table>
	</form>
</body>
</html>