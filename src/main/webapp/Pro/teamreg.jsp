<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="/include/header.jsp"%>
	<div>
	<table>
	<tr>
	<h2>공연팀&주최측 등록요청</h2><br><br>
	
	<label style="font-size:20px">분류 :
	<select>
	<option value="뮤지컬"/>뮤지컬
	<option value="콘서트"/>콘서트
	<option value="축제"/>축제
	<option value="연극"/>연극
	<option value="스포츠"/>스포츠
	</select>
	</label><br>
	
	<label style="font-size:20px">이름 :
	<input type="text"/></label><br>
	
	<label style="font-size:20px">사업자 등록번호 :
	<input type="text"/></label><br>
	
	<label style="font-size:20px">활동지역 :
	<select>
	<option />서울특별시
	<option />부산광역시
	</select>
	
	<select>
	<option />중구
	<option />부산진구
	</select>
	</label><br>
	
	<label style="font-size:20px">소개글 :
	<textarea></textarea>
	</label><br>
	
	<p>
			<label style="font-size:20px">사진 : <input type="file" id="file" name="file"
				onchange="readURL(this)"/>
			</label>
		</p>
		
		<p>
		<input type="submit" class="btn btn-success" value="다음"/>
		<input type="submit" class="btn btn-danger" value="취소"/>
		</p>
	</tr>
	</table>
	
	</div>
</body>
</html>