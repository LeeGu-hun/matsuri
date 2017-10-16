<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script>
	$(function() {
		$("#from").datepicker(
				{
					dateFormat : 'yy-mm-dd',
					prevText : '이전 달',
					nextText : '다음 달',
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ],
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
							'7월', '8월', '9월', '10월', '11월', '12월' ],
					dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
					dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
					showMonthAfterYear : true,
					yearSuffix : '년'
				});
		$("#to").datepicker(
				{
					dateFormat : 'yy-mm-dd',
					prevText : '이전 달',
					nextText : '다음 달',
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ],
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
							'7월', '8월', '9월', '10월', '11월', '12월' ],
					dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
					dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
					showMonthAfterYear : true,
					yearSuffix : '년'
				});
		$("#from").datepicker("option", "showAnim", "drop");
		$("#to").datepicker("option", "showAnim", "drop");

	});

	function getDate() {
		var newDate = new Date();
		var yyyy = newDate.getFullYear();
		var mm = newDate.getMonth() + 1;
		if (mm < 10) {
			mm = "0" + mm;
		}
		var dd = newDate.getDate();
		if (dd < 10) {
			dd = "0" + dd;
		}
		var toDay = yyyy + "-" + mm + "-" + dd;
		<c:if test="${cmd.dateFrom==null}">
		document.getElementById("from").value = toDay;
		</c:if>
		<c:if test="${cmd.dateTo==null}">
		document.getElementById("to").value = toDay;
		</c:if>
	}
	function srchMemList() {
		var from = document.getElementById("from").value;
		var to = document.getElementById("to").value;
		document.getElementById("dateFrom").value = from;
		document.getElementById("dateTo").value = to;
		from = from.replace(/-/g, "") + "000000";
		to = to.replace(/-/g, "") + "235959";
		document.getElementById("from").value = from;
		document.getElementById("to").value = to;
		document.frm.submit();
	}
</script>
</head>
<body>
	<%@include file="/include/header.jsp"%>

	<div id="container">
	<div id="tab-home">
			<!-- Nav tabs -->
			<ul class="tab">
			<li class="current" data-tab="tab1"><a href="#">공연팀 정보 등록</a></li>
			<li data-tab="tab2"><a href="#">공연 등록</a></li>
			
			
		</ul>
		<table>
			<tr>
				<h2>공연 등록</h2>
				<label style="font-size: 20px">팀 이름 : <input type="text" />
				</label>
				<br>

				<label style="font-size: 20px">분류 : <select>
						<option />
				</select>
				</label>
				<br>

				<label style="font-size: 20px">공연/축제 제목 : <input type="text" />*20자
					이내로 작성해주세요
				</label>
				<br>

				<label style="font-size: 20px">장소 : <input type="text" />
				</label>
				<br>

				<label style="font-size: 20px">요금 : <input type="text" />
				</label>
				<br>

				<label style="font-size: 20px">공연 기간 : <input type="text"
					id="from" /> ~ <input type="text" id="to" />
				</label>
				<br>

				<label style="font-size: 20px">예매 기능 <input type="radio" />예
					<input type="radio" />아니오
				</label>
				<br>

				<label style="font-size: 20px">팀 소개 : <textarea rows="5"
						cols="40"></textarea>
				</label>

				<p>
					<label style="font-size: 20px">사진 : <input type="file"
						id="file" name="file" onchange="readURL(this)" />
					</label>
				</p>
				
				<P>
				<input type="submit" class="btn btn-primary" value="등록"/>
				<input type="submit" class="btn btn-danger" value="취소"/>
				</P>
			</tr>
		</table>
		</div>
	</div>
</body>
</html>