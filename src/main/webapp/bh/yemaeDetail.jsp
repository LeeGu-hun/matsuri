
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/include/header.jsp"%>
<h2>예매 내역</h2>
<hr color="#EFEFEF" width="80%">
<center>
<table>

			<tr>
				<th>예매 번호 :</th>
				<td>12838822</td>		
				<th>좌석 / 인원수 : </th>
				<td> 좌석</td>
				<td>인원</td>
			</tr>
			<tr>
				<th>공연명 :</th>
				<td>공연명</td>
				<th>결제금액 / 수단 :</th>
				<td>금액 / 수단</td>
			</tr>
			<tr>
				<th>공연일시 :</th>
				<td>공연일시</td>
				<th>이름 :</th>
				<td>이름</td>
			</tr>
		</table>

		<a href="/matsuri/detail6" class="ui button">확인</a>
		<a href="#" class="ui button">예매 취소 하기</a>
		
		</center>
</body>
</html>