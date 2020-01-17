<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
		<title>Pracownik dodany</title>
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

	<h1 style="text-align: center"><span style="color: green"><b>Procownik został dodany do bazy danych firmy!</b></span></h1>
	
	
	<p style="text-align: center">----------------------------------------------------------------------</p>
	<h2 style="text-align: center"><a href="${pageContext.request.contextPath}/">Wróć na stronę główną</a></h2>
	<h2 style="text-align: center"><a href="${pageContext.request.contextPath}/new"><b>Przejdź do formularza bazy pracowników</b></a></h2>
	
	<jsp:include page="WEB-INF/fragment/footer.jspf"/>
    
    <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
    <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script src="resources/js/bootstrap.js"></script>
</body>
</html>