<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
< <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html> 
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Update</title>
</head>
<body>
	<div class="container mt-3">
		<h1 class="text-center">Update TODO</h1>


		<div class="row mt-5">
			
			</div>
			<div class="col-md-10">

					
				<h2 class="text-center">Update TODO</h2>
				<br>
				<form action="${pageContext.request.contextPath}/updateTodo" method="post">
						
						<input type="text" value="${todo.todoId}"name="todoId">
					<div class="form-group">
						<input name="todotitle" Class="form-control"
							placeholder="Enter your ToDo Title" value="${todo.todotitle }"/>
					</div>

					<br>

					<div class="form-group">
						<textarea name="todoContent" Class="form-control"
							placeholder="Enter your ToDo Content" Style="height:250px" >${todo.todoContent }</textarea>
					</div>
					<br>
					<div class="container text-center">
						<button class="btn btn-outline-success">Update ToDo</button>
					</div>

				</form>




			</div>
		</div>


	</div>


</body>
</html>