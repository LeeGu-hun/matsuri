<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Q&A 게시판 글쓰기</title>
</head>
<body>
<%@include file="/include/header.jsp"%>
	<div align="center">
	<p>
		<label style="font-size:20px">작성자 : <spring:message arguments="${authInfo.name}"/></label>
		</p>
		<p>
		<label style="font-size:20px">등록일 : 2017-10-16</label>
		</p>
		<p>
		<label style="font-size:20px">조회수 : 1025</label>
		</p>
		<p>
		<textarea rows="10" cols="100"></textarea>
		</p>
	</div>
	
	<div align="center">
	<p><label>[관리자 답변]</label></p>
	<p>
	<label style="font-size:20px">작성자 : 관리자</label>
	</p>
	<p>
	<label style="font-size:20px">등록일 : 2017-10-16</label>
	</p>
	
	<p>
	<label style="font-size:20px">조회수 : 202</label>
	</p>
	
	<p>
	
		<textarea rows="10" cols="100"></textarea>
		
		</p>
		
		
	</div>
	<div align="center">
	<p>
		<input type="button" class="btn btn-primary" value="등록"/>
		<input type="button" class="btn btn-warning" value="목록으로"/>
		</p>
		</div>
</body>
</html>