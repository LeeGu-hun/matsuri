<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
	<title>로그인이 완료되었습니다.</title>
</head>
<body>
<%@include file="/include/header.jsp"%>
<div align="center">
	<p>
		<label style="font-size:40px">
		회원가입을 완료했습니다.<br>
		로그인 해주세요</label>
	</p>
	<p>
		<a href="<c:url value='/login/loginForm'/>">
			<input type="submit" class="btn btn-primary" value="로그인 페이지로 이동"/>
		</a>
	</p>
	</div>
</body>
</html>