<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>등록</title>
</head>
<body>
	<div class="container">
		<div>
			<p>약관 내용</p>
			<textarea></textarea>
			<p>
				약관에 동의합니다<input type="checkbox" />
			</p>
		</div>
		<div>
		<p>예매 번호 : <input type="text" value= "test"/></p>
		<p>예매 이벤트 : <input type="text" value= "test"/></p>
		<p>관람 장소 : <input type="text" value= "test"/></p>
		<p>관람일 : <input type="text" value= "test"/></p>
		<p>인원 : <input type="text" value= "test"/></p>
		<p>좌석 : <input type="text" value= "test"/></p>
		</div>
		<div class="row">
			예매가 취소되면 되돌릴 수 없습니다. 취소하시겠습니까?
			<input type="button" value = "취소하기"/>
		</div>
	</div>
</body>
</html>