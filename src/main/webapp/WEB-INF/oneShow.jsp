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
	<h1></h1>	<a href="/shows">Back to Dashboard</a>
	<div class="container mt-5">
		<table class="table">
			<tr>
				<td class="font-weight-bold"> Posted By:</td>
				<td class="font-weight-bold"> ${show.user.name }</td>
			</tr>
			<tr>
				<td> Show:</td>
				<td> ${show.title }</td>
			</tr>
			<tr>
				<td> Network:</td>
				<td> ${show.network }</td>
			</tr>
			<tr>
				<td> Description:</td>
				<td> ${show.description }</td>
			</tr>

		</table>
		<c:choose>
			<c:when test="${userId.equals(show.user.id) }">
				<a href="/shows/edit/${show.id }" class="btn btn-primary">Edit</a>					
			</c:when>
		</c:choose>	
		
	</div>
</body>
</html>