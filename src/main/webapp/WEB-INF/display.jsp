<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Omikuji</title>
</head>
<body class="text-center">
	<h1>Here's your Omikuji!</h1>
	<div class="col-md-6 mx-auto border bg-info">
		<p><c:out value="${omikuji}"></c:out></p>
	</div>
	<a href="/omikuji" class="my-4">Go back</a>
</body>
</html>