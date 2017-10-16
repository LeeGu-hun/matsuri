<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@include file="/include/header.jsp"%>
	<div>
	<label style="font-size:40px">정보 수정이 완료되었습니다.</label><br>
	<label style="font-size:40px">N초 후 메인 페이지로 이동합니다.</label><br><br><br>
	
	<p>
	<input type="submit" class="btn btn-success" value="메인으로 이동"/>
	</p>
	</div>
</body>
</html>