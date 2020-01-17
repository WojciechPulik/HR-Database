<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
		<title>Dodaj administratora</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    	<link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">
	
	</head>
<body>
<jsp:include page="fragment/navbar.jspf"/>

<div class="container">
		<div class="col-sm-6 col-md-4 col-md-offset-4">
			<form class="form-signin" method="post" action="register">
				<h2 class="form-signin-heading">Dodaj administratora</h2>
				<input name="inputUsername" type="text" name="inputUsername" class="form-control" placeholder="Nazwa użytkownika" required autofocus />
				<input name="inputFirstName" type="text" name="inputFirstName" class="form-control" placeholder="Imię" required autofocus />
				<input name="inputLastName" type="text" name="inputLastName" class="form-control" placeholder="Nazwisko" required autofocus />
				<input name="inputPassword" type="password" class="form-control" placeholder="Hasło" required />
				<button class="btn btn-lg btn-primary btn-block" type="submit" >Dodaj administratora</button>
			</form>
		</div>
    </div>


<jsp:include page="fragment/footer.jspf"/>
    
    <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
    <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script src="resources/js/bootstrap.js"></script>
</body>
</html>