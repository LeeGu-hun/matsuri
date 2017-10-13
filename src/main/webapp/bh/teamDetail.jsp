<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/controller.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.20.3/TweenMax.min.js"></script>
<link rel="stylesheet" href="css/common.css" />
<link rel="stylesheet" href="css/unit.css" />
<link rel="stylesheet" href="css/semantic.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<script>
	
	
	$(function() {
	      $('#content').keyup(function (e){
	          var content = $(this).val();
	          $(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
	          $('#counter').html(content.length + '/150');
	      });
	      $('#content').keyup();
	});
	</script>
</head>
<body>
<%@include file="/include/header.jsp"%>
<h3>팀 상세 페이지</h3>
<div style="float:top; clear:both; width:100%; height:auto">
	
		<br> <br>
		<div class="slide">
			<button class="prev" type="button">
				<img src="images/prev.png" alt="" />
			</button>
			<ul>
				<li><img src="images/pal_1.jpg" alt="" /></li>
				<li><img src="images/pal_3.jpg" alt="" /></li>
				<li><img src="images/pal_7.jpg" alt="" /></li>
				<li><img src="images/pal_8.jpg" alt="" /></li>
			</ul>
			<button class="next" type="button">
				<img src="images/next.png" alt="" />
			</button>
	
		<br>
<br>
	</div>
</div>

<br><br>
<center>
<table class="ui single line table" style="text-align:center; display:inline">
  <thead>
    <tr>
      <th width="200px">팀명</th>
      <th width="200px">최근 공연</th>
      <th width="200px">예정 공연</th>
      <th width="200px">지난 공연</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>d</td>
       <td>d</td>
        <td>d</td>
         <td>s</td>
    </tr>
  </tbody>
</table>

<br><br><br>
</center>
<center><center><hr color="#EFEFEF" width="80%"></center>
		<h3><i class="fa fa-pencil-square-o" aria-hidden="true"></i> 평점 & 리뷰 작성</h3>
		<br>
	<br>
		평점 : 
		<select>
		<option>1점</option>
		<option>2점</option>
		<option>3점</option>
		<option>4점</option>
		<option>5점</option>
		</select>
		<textarea id="content" maxlength="150" placeholder="리뷰를 입력해주세요.(150자 이내)" style="width:700px; height:40px"></textarea>
		<span id="counter">###</span>
		
		<a href="/matsuri/detail5" class="ui violet button">작성하기</a></div>
	
		<table>
		<thead>
		<tr style="width:10%"><th>순번</th>
		<th style="width:15%">평점</th>
		<th style="width:60 %">150자 평</th> 
		<th style="width:15%">글쓴이 & 날짜</th>
		</tr>
		</thead>
		<tbody>
		<tr>
		<td>1</td>
		<td><div style="CLEAR: both;	PADDING-RIGHT: 0px;	PADDING-LEFT: 0px;	BACKGROUND: url(images/icon_star2.gif) 0px 0px;	FLOAT: left;	PADDING-BOTTOM: 0px;	MARGIN: 0px;	WIDTH: 90px;	PADDING-TOP: 0px;	HEIGHT: 18px;">
	<p style="WIDTH: 80%; PADDING-RIGHT:0px;	PADDING-LEFT:0px;	BACKGROUND: url(images/icon_star.gif) 0px 0px;	PADDING-BOTTOM: 0px;	MARGIN: 0px;	PADDING-TOP: 0px;	HEIGHT: 18px;">
	</p>
	</div></td>
		<td>재밌네요 하항</td>
		<td>짱구 <br>2017.05.05</td>
		<tr>
		</tbody>
		</table>
	</div>
</center>		

</body>
</html>