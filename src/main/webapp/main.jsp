<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MySNS</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="./css/Style.css?ver=4">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js">
</script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function() {
		$('.carousel').carousel({
			interval : 2000
		});
	});
</script>
</head>
<body>
	<%@include file="/include/header.jsp"%>
	<center>
		<div id="crs" class="carousel slide" style="width: 800px;">
			<ol class="carousel-indicators">
				<li data-target="#crs" data-slide-to="0" class="active"></li>
				<li data-target="#crs" data-slide-to="1"></li>
				<li data-target="#crs" data-slide-to="2"></li>
			</ol>

			<div class="carousel-inner" style="width: 400px;">
				<div class="item active">
					<img src="resources/image/1.jpg" width="300px" />
					<div class="carousel-caption"></div>
				</div>
				<div class="item" style="width: 400px;">
					<img src="resources/image/3.jpg" width="300px" />
					<div class="carousel-caption">이미지2</div>
				</div>
				<div class="item" style="width: 400px;">
					<img src="resources/image/4.jpg" width="300px" />
					<div class="carousel-caption">이미지3</div>
				</div>
			</div>

			<a class="left carousel-control" href="#crs" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left"></span>
			</a> <a class="right carousel-control" href="#crs" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>

		</div>

	</center>
	<br>
	<br>
	<div style="border: 1px solid black; margin-left: 250px;"
		class="col-md-4">
		<table>
			<thead>
				<tr>
					<th>예매율 TOP5</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>top1
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						예매율 %</td>
				</tr>
				<tr>
					<td>top2</td>
				</tr>
				<tr>
					<td>top3</td>
				</tr>
				<tr>
					<td>top4</td>
				</tr>
				<tr>
					<td>top5</td>
				</tr>
			</tbody>
		</table>
	</div>

	<div class="col-md-4" style="border: 1px solid black">
		<table>
			<thead>
				<tr>
					<th>마감임박 TOP5</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>top1</td>
				</tr>
				<tr>
					<td>top2</td>
				</tr>
				<tr>
					<td>top3</td>
				</tr>
				<tr>
					<td>top4</td>
				</tr>
				<tr>
					<td>top5</td>
				</tr>
			</tbody>
		</table>
	</div>
	<br />
	<br />
	<div class="col-md-4"
		style="border: 1px solid black; margin-left: 250px;">
		<table>
			<thead>
				<tr>
					<th>조회수 top5 팀별</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>top1</td>
				</tr>
				<tr>
					<td>top2</td>
				</tr>
				<tr>
					<td>top3</td>
				</tr>
				<tr>
					<td>top4</td>
				</tr>
				<tr>
					<td>top5</td>
				</tr>
			</tbody>

		</table>
	</div>

	<div class="col-md-4" style="border: 1px solid black">
		<table>
			<thead>
				<tr>
					<th>마감임박 TOP5</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>top1</td>
				</tr>
				<tr>
					<td>top2</td>
				</tr>
				<tr>
					<td>top3</td>
				</tr>
				<tr>
					<td>top4</td>
				</tr>
				<tr>
					<td>top5</td>
				</tr>
			</tbody>
		</table>
	</div>
	<br>
	<%@include file="/include/footer.jsp"%>
</body>
</html>