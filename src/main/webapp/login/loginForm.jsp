<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sp" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
	<title><sp:message code = "login.title"/></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<form:form commandName="loginCommand">
	<form:errors />
	<p>
		<label><sp:message code="email"/><br>
		<form:input path="email" placeholder="email" class="form-control"/>
		<form:errors path="email"/>
		</label>
	</p>
	<p>
		<label><sp:message code="password"/><br>
		<form:password path="password" placeholder="password" class="form-control"/>
		<form:errors path="password"/>
		</label>
	</p>
	<p>
		<label>
		<sp:message code="rememberEmail"/><form:checkbox path="rememberEmail"/> 
		</label>
	</p>
	<input class="btn btn-danger" type="submit" value="<sp:message code="login.btn"/>">
	</form:form>
</body>
</html>