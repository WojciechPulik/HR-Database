<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
		<title>HR Database</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    	<link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">
	
	</head>
<body>

 <jsp:include page="WEB-INF/fragment/navbar.jspf"/>

	<h1 style="text-align: center"><span style="color: green"><b>Human Resource Database</b></span></h1>
	
	<br/>
	<br/>
	<br/>
	<div style="text-align: center"><img src="image.jpeg"></div>
	<br/>
	<br/>
	<br/>
	<p style="text-align: center"><span style="color: green">
		<b>Aplikacja do zarządzania bazą danych pracowników firmy</b></span></p>
	<p style="text-align: center">
		<b><u>Ta aplikacja powstała w oparciu o framework Java Enterprise Edition 8</u></b></p>
	<p style="text-align: center">----------------------------------------------------------------------</p>
	<p style="text-align: center"><a href="/HRDatabase1/new"><b>Przejdź do formularza bazy pracowników</b></a></p>
	
	
	 <jsp:include page="WEB-INF/fragment/footer.jspf"/>
    
    <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
    <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script src="resources/js/bootstrap.js"></script>
</body>
</html>