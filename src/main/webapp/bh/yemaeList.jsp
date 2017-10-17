<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="css/semantic.css" />
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
		$("#from").datepicker("option", "showAnim", "blind");
		$("#to").datepicker("option", "showAnim", "blind");
		getDate();
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
		<c:if test="${cmd.dateFrom == null }">
		document.getElementById("from").value = toDay;
		</c:if>
		<c:if test="${cmd.dateTo == null }">
		document.getElementById("to").value = toDay;
		</c:if>
	}

</script>

</head>
<body>
<%@include file="/include/header.jsp"%>
<h2>관람 기록</h2>
<hr color="#EFEFEF" width="80%">
<center>
<button class="ui circular linkedin icon button">
   1주일
</button>
<button class="ui circular linkedin icon button">
   1개월
</button>
<button class="ui circular linkedin icon button">
   3개월
</button>
<button class="ui circular linkedin icon button">
   6개월
</button>
<button class="ui circular google plus icon button">
  오늘
</button>
 &nbsp; &nbsp;&nbsp;
	<input type="text" id="from" />~<input type="text" id="to" /> 
	<a href="21.jsp" class="ui button">조회</a>
	<br><br>
	<hr color="#EFEFEF" width="380%">
	<br><br>
	<table border="1">
		<tbody>
			<tr>
				<th colspan="2">
				예매한 공연 
				</th>
			
			</tr>
			<tr style="text-align:center">
			
				<td width="30%">
					<img src="image/dg.jpg" />
				</td>
				<td width="70%">
					zz
				</td>
			</tr>
		</tbody>
	</table>
	
</center>
</body>
</html>