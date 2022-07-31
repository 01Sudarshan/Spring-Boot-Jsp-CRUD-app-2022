<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./Base.jsp"%>
<title>Add Students</title>
</head>
<body style="background-color: #0dcaf0">
	<div class="container mt-3">

		<div class="row">

			<div class="col-md-6 offset-md-3">
				<h1>Update Student Details</h1>
				<form action="updateStudent" method="post">
					<div class="form-group">
						<label for="rollno">RollNo</label> <input type="number"
							class="form-control" value="${student.rollno }" name="rollno">
					</div>

					<div class="form-group">
						<label for="name">Name</label> <input type="text"
							class="form-control" value="${student.name }" name="name">
					</div>

					<div class="form-group">
						<label for="education">Education</label> <input type="text"
							class="form-control" value="${student.education }" name="education">
					</div>

					<div class="form-group">
						<label for="age">Age</label> <input type="number"
							class="form-control" value="${student.age }" name="age">
					</div>

					<div class="container text-center">
						<button type="submit" class="btn btn-warning" onsubmit="">Update</button>
					</div>
				</form>
			</div>

		</div>
		
	</div>
</body>
</html>