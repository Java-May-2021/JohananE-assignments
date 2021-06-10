<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Products Page</title>
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
					<a class="nav-link" href="/products/new">New Product</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/">Main Page</a>
				</li>
			</ul>
		</nav>
		<br>
		<h1 class="text-center">${product.name}</h1>
		<br>
		<h3>Categories:</h3>
		<hr>
		<br>
			<ul>
				<c:forEach items="${ product.categories }" var="cat">
					<li>${ cat.name }</li>			
				</c:forEach>
			</ul>
		<br>
		<form:form action="/product/${product.id}" method="post" modelAttribute="product">
			<div class="form-group">
		        <form:label path="categories">Add Categories:</form:label>
		        <form:select type="select" path="categories" class="form-control">
		        <c:forEach items="${cate}" var="cats">
		        	<form:option value="${cats.id}">${cats.name}</form:option>
				</c:forEach>
				</form:select>
   			</div>
   			<button type="submit" class="btn btn-outline-primary btn-block">Register</button>
   		</form:form>
	</div>
</body>
</html>