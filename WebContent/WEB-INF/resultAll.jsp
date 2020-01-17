<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.List, pl.wpulik.hrdatabase.model.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Dodaj nowego pracownika</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    	<link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">
    	
    	<style type="text/css">
  			th {background: #556B2F;color: #FFFF00;}
  			tr:nth-child(odd) {background: #EEE8AA;}
  			tr:nth-child(even) {background: #F0E68C;}
  		</style>
	
	</head>
<body>

	 <jsp:include page="fragment/navbar.jspf" />
    
  
    
   <div class="row">
   <div class="col-md-10 col-md-offset-3">
    <h2>Lista pracowników:</h2>
    
	<table style="width:50%" border="3">
	<tr>
		<th>Id</th>
		<th>Imię</th>
		<th>Nazwisko</th>
		<th>Wynagrodzenie</th>
	</tr>
	<%
		List<Employee> allEmployees = (List<Employee>)request.getAttribute("resultEmployee");
		if(allEmployees != null)
			for(Employee employee: allEmployees) {
	%>
		<tr>
			<td><%= employee.getId() %></td>
			<td><%= employee.getFirstName() %></td>
			<td><%= employee.getLastName() %></td>
			<td><%= employee.getSalary() %></td>
		</tr>
	<%
			}
	%>
	</table>
	</div>
	</div>
    
    <jsp:include page="fragment/footer.jspf"/>
    
    <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
    <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script src="resources/js/bootstrap.js"></script>    

</body>
</html>