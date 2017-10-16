<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 수정</title>
</head>
<body>
	<%@include file="/include/header.jsp"%>
	<div id="center">
	<table>
	<tr>
	<td colspan="20">
	<label style="font-size:40px">회원정보 수정</label><br>
	
	<label style="font-size:20px">아이디 :
	<spring:message arguments="${authInfo.name}"/></label><br>
	
	<label style="font-size:20px">이름 :
	<input type="text"/></label><br>
	
	<label style="font-size:20px">새 비밀번호 :
	<input type="password"/></label><br>
	
	<label style="font-size:20px">비밀번호 확인 :
	<input type="password"/></label><br>
	
	<label style="font-size:20px">관심지역:
	<select>
	<option value="서울"/>서울특별시
	<option value="부산"/>부산광역시
	</select>
	<select>
	<option value="중구"/>중구
	<option value="부산진구"/>부산진구
	</select></label><br>
	
	
	<label style="font-size:20px">관심테마 :
	<input type="checkbox" style="font-size:20px"/>축제
	<input type="checkbox" style="font-size:20px"/>콘서트
	<input type="checkbox" style="font-size:20px"/>뮤지컬<br>
	<input type="checkbox" style="font-size:20px"/>연극
	<input type="checkbox" style="font-size:20px"/>스포츠
	<input type="checkbox" style="font-size:20px"/>아동,가족</label>
	
	<p>
	<input type="submit" class="btn btn-primary" value="수정완료"/>
	<input type="submit" class="btn btn-success" value="취소"/>
	
	</p>
	</td>
	</tr>
	</table>
	</div>
	
	<%@include file="/include/footer.jsp"%>
</body>
</html>