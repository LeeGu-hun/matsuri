<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function div_OnOff(v,id){
		if(v==1){
			document.getElementById('con').style.display = "block";
			document.getElementById('Rphone').style.display = "none";
		}
		if(v==2){
			document.getElementById('con').style.display = "none";
			document.getElementById('Rphone').style.display = "block";
		}
	}
</script>
</head>
<body>
	<h1>결제</h1>
	<table>
		<tr>
			<th>공연 명</th>
			<td>공연명</td>
			<th>공연 일시</th>
			<td>공연일시</td>
		</tr>
		<tr>
			<th>좌석등급</th>
			<th>가격</th>
			<th>인원</th>
			<th>합계</th>
		</tr>
		<tr>
			<td>좌석등급</td>
			<td>가격</td>
			<td>인원</td>
			<td>합계</td>
		</tr>
		<tr>
			<th>결제 수단</th>
			<td><input type="radio" name="pay" value="1" onclick="div_OnOff(this.value,'con');" >
					<font size=2>카드</font> 
				<input type="radio"	name="pay" value="2"onclick="div_OnOff(this.value,'Rphone');" >
				<font size=2>휴대폰</font>
			</td>
			
		
				
	
	</table>
	<div id="con" style="display:none">
	<form method="post" action="Yemae4.jsp">
		<br>
			<label>카드사</label>
				
				<select name="card">
					<option value="">카드사</option>
					<option value="">롯데</option>
					<option value="">현대</option>
					<option value="">삼성</option>
				</select>
				
		<br>
			<label>카드번호</label>
			
				<input type="text" style="width:70px;" />
				<input type="text" style="width:70px;" />
				<input type="text" style="width:70px;" />
				<input type="text" style="width:70px;" />
			
			<label>유효기간</label>
			
				<select>
					<optgroup label="연도">
						<option>연도</option>
						<option>2017</option>
						<option>2016</option>
						<option>2015</option>
						<option>2014</option>
						
				</optgroup>
				
				</select>
				년
				<select>
					<optgroup label="월">
						<option>월</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						
				</optgroup>
				
				</select>
				월
			
			<br>
			<label>비밀번호</label>
			<input type="password" style="width:70px;" placeholder="" />
			**     <span style="margin-left: 20px"> 앞 2자리 입력해주세요</span>
			
			
			<input type="submit" style="margin-left: 50px" value="결제"  >
		</form>
	</div>
	<div id="Rphone" style="display:none">
		<form method="post">
			<br>
				<label>통신사</label>
				
					<select>
						<option value="">통신사</option>
						<option value="">skt</option>
						<option value="">kt</option>
						<option value="">lg</option>
					</select>
				
			<br>
				<label>휴대폰 번호</label>
				
					<input type="text" style="width:70px;" />
					<input type="text" style="width:70px;" />
					<input type="text" style="width:70px;" />
				<input type="submit" value="결제"  >
		</form>
	 </div>
</body>
</html>