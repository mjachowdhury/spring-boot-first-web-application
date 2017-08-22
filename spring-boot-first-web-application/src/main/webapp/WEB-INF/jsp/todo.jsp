<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Todo's Web Application</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	    		rel="stylesheet">
</head>
<body>
	<div class="container">		 
		 <form:form method="post" commandName="todo">
		 <form:hidden path="id"/>
		 <fieldset class="form-group">
		 	<form:label path="desc"> Description</form:label>
		 	<form:input path="desc" type="text" 
		 		class="form-control" required="required"/>
		 		<form:errors path="desc" cssClass="text-warning"></form:errors>
		 </fieldset>
		 
		 <fieldset class="form-group">
		 	<form:label path="targetDate">TargetDate</form:label>
		 	<form:input path="targetDate" type="text" 
		 		class="form-control" required="required"/>
		 		<form:errors path="targetDate" cssClass="text-warning"></form:errors>
		 </fieldset>
		 
			<button type="submit" class="btn btn-success">Add</button>	 
		 </form:form>
	 </div>
	  <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	  <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	  <script src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>
	  
	  <script>
			$('#targetDate').datepicker({
				format : 'dd/mm/yyyy'
			});
	  </script>
	 
</body>
</html>