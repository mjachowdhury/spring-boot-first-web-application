<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Todo's for ${name}</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	    		rel="stylesheet">
</head>
<body>
 		<div class="container">
		<table class="table table-striped">
			<caption>Your todos are</caption>
				<thead>
					<tr>
						<th>Description</th>
						<th>Target Date</th>
						<th>Is it Done?</th>
						<!--<th>Update</th>
						<th>Delete</th>-->
					</tr>
				</thead>
				<tbody>
				 	<c:forEach items ="${todos}" var="todo">
				 		<tr>
							<td>${todo.desc}</td>
							<td><fmt:formatDate value ="${todo.targetDate}" pattern="dd/MM/yyyy"/></td>
							<td>${todo.done}</td>
							<td><a type="button" class="btn btn-success" 
								href="/update-todo?id=${todo.id}">Update</a></td>												
							<td><a type="button" class="btn btn-warning" 
								href="/delete-todo?id=${todo.id}">Delete</a></td>						
						</tr>
				 	</c:forEach>
					 
					<tr>
						<td></td>
						<td></td>
						<td></td>						
					</tr>
				</tbody>
		</table>
	 
	 
	 <div>
	 	<a class="button" href="/add-todo">Add a Todo</a>
	 </div>	
	</div> 
	
	 <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	 <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>