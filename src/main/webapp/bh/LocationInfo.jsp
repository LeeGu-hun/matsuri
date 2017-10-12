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
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBAjMFCju1il0v1g2Rr2XWveNiao8Vq968"></script>
<!--  구글맵 스크립트 불러오기 -->
<script>
  function init(){//init 함수
   var latlng = new google.maps.LatLng(35.22558739999999,128.69007720000002);//위도 경도 설정 (위도,경도)
   var map_init ={
    center : latlng, 
    zoom : 15, 
    mapTypeId : google.maps.MapTypeId.ROADMAP //맵 설정 
   };
   var map_out = new google.maps.Map(document.getElementById("map"),map_init);//지도출력
   
   var marker = new google.maps.Marker({
     position : latlng,
     map : map_out,
     title : '여기' <!-- 마우스 올렸을 때 뜨는 문구 -->
   });
   
   var info = new google.maps.InfoWindow({
    content: '경상남도 창원시 의창구 신월동 74-9' <!-- 클릭 시 뜨는 문구-->
   });
   
   google.maps.event.addListener(marker,"click",function(){
    info.open(map_out, marker);
   })
  }
  
  google.maps.event.addDomListener(window,'load',init); //로딩되는동안 init이라는 함수를 실행하세요
 </script>
 <script>
	$(document).ready(function() {
		$("#content-slider").lightSlider({
			loop : true,
			keyPress : true
		});
		$('#image-gallery').lightSlider({
			gallery : true,
			item : 1,
			thumbItem : 9,
			slideMargin : 0,
			speed : 500,
			auto : true,
			loop : true,
			onSliderLoad : function() {
				$('#image-gallery').removeClass('cS-hidden');
			}
		});
	});
	
	$(function() {
	      $('#content').keyup(function (e){
	          var content = $(this).val();
	          $(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
	          $('#counter').html(content.length + '/150');
	      });
	      $('#content').keyup();
	});
</script>
 
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
</head>
<body>
	<div style="float: left; width: 50%; height: auto;">
		<br> <br>
		<div class="slide">
			<button class="prev" type="button">
				<img src="image/prev.png" alt="" />
			</button>
			<ul>
				<li><img src="image/pal_1.jpg" alt="" /></li>
				<li><img src="image/pal_3.jpg" alt="" /></li>
				<li><img src="image/pal_7.jpg" alt="" /></li>
				<li><img src="image/pal_8.jpg" alt="" /></li>
			</ul>
			<button class="next" type="button">
				<img src="image/next.png" alt="" />
			</button>
		</div>
		<br>
<br>
	</div>
	<div style="float: right; width: 50%; height: auto;">
		<div>
			<center>
				<table class="ui very basic collapsing celled table">
					<br>
					<br>
				
					<thead>
						<tr>
							<th colspan="2"><h4>
									<i class="fa fa-bell-o"></i>&nbsp;공연장 정보
								</h4></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><b>공연장 이름</b></td>
							<td>창원컨벤션센터</td>
						</tr>
						<tr>
							<td><b>지역</b></td>
							<td>경상남도 창원시</td>
						</tr>
						<tr>
							<td><b>위치</b></td>
							<td>경상남도 창원시 의창구 원이대로 362</td>
						</tr>
						<tr>
							<td><b>공연장 정보</b></td>
							<td>환상적인 공연장입니다.환상적인 공연장입니다.환상적인 공연장입니다.<br> 환상적인
								공연장입니다.환상적인 공연장입니다.환상적인 공연장입니다.<br> 환상적인 공연장입니다.환상적인
								공연장입니다.
							</td>
						</tr>
						
					</tbody>
				</table>
					<br>
				
				<table class="ui very basic collapsing celled table">
					<thead>
						<tr>
							<th colspan="2"><h4>
									<i class="fa fa-bell-o"></i>&nbsp;공연 정보
								</h4></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><b>지난 공연</b></td>
							<td>오페라의 유령 17.11.20~ 17.12.10</td>
						</tr>
						<tr>
							<td><b>공연 예정</b></td>
							<td>코뿔소 17.09.01 ~ 17.09.30</td>
						</tr>

					</tbody>
				</table>
			</center>
		</div>
	</div>
	<br>
	<br>
	
	<div style="float:bottom; clear:both">
	<br>
	<h3 style="margin-left:150px"><i class="fa fa-map" aria-hidden="true"></i> 찾아 오시는 길</h3>
	<center>
		<hr color="#EFEFEF" width="80%">
	
	<div id="map" style="width:500px; height:300px; border:1px solid #cccccc"></div>
	<br>
	<b>● 고속도로 이용시</b>
		<br>
		<span>☞ 호남고속도로 <br>
		전주톨게이트 → 군산방면(21번국도 진입) → 익산 및 대야 (21번국도 통과) → 당북교차로 (진포해양테마공원,의료원방면)에서 21번국도 진출 → 월명로 → 남북로 사거리에서 좌회전 → 약 200m 앞 우측<br>
		☞ 서해안고속도로<br>
		동군산톨게이트 → 군산산업단지(21번국도)방향 → 당북교차로 (진포해양테마공원,의료원 방면)에서 21번국도 진출 → 월명로 → 남북로 사거리에서 좌회전 → 약 200m 앞 우측</span>
		<br><br><b>● 대중교통 이용시</b><br>
		<span>- 정류장(예술의전당) : 35,36,39,59,59,59,72번 버스 <br>- 정류장(메가라인) : 37,38번 버스</span>
		<br><br>
		<center><hr color="#EFEFEF" width="80%"></center>
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
		
		<a href="27.jsp" class="ui violet button">작성하기</a></center></div>
		<center>
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
		<td><div style="CLEAR: both;	PADDING-RIGHT: 0px;	PADDING-LEFT: 0px;	BACKGROUND: url(image/icon_star2.gif) 0px 0px;	FLOAT: left;	PADDING-BOTTOM: 0px;	MARGIN: 0px;	WIDTH: 90px;	PADDING-TOP: 0px;	HEIGHT: 18px;">
	<p style="WIDTH: 10%; PADDING-RIGHT:0px;	PADDING-LEFT:0px;	BACKGROUND: url(image/icon_star.gif) 0px 0px;	PADDING-BOTTOM: 0px;	MARGIN: 0px;	PADDING-TOP: 0px;	HEIGHT: 18px;">
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