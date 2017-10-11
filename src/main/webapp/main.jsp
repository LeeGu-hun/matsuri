<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MySNS</title>
<link rel="stylesheet" href="./css/Style.css?ver=4">
<script src="https://code.jquery.com/jquery-3.1.1.js"></script>
<script>
	function register1() {
		$("#box1r").show();
		$("#box1l").hide();
	}
	function login1() {
		$("#box1r").hide();
		$("#box1l").show();
	}
	
	function readURL(input){
		if(input.files && input.files[0]){
			var reader = new FileReader();
			reader.onload = function(e){
				$('#UploadedImg').attr('src',e.target.result);
				$('#UploadedImg').attr('width',300);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	
	$(document).ready(function(){
		var k = 11;
		var hid;	
		var appendDocument = function() {
			$.ajax({
				type : "POST",
				url : "scrolling.ac",
				data : "hid="+hid+"&sp="+k+"&ep="+(k+9),
				success : function(html){
					if(html != null)
					$('#contents').html($('#contents').html()+html);
				}
			});			
			k+=10;
		}
		
		$(window).scroll(function(){
			hid = document.getElementById("hid").value;
			var scrollheight = $(window).scrollTop()+$(window).height();
			var documentheight = $(document).height();
		
			if(scrollheight == documentheight){
				appendDocument();
			}
		});
	});		
</script>
</head>
<body>
	<c:if test="${empty authInfo }">
		<div class="container">
			<div id="box1" class="center-block">
				<div id="box1l" class="box1_1">
					<%@include file="/login/loginForm.jsp"%>
					<p>환영합니다</p>
					<button type="button" class="btn btn-info"
						onclick="javascript=register1();">회원가입하기</button>
				</div>
				<div id="box1r" class="box1_1" style="Display: none;">
					<%@include file="register/step1.jsp"%>
					<button type="button" class="btn btn-danger"
						onclick="javascript=login1();">로그인하기</button>
				</div>
			</div>
			<div id="box2"></div>
		</div>
	</c:if>
	<c:if test="${!empty authInfo }">
		<%@include file="/include/header.jsp"%>
		<input type="hidden" value="${authInfo.getId() }" name="hid" id="hid" />
		<div>
			<p>
				<spring:message code="login.done" />
			</p>
			<p>
				<a href="<c:url value='/main'/>"> [<spring:message
						code="go.main" />]
				</a>
			</p>
			<%@include file="/board/boardWriter.jsp"%>
			<%@include file="/board/myList.jsp"%>
			<div id="tale" name="tale"></div>
		</div>
	</c:if>
</body>
</html>