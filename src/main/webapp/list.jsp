<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./Base.jsp"%>
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark"
		style="background-color: black; height: 80px;">
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="home.jsp"
					style="font-family: sans-serif; font-size: 22px">Home <span
						class="sr-only">(current)</span></a></li>
			</ul>
		</div>
	</nav>
	<fieldset>
		<table class="table" border="2"
			style="margin-top: 25px; text-align: center">
			<thead class="thead-dark">
				<tr>
					<th scope="col">RollNo</th>
					<th scope="col">Name</th>
					<th scope="col">Education</th>
					<th scope="col">Age</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="s" items="${studentlist}">
					<tr>
						<td>${s.rollno}</td>
						<td>${s.name}</td>
						<td>${s.education}</td>
						<td>${s.age}</td>
						<td scope="col"><a href="delete/${s.rollno }"><i
								class="fa-solid fa-trash text-danger" style="font-size: 20px"></i></a>
							<a href="update?rollno=${s.rollno}"><i
								class="fa-solid fa-pen text-primary" style="font-size: 20px"></i></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="container text-center">
			<a href="home.jsp" class="btn btn-outline-warning">Go Back</a> <a
				href="add.jsp" class="btn btn-outline-success">Add Student</a>
		</div>
	</fieldset>
</body>
</html>