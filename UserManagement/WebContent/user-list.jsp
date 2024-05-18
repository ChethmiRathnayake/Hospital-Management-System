<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: 00A9FF">
			<div>
				<a href="repDash.jsp" class="navbar-brand"> Dashboard </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Patients</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Patients</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success" style = "background-color: 1450A3; border-color: 1450A3;">Add
					New Patient</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Date of Birth</th>
						<th>Gender</th>
						<th>Admission Date</th>
						<th>Room No</th>
						<th>Operation</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.name}" /></td>
							<td><c:out value="${user.dob}" /></td>
							<td><c:out value="${user.gender}" /></td>
							<td><c:out value="${user.admissionDate}" /></td>
							<td><c:out value="${user.roomNo}" /></td>
							<td><a href="edit?id=<c:out value='${user.id}' />"><button style = "background-color: green; color: white; border: none; width: 50px; height: 30px; border-radius: 5px; border-color: green">Edit</button></a>
								&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${user.id}' />"><button style = "background-color: C70039; color: white; border: none; width: 60px; height: 30px; border-radius: 5px; border-color: C70039">Delete</button></a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>