<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>New Product Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-sm bg-dark justify-content-center">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="/categories/new">New Category</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/">Main Page</a>
				</li>
			</ul>
		</nav>
		<hr>
		<h1 class="text-center">New Product Entry</h1>
		<form:form action="/product/create" method="post" modelAttribute="product">
			<div class="form-group">
				<form:label path="name">Name: </form:label>
				<form:errors path="name"/>
				<form:input path="name" class="form-control"/>
			</div>
			<div class="form-group">
				<form:label path="description">Description: </form:label>
				<form:errors path="description"/>
				<form:input path="description" class="form-control"/>
			</div>
			<div class="form-group">
				<form:label path="price">Price: </form:label>
				<form:errors path="price"/>
				<form:input path="price" class="form-control"/>
			</div>
			<br>
			<button type="submit" class="btn btn-outline-primary btn-block">submit</button>
		</form:form>
	</div>
</body>
</html>