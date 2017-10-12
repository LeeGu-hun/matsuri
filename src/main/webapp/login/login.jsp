<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cookie = request.getHeader("Cookie");
	String id = "";
	String check = "";
	if(cookie !=null){
		Cookie cookies[] = request.getCookies();
		for(int i=0;i<cookies.length;i++){
			if(cookies[i].getName().equals("id")){
				id=cookies[i].getValue();
				check = "checked";
			}
		}
	}

%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function sendIt() {
		id = document.getElementById("id");
		pw = document.getElementById('pw');
		hold = document.getElementById("hold").checked;
		if (id.value == "") {
			document.getElementById('result').textContent = '아이디를 확인해주세요';
			id.focus();
			return;
		} else if (pw.value == "") {
			document.getElementById('result').textContent = '비밀번호를 확인해주세요';
			pw.focus();
			return;
		}
	$.ajax({
		type : "POST",
		url : "Login.do",
		data : "id=" + id.value + "&pw=" + pw.value + "&hold=" + hold, //쿼리
		success : result
	
	});
	}
	function result(msg) {
		$('#result').html(msg);
	}

</script>


</head>
<body onload="document.reset();">
<div id="content">
	<center>
		<h1><b><font size=5>로그인</font></b>
		<span style="textalign:center;">
			<form>
				</h1>
				<input type="text" name="id" id="id" placeholder="아이디"
					style="height: 25px;" margin: 30px 0;" value="<%=id %>" /> 
					<br>
				<input type="password" name="pw"
					id="pw" placeholder="비밀번호" style="height: 25px; margin-bottom :10px;"/> <br> 
				<input	type="checkbox" name="hold" id="hold" <%=check %> />
					<label for="hold">로그인 상태 유지</label> <br>
					
				<span id="result" style="font-size: 9pt; color:red;" ></span> <br> 
				 <button id="btnlogin" onclick="javascript=sendIt();" >로그인</button>
				 
			</form>
		</span>
	</center>
	</div>
	<%@include file="/include/footer.jsp"%>
</body>
</html>