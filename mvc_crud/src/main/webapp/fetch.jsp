<%@page isELIgnored="false" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch</title>
</head>
<body>
<%-- ${list } --%>
<div align="center">
	<h1>Employee Record Table</h1>
	<h3 style="color:green">${Success}</h3>
	<table border="3" cellpadding="30px">
		<tr>
			<th>Name</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Salary</th>
			<th>Delete</th>
			<th>Edit</th>
		</tr>
		
		<x:forEach var="emp" items="${list}">
		<tr>
			<td>${emp.name}</td>
			<td>${emp.email}</td>
			<td>${ emp.mobile}</td>
			<td>${emp.salary}</td>
			<td><a href="delete?id=${emp.id}"> Delete </a></td>
			<td>Edit</td>
		</tr>
		</x:forEach>
		
	</table>
</div>
</body>
</html>