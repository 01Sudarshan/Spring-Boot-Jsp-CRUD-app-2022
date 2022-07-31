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
<body style="background-color: #0dcaf0">
	<div class="container mt-3 text-center">
		<h1 style="font-size: 60px">Welcome</h1>
		<br> <br>
		<div class="list-group">
				<a href="./home.jsp" class="list-group-item list-group-item-action"><h3>Home</h3></a> 
				<a href="./add.jsp" class="list-group-item list-group-item-action"><h3>Add New Student</h3></a> 
				<a href="getStudents" class="list-group-item list-group-item-action"><h3>Student list</h3></a>
		</div>
	</div>
</body>
</html>