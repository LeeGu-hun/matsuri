<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원님의 회원정보 확인을 위해 비밀번호를 한번 더 입력해 주세요</title>
</head>
<body>
	<%@include file="/include/header.jsp"%>
	<form:form>
		<p>
			<label style="font-size:20px">아이디 : <spring:message
					arguments="${authInfo.name}" /></label>
		</p>
		<p>
			<label style="font-size:20px">비밀번호 : <input type="password" />
			</label>
		</p>
		<input type="submit" class="btn btn-primary"
			value="다음">
	</form:form>
</body>
</html>