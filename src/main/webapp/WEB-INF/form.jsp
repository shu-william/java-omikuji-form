<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Omikuji Form</title>
</head>
<body>
	<h1 class="text-center">Send an Omikuji!</h1>
	<form action="/omikuji/submit" method="POST" class="col-md-5 mx-auto">
	  <div class="form-group">
	    <label for="number">Pick any number from 5 to 25</label>
	    <input type="number" class="form-control" id="number" name="number" min="5" max="25">
	  </div>
	  <div class="form-group">
	    <label for="city">Enter the name of any city.</label>
	    <input type="text" class="form-control" id="city" name="city">
	  </div>
	  <div class="form-group">
	    <label for="person">Enter the name of any real person.</label>
	    <input type="text" class="form-control" id="person" name="person">
	  </div>
	  <div class="form-group">
	    <label for="hobby">Enter professional endeavor or hobby.</label>
	    <input type="text" class="form-control" id="hobby" name="hobby">
	  </div>
	  <div class="form-group">
	    <label for="animal">Enter any type of living thing.</label>
	    <input type="text" class="form-control" id="animal" name="animal">
	  </div>
	  <div class="form-group">
	  	<label for="niceThing">Say something nice to someone:</label>
	  	<textarea class="form-control" rows="3" id="niceThing" name="niceThing"></textarea>
	  </div>
	  <button type="submit" class="btn btn-primary my-3">Send</button>
	</form>
</body>
</html>