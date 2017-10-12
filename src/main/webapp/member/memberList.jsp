<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 조회</title>
<link rel='stylesheet'
	href='http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css' />
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script>
$(document).ready(
		function() {
			$(".saleDate")
					.datepicker(
							{
								dateFormat : 'yy-mm-dd',
								prevText : '이전 달',
								nextText : '다음 달',
								monthNames : [ '1월', '2월', '3월', '4월',
										'5월', '6월', '7월', '8월', '9월',
										'10월', '11월', '12월' ],
								monthNamesShort : [ '1월', '2월', '3월', '4월',
										'5월', '6월', '7월', '8월', '9월',
										'10월', '11월', '12월' ],
								dayNames : [ '일', '월', '화', '수', '목', '금',
										'토' ],
								dayNamesShort : [ '일', '월', '화', '수', '목',
										'금', '토' ],
								dayNamesMin : [ '일', '월', '화', '수', '목',
										'금', '토' ],
								showMonthAfterYear : true,
								yearSuffix : '년'
							});
			<c:if test="${cmd.datefrom == null}">
			getDate("datefrom");
			</c:if>
			<c:if test="${cmd.dateto == null}">
			getDate("dateto");
			</c:if>
		});
	
	function getDate(cal) {
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
		document.getElementById(cal).value = toDay;
	}
	
	function srchMemList(){
		var from = document.getElementById("datefrom").value;
		var to = document.getElementById("dateto").value;
		from = from.replace(/-/g,"")+"000000";
		to = to.replace(/-/g,"")+"235959";
		document.getElementById("from").value=from;
		document.getElementById("to").value=to;
		document.frm.submit();
	}
	
	function paging(page){
		document.getElementById("page").value = page;
		document.fp.submit();
	}
	
</script>
</head>
<body>
	<%@include file="/include/header.jsp"%>
	<div class="container">
		<form:form commandName="cmd" name="frm">
			<p>
				<label>from:<form:input path="datefrom" class="saleDate"
						readonly="true" /></label> ~ <label>to:<form:input path="dateto"
						class="saleDate" readonly="true" /></label> <input type="button"
					value="조회" onclick="javascript=srchMemList();">
				<form:hidden path="from" />
				<form:hidden path="to" />
			</p>
		</form:form>

		<c:if test="${! empty members }">
			<table border="1" style="width: 50%; text-align: center;">
				<tr>
					<th style="text-align: center;">아이디</th>
					<th style="text-align: center;">이메일</th>
					<th style="text-align: center;">이름</th>
					<th style="text-align: center;">가입일</th>
				</tr>
				<c:forEach var="mem" items="${members }">
					<tr>
						<td style="height: 15px;">${mem.id }</td>
						<td><a href="<c:url value="/member/detail/${mem.id }"/>">${mem.email }</a></td>
						<td>${mem.name }</td>
						<td><fmt:formatDate value="${mem.registerDate }"
								pattern="yyyy-MM-dd" /></td>
					</tr>
				</c:forEach>
				<tr align=center height=20>
					<td colspan=9>
						<ul class="pagination">
							<c:if test="${page != 1}">
								<!--맨 첫페이지 이동 -->
								<li><a onclick='paging(${startPage});'>«</a></li>
								<!--이전 페이지 이동 -->
								<li><a onclick='paging(${page}-1);'>‹</a></li>
							</c:if>

							<!--페이지번호 -->
							<c:forEach var='i' begin="${startPage}" end="${endPage}" step="1">
								<li><a onclick='paging(${i});'>${i}</a></li>
							</c:forEach>

							<c:if test="${page < endPage}">
								<!--다음 페이지 이동 -->
								<li><a onclick='paging(${page}+1);'>›</a></li>
								<!--마지막 페이지 이동 -->
								<li><a onclick='paging(${endPage});'>»</a></li>
							</c:if>
						</ul> <form:form commandName="pag" name="fp">
							<!--출력할 페이지번호, 출력할 페이지 시작 번호, 출력할 리스트 갯수 -->
							<form:hidden path="page" value="${page }" />
							<form:hidden path="listcount" value="${listcount }" />
							<form:hidden path="pfrom" value="${pfrom }" />
							<form:hidden path="pto" value="${pto }" />
						</form:form>
					</td>
			</table>
		</c:if>
	</div>
</body>
</html>