

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Patient Management Application</title>
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
					class="nav-link">Patient</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		</c:if>
						<c:if test="${user == null}">
            			Add New User
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type=" "  name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Patient Name</label> <input type="text"
						value="<c:out value='${user.name}'/>" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
				
					<label>Date of Birth</label> <input type="date"
						value="<c:out value='${user.dob}'/>" class="form-control"
						name="dob" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Gender</label> <input type="text"
						value="<c:out value='${user.gender}' />" class="form-control"
						name="gender" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Admission Date</label> <input type="date"
						value="<c:out value='${user.admissionDate}' />" class="form-control"
						name="admissionDate" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Room No</label> <input type="text"
						value="<c:out value='${user.roomNo}' />" class="form-control"
						name="roomNo" required="required">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>