<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<div class="container mt-5"> 
	<h1 class="text-center text-primary">TV Shows Database</h1>
		<h1>Register</h1>
		<form:form action="/register" method="POST" modelAttribute="newUser">
		
			<div class ="form-group">
				<form:label path="name"> Name</form:label>
				<form:input path="name" class="form-control"  />
				<form:errors  path="name" class="text-danger" />
			</div>
			<div class ="form-group">
				<form:label path="email"> Email:</form:label>
				<form:input path="email" class="form-control"  />
				<form:errors  path="email" class="text-danger" />
			</div>
			<div class ="form-group">
				<form:label path="password"> Password:</form:label>
				<form:input path="password" class="form-control" type="password"/>
				<form:errors  path="password" class="text-danger" />
			</div>
			<div class ="form-group">
				<form:label path="confirm"> Confirm Password:</form:label>
				<form:input path="confirm" class="form-control" type="password"  />
				<form:errors  path="confirm" class="text-danger" />
			</div>
			<button type="submit" class="btn btn-primary"> Register</button>
		</form:form>
		
		<!-- Login Form -->
		
		<h1>Login</h1>
		<form:form action="/login" method="POST" modelAttribute="newLogin">
		
		<div class ="form-group">
				<form:label path="email"> Email:</form:label>
				<form:input path="email" class="form-control"  />
				<form:errors  path="email" class="text-danger" />
			</div>
			<div class ="form-group">
				<form:label path="password"> Password:</form:label>
				<form:input path="password" class="form-control" type="password"/>
				<form:errors  path="password" class="text-danger" />
			</div>
			<button type="submit" class="btn btn-primary"> Login</button>
		</form:form>
	</div>
		
</body>
</html>