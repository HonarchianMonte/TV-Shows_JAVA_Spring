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
	<h1>Welcome, ${userName } </h1>
	<p><a href ="/logout"> Logout</a> </p>
	
	<h3> TV Shows</h3>
	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th class="text-center">Show</th>
	            <th class="text-center">Network</th>
	            <th class="text-center">Average Rating</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var ="eachShow" items="${showList }">
				<tr>
					<td class="text-center"> 
						<a href="/shows/${eachShow.id }">
						<c:out value="${eachShow.title}"></c:out></a>
						
					<td class="text-center"><c:out value="${eachShow.network}"></c:out></td>
					<td class="text-center"><c:out value="${eachShow.rating}"></c:out></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>	
		<a href="/shows/new" class="btn btn-primary">Add a Show</a>
	
	
	</div>
</body>
</html>