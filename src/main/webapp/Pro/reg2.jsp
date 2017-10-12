<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>등록</title>
</head>
<body>
	<div class="container">
		<p>인원 및 좌석 선택</p>
		<p>
			인원 : <select>
				<option>1명</option>
				<option>2명</option>
				<option>3명</option>
				<option>4명</option>
				<option>5명</option>
				<option>6명</option>
				<option>7명</option>
				<option>8명</option>
				<option>9명</option>
				<option>10명</option>
			</select>
		</p>
		<p>
		<input type="button"/>
		<input type="button"/>
		<input type="button"/>
		<input type="button"/>
		<input type="button"/>
		<input type="button"/>
		<input type="button"/>
		<input type="button"/>
		<input type="button"/>
		<input type="button"/>
		</p>
		<div class="row">
			<input type="button" style="background: red;" value="R석" /> <input
				type="button" style="background: blue;" value="L석" /> <input
				type="button" style="background: green;" value="S석" /> <input
				type="button" style="background: black;" value="선택한 좌석" /> <input
				type="button" value="선택불가 좌석" />
		</div>
		<div>
			<div class="row">
				<input type="button" value="A1" style="background: red;" /> <input
					type="button" value="A2" style="background: red;" /> <input
					type="button" value="A3" style="background: red;" /> <input
					type="button" value="A4" style="background: black;" /> <input
					type="button" value="A5" style="background: red;" />
			</div>
			<div class="row">
				<input type="button" value="B1" style="background: blue;" /> <input
					type="button" value="B2" style="background: blue;" /> <input
					type="button" value="B3" style="background: blue;" /> <input
					type="button" value="B4" style="background: black;" /> <input
					type="button" value="B5" style="background: blue;" />
			</div>
			<div class="row">
				<input type="button" value="C1" style="background: green;" /> <input
					type="button" value="C2" style="background: green;" /> <input
					type="button" value="C3" style="background: green;" /> <input
					type="button" value="C4" style="background: black;" /> <input
					type="button" value="C5" style="background: green;" />
			</div>
		</div>
		<input type="button" value="결재 페이지로"/>
	</div>
</body>
</html>