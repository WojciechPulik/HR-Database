<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
		<title>Forbidden</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    	<link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">
	
	</head>
<body>
	<jsp:include page="WEB-INF/fragment/navbar.jspf"/>
	
	<br/>
	<br/>
	<br/>
	<br/>

	<h1 style="text-align: center"><span style="color: red"><b>Niedozwolona operacja!</b></span></h1>
	<h2 style="text-align: center"><span style="color: red"><b>Nie posiadasz odpowiednich uprawnień!</b></span></h2>
	
	<br/>
	<br/>
	<h3 style="text-align: center"><a href="${pageContext.request.contextPath}/"><b>Przejdź do strony głównej</b></a></h3>
	
	<jsp:include page="WEB-INF/fragment/footer.jspf"/>
    
    <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
    <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script src="resources/js/bootstrap.js"></script>
</body>
</html>