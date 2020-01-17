<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html>
<html>
	<head>
		<title>Dodaj nowego pracownika</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    	<link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">
	
	</head>
<body>

	 <jsp:include page="fragment/navbar.jspf"/>
    
    <div class="container">
		<div class="col-md-4 col-md-offset-4">
			<form class="form-signin" method="post" action="new">
				<h2 class="form-signin-heading">Dodaj pracownika:</h2>
				<input name="inputFirstName" type="text" class="form-control" placeholder="Imię"
					required autofocus />
				<input name="inputLastName" type="text" class="form-control" placeholder="Nazwisko"
					required autofocus /> 
				<input name="inputSalary" type="text" class="form-control" placeholder="Wynagrodzenie brutto"
					required autofocus />
				<input class="btn btn-lg btn-primary btn-block" type="submit"
					value="Dodaj!" />
			</form>
		</div>
    </div>
    <div class="container">
		<div class="col-md-4 col-md-offset-4">
			<form class="form-signin" method="post" action="search">
				<h3 class="form-signin-heading">Wyszukaj pracownika:</h3>
				<input name="inputLastName" type="text" class="form-control" placeholder="Nazwisko"
					required autofocus /> 
				<input class="btn btn-lg btn-primary btn-block" type="submit"
					value="Wyszukaj!" />
			</form>
		</div>
    </div>
    <div class="container">
		<div class="col-md-4 col-md-offset-4">
			<form class="form-signin" method="post" action="update">
				<h2 class="form-signin-heading">Aktualizuj pracownika:</h2>
				<input name="inputId" type="text" class="form-control" placeholder="ID"
					required autofocus />
				<input name="inputFirstName" type="text" class="form-control" placeholder="Imię"
					required autofocus />
				<input name="inputLastName" type="text" class="form-control" placeholder="Nazwisko"
					required autofocus /> 
				<input name="inputSalary" type="text" class="form-control" placeholder="Wynagrodzenie brutto"
					required autofocus />
				<input class="btn btn-lg btn-primary btn-block" type="submit"
					value="Aktualizuj!" />
			</form>
		</div>
    </div>
    <div class="container">
		<div class="col-md-4 col-md-offset-4">
			<form class="form-signin" method="post" action="delete">
				<h3 class="form-signin-heading">Skasuj pracownika:</h3>
				<input name="inputId" type="text" class="form-control" placeholder="ID Pracownika"
					required autofocus /> 
				<input class="btn btn-lg btn-primary btn-block" type="submit"
					value="Skasuj!" />
			</form>
		</div>
    </div>
    <div class="container">
		<div class="col-md-4 col-md-offset-4">
			<form class="form-signin" method="post" action="all" method="post">
				<h3 class="form-signin-heading">Pełna lista pracowników:</h3>
				<input class="btn btn-lg btn-primary btn-block" type="submit"
					value="Pokaż wszystkich zatrudnionych!" />
			</form>
		</div>
    </div>
    
     <jsp:include page="fragment/footer.jspf"/>
    
    <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
    <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script src="resources/js/bootstrap.js"></script>    

</body>
</html>