<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
	<title>회원가입 페이지</title>
</head>
<body>
<%@include file="/include/header.jsp"%>
<div align="center">
	<h2>Step2</h2>
	<form:form action="step3" commandName="registerRequest">
	
	<p>
		<label style="font-size:20px">아이디 입력 :
		<input type="id" placeholder="id"/>
		</label>
	</p>
	<p>
		<label style="font-size:20px">비밀번호 입력 :
		<input type="password"/>
		</label>
	</p>
	<p>
		<label style="font-size:20px">비밀번호 확인 :
		<input type="password"/>
		</label>
	</p>
	<p>
		<label style="font-size:20px">이름 :
		<input type="text"/>
		</label>
	</p>
	<p>
	<label style="font-size:20px">Email :
	<input type="email"/></label>
	</p>
	
	<p>
	<label style="font-size:20px">지역 1 선택 :
	<select>
	<option/>서울광역시
	<option/>부산광역시
	</select>
	</label>
	</p>
	
	<p>
	<label style="font-size:20px">지역 1 선택 :
	<select>
	<option/>서울광역시
	<option/>부산광역시
	</select>
	</label>
	</p>
	
	<p>
	<label style="font-size:20px">흥미 선택 :
	<input type="checkbox" style="font-size:20px"/>축제
	<input type="checkbox" style="font-size:20px"/>콘서트
	<input type="checkbox" style="font-size:20px"/>뮤지컬<br>
	<input type="checkbox" style="font-size:20px"/>연극
	<input type="checkbox" style="font-size:20px"/>스포츠
	<input type="checkbox" style="font-size:20px"/>아동,가족
	</label>
	</p>
	<p>
	<input type="submit" class="btn btn-info" value="다음">
	</p>
	</form:form>
	</div>
</body>
</html>