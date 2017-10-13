<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<title>Home</title>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

<script>
	function themaAdd() {
		document.getElementById('themaAdd').style.display = "inline";
	}

	function locationAdd() {
		document.getElementById('locationAdd').style.display = "inline";
	}

	function dateAdd() {
		document.getElementById('dateAdd').style.display = "inline";
	}
	function dateAdd2() {
		document.getElementById('dateAdd2').style.display = "inline";
	}
	function dateAdd3() {
		document.getElementById('dateAdd3').style.display = "inline";
	}

	function teamAdd() {
		document.getElementById('teamAdd').style.display = "inline";
	}
	function search() {
		document.getElementById('result').style.display = "inline";
	}

	$(function() {
		$('ul.tab li').click(function() {
			var activeTab = $(this).attr('data-tab');
			$('ul.tab li').removeClass('current');
			$('.tabcontent').removeClass('current');
			$(this).addClass('current');
			$('#' + activeTab).addClass('current');
		})
	});

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
		$("#from").datepicker("option", "showAnim", "clip");
		$("#to").datepicker("option", "showAnim", "clip");
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

	/* function search() {
		var from = document.getElementById("from").value;
		document.getElementById("dateFrom").value = from;
		var to = document.getElementById("to").value;
		document.getElementById("dateTo").value = to;
		from = from.replace(/-/g, "") + "000000";
		to = to.replace(/-/g, "") + "235959";
		document.getElementById("from").value = from;
		document.getElementById("to").value = to;
		document.frm.submit(); 
		
	} */
</script>

<style>
#container {
	width: 960px;
	margin: 0 auto;
	text-align: center;
}

.tab {
	list-style: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}
/* Float the list items side by side */
.tab li {
	float: left;
}
/* Style the links inside the list items */
.tab li a {
	display: inline-block;
	color: #000;
	text-align: center;
	text-decoration: none;
	padding: 14px 16px;
	font-size: 17px;
	transition: 0.3s;
}
/* Style the tab content */
.tabcontent {
	display: none;
	background-color: rgb(0, 154, 200);
	padding: 6px 12px;
	color: #071910;
}

ul.tab li.current {
	background-color: rgb(0, 154, 200);
	color: #222;
}

.tabcontent.current {
	display: block;
}
</style>
</head>
<body>
	<%@include file="/include/header.jsp"%>
	<div id="container">
		<div id="tab-home">
			<!-- Nav tabs -->
			<ul class="tab">
				<li class="current" data-tab="tab1"><a href="#">thema</a></li>
				<li data-tab="tab2"><a href="#">location</a></li>
				<li data-tab="tab3"><a href="#">team</a></li>

			</ul>


			<div id="tab1" class="tabcontent current">
				<form id="thema" method="get" action="">
					<div id="thema" align="center">
						<input type="checkbox" /> <label>연극</label> <input
							type="checkbox" /> <label>뮤지컬</label> <input type="checkbox" />
						<label>축제</label> <span style="float: right">더보기<input
							type="button" id="add" onclick="themaAdd();" value="+" /></span>
					</div>


					<div id="themaAdd" align="center" style="display: none">
						<input type="checkbox" /> <label>전시회</label> <input
							type="checkbox" /> <label>발레</label> <input type="checkbox" />
						<label>오페라</label> <br> <span><input type="button"
							onclick="dateAdd();" value="날짜" /></span>
					</div>



					<div id="dateAdd" style="display: none">
						<input type="text" id="from" /> ~ <input type="text" id="to" />
					</div>

					<div>
						<input type="text"> <span style="float: right"><input
							type="button" onclick="search();" value="검색"> </span>
					</div>
				</form>
			</div>

			<div id="tab2" class="tabcontent">
				<form method="get" action="">
					<div id="location" align="center">
						<input type="checkbox" /> <label>서울특별시</label> <input
							type="checkbox" /> <label>부산광역시</label> <input type="checkbox" />
						<label>울산광역시</label> <span style="float: right">더보기<input
							type="button" id="add" onclick="locationAdd();" value="+" /></span>
					</div>

					<div id="locationAdd" align="center" style="display: none">
						<input type="checkbox" /> <label>경기도</label> <input
							type="checkbox" /> <label>전라도</label> <input type="checkbox" />
						<label>강원도</label><br> <span><input type="button"
							onclick="dateAdd2();" value="날짜" /></span>
					</div>



					<div id="dateAdd2" style="display: none">
						<input type="text" name="from" id="from" /> ~ <input type="text"
							id="to" />
					</div>

					<div>
						<input type="text"> <span style="float: right"><input
							type="button" onclick="search();" value="검색"> </span>
					</div>
				</form>
			</div>


			<div id="tab3" class="tabcontent">
				<form action="" id="team" method="get">
					<div id="team" align="center">
						<input type="checkbox" /> <label>발레단</label> <input
							type="checkbox" /> <label>뮤지컬</label> <input type="checkbox" />
						<label>교향악단</label> <span style="float: right">더보기<input
							type="button" id="add" onclick="teamAdd();" value="+" /></span>
					</div>

					<div id="teamAdd" align="center" style="display: none">
						<input type="checkbox" /> <label>팀1</label> <input
							type="checkbox" /> <label>팀2</label> <input type="checkbox" />
						<label>팀3</label><br> <span><input type="button"
							onclick="dateAdd3();" value="날짜" /></span>
					</div>



					<div id="dateAdd3" style="display: none">
						<input type="text" id="from" /> ~ <input type="text" id="to" />
					</div>

					<div>
						<input type="text"> <span style="float: right"><input
							type="button" onclick="search();" value="검색"> </span>
					</div>
				</form>
			</div>

		</div>
		<br> <br>
		<div id="result" style="display: none">

			<table border="1">
				<tr>
					<td><img src="images/1.jpg" width="300px" height="250px"></td>
					<td width="70%">title <br> 평점 <br> 공연일시 <br> 장소
					</td>
			</table>
		</div>
	</div>
	<%@include file="/include/footer.jsp"%>
</body>
</html>
