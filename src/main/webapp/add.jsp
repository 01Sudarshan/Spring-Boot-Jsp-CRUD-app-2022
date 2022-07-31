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
				<h1>Fill The Student Details</h1>
				<form action="add-student" method="post">
					<div class="form-group">
						<label for="rollno">RollNo</label> <input type="number"
							class="form-control" id="rollno" name="rollno">
					</div>

					<div class="form-group">
						<label for="name">Name</label> <input type="text"
							class="form-control" id="name" name="name">
					</div>

					<div class="form-group">
						<label for="education">Education</label> <input type="text"
							class="form-control" id="education" name="education">
					</div>

					<div class="form-group">
						<label for="age">Age</label> <input type="number"
							class="form-control" id="age" name="age">
					</div>

					<div class="container text-center">
						<button type="submit" class="btn btn-primary" onsubmit="">Add</button>
					</div>
				</form>
			</div>

		</div>
		
	</div>
</body>
</html>