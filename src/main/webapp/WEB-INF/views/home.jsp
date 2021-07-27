<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title><c:out value="${page }"></c:out></title>
</head>
<body>
	<div class="container mt-3">
		<h1 class="text-center">Welcome to TODO Manager</h1>
		
		<c:if test="${not empty msg }">
			<div class="alert alert-success">
				<b><c:out value="${msg}"> </c:out></b>
			</div>
		</c:if>
		<div class="row mt-5">
			<div class="col-md-2">

				<div class="list-group">
					<button type="button"
						class="list-group-item list-group-item-action active"
						aria-current="true">Menu</button>
					<a href='<c:url value='/add'></c:url>'
						class="list-group-item list-group-item-action">Add TODO</a> <a
						href='<c:url value='/home'></c:url>'
						class="list-group-item list-group-item-action">View TODO</a>

				</div>
			</div>
			<div class="col-md-10">
				<c:if test="${page=='home' }">
					<h2 class="text-center">All TODO's</h2>
					
					<c:forEach items="${todos }" var="t">
						<div class="card">
							<div class="card-body">
							<h3><c:out value="${ t.todotitle}"></c:out></h3>
							<p><c:out value="${t.todoContent}"></c:out></p>
							
									<div class="btn-toolbar" style="padding-left: 15px">
									<a href="delete/${t.todoId}" class="btn btn-primary  active"   role="button" aria-pressed="true">Delete</a>
									        <a href="update/${t.todoId}" class="btn btn-primary  active" role="button" aria-pressed="true">Update</a>
								     	<!--	<a href="<c:url value='/update'></c:url>" class="btn btn-primary  active" role="button" aria-pressed="true">Update</a>   -->
								      </div>
									</div>
							
						</div>
					</c:forEach>
					
				</c:if>
				<c:if test="${page=='add' }">
					<h2 class="text-center">Add TODO</h2>
					<br>
					<form:form action="saveTodo" method="post" modelAttribute="todo">

						<div class="form-group">
							<form:input path="todotitle" cssClass="form-control"
								placeholder="Enter your ToDo Title" />
						</div>
					 
					 	<br>
					
						<div class="form-group">
							<form:textarea path="todoContent" cssClass="form-control"
								placeholder="Enter your ToDo Content" cssStyle="height:250px" />
						</div>
						<br>
						<div class="container text-center">
							<button class="btn btn-outline-success">Add ToDo</button>
						</div>

					</form:form>


				</c:if>
				<%-- <c:if test="${page=='update' }">
					<h2 class="text-center">Update TODO</h2>
					<br>
					<form:form action="updateTodo" method="post" modelAttribute="todo">

						<div class="form-group">
							<form:input path="todotitle" cssClass="form-control"
								placeholder="Enter your ToDo Title" />
						</div>
					 
					 	<br>
					
						<div class="form-group">
							<form:textarea path="todoContent" cssClass="form-control"
								placeholder="Enter your ToDo Content" cssStyle="height:250px" />
						</div>
						<br>
						<div class="container text-center">
							<button class="btn btn-outline-success">Update ToDo</button>
						</div>

					</form:form>


				</c:if> --%>
				<%-- <h1><c:out value="${name}" ></c:out></h1> --%>
			</div>
		</div>


	</div>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>