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
		<h1>Create a New TV Show</h1>
		<form:form action="/shows/process" method="POST" modelAttribute="newShow">
		
			<div class ="form-group">
				<form:label path="title"> Title</form:label>
				<form:input path="title" class="form-control"  />
				<form:errors  path="title" class="text-danger" />
			</div>
			<div class ="form-group">
				<form:label path="network"> Network:</form:label>
				<form:input path="network" class="form-control"  />
				<form:errors  path="network" class="text-danger" />
			</div>
			<div class ="form-group">
				<form:label path="rating"> Rating:</form:label>
				<form:input path="rating" type="double" class="form-control"/>
				<form:errors  path="rating" class="text-danger" />
			</div>
			<div class ="form-group">
				<form:label path="description">Description:</form:label>
				<form:textarea path="description" class="form-control"/>
				<form:errors path="description" class="text-danger"  />
			</div>
			<a href="/shows" class="btn btn-primary">Cancel</a>
			<form:hidden path ="user" value="${userId }"/>
			<button type="submit" class="btn btn-primary"> Submit</button>
		</form:form>
	</div>
</body>
</html>