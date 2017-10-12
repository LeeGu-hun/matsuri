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
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="js/lightslider.js"></script>
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

 
<style>
ul {
	list-style: none outside none;
	padding-left: 0;
	margin: 0;
}

.demo .item {
	margin-bottom: 60px;
}

.content-slider li {
	background-color: #ed3020;
	text-align: center;
	color: #FFF;
}

.content-slider h3 {
	margin: 0;
	padding: 70px 0;
}

.demo {
	width: 800px;
}

</style>
</head>
<body>
		<h2>공연 상세 보기</h2>
<hr color="#EFEFEF" width="80%">		
		<div>
		<h3>공연 포스터 & 스틸 컷</h3>
		<center>
			<div class="slide">
			<button class="prev" type="button">
				<img src="image/prev.png" alt="" />
			</button>
			<ul>
				<li><img src="image/mjc.jpg" alt="" /></li>
				<li><img src="image/changwon2.jpg" alt="" /></li>
				<li><img src="image/changwon3.jpg" alt="" /></li>
				<li><img src="image/changwon4.jpg" alt="" /></li>
				<li><img src="image/changwon5.jpg" alt="" /></li>
			</ul>
			<button class="next" type="button">
				<img src="image/next.png" alt="" />
			</button>
		</div>
		</center>
		</div>
	<center><hr color="#EFEFEF" width="80%"></center>
	
		<div style="float: left; width: 50%; height: auto;">
		<center>
			<table class="ui very basic collapsing celled table">
			<br>
			
				<thead>
					<tr>
						<th colspan="2"><h4><i class="fa fa-bell-o"></i>&nbsp;공연 정보</h4></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
						<b>공연 명</b> 
						</td>
						<td>다시만난세계</td>
					</tr>
					<tr>
						<td>
						<b>공연 팀</b> 
						</td>
						<td>소녀시대</td>
					</tr>
					<tr>
						<td>
							<b>공연 장소</b> 
						</td>
						<td>부산광역시 예술의 전당, 울산 문화 예술 회관</td>
					</tr>
					<tr>
						<td>
							<b>공연 기간</b> 
						</td>
						<td>2017.05.11~2017.05.29</td>
					</tr>
					<tr>
						<td>
							<b>공연 설명</b> 
						</td>
						<td>우리 공연은 재밌습니다. 우리 공연은 재밌습니다.우리 공연은 재밌습니다.<br>
						우리 공연은 재밌습니다.우리 공연은 재밌습니다.우리 공연은 재밌습니다.<br>
						우리 공연은 재밌습니다.우리 공연은 재밌습니다.우리 공연은 재밌습니다.<br>
						우리 공연은 재밌습니다.</td>
					</tr>
					<tr>
						<td>
							<b>지난 공연</b> 
						</td>
						<td>스폰지밥<br>아따맘마<br>짱구는 못말려</td>
					</tr>
					<tr>
						<td>
							<b>연도별 동일 공연</b> 
						</td>
						<td>2015 스폰지밥<br>2016 스폰지밥 <br> 2017 스폰지밥</td>
					</tr>
				</tbody>
			</table>
		</center>
		</div>
		
		<div style="float: right; width: 50%; height: auto">
		<center>
		<br>
		<b>예매 가능 기간</b> : 2017.05.01~2017.05.10 &nbsp; &nbsp; &nbsp;
		<a href="24.jsp" class="ui violet button">예매 하러 가기</a>
		<br>
		<br>
		<hr color="#EFEFEF" width="600px">
		</center>
		</div>
		<br>
		
		<div style="float: right; width: 50%; height: auto">
		  <div id="map" style="width:500px; height:300px; border:1px solid #cccccc">
		</div>
		<br>
		<b><h4><i class="fa fa-bell-o"></i> &nbsp; 공연장 위치 & 오시는 길</h4></b><br>
		<b>● 고속도로 이용시</b>
		<br>
		<span>☞ 호남고속도로 <br>
		전주톨게이트 → 군산방면(21번국도 진입) → 익산 및 대야 (21번국도 통과) → 당북교차로 (진포해양테마공원,의료원방면)에서 21번국도 진출 → 월명로 → 남북로 사거리에서 좌회전 → 약 200m 앞 우측<br>
		☞ 서해안고속도로<br>
		동군산톨게이트 → 군산산업단지(21번국도)방향 → 당북교차로 (진포해양테마공원,의료원 방면)에서 21번국도 진출 → 월명로 → 남북로 사거리에서 좌회전 → 약 200m 앞 우측</span>
		<br><br><b>● 대중교통 이용시</b><br>
		<span>- 정류장(예술의전당) : 35,36,39,59,59,59,72번 버스 <br>- 정류장(메가라인) : 37,38번 버스</span>
		</div>
		<br>
		<div style="float:bottom; clear:both">
		<br>
		<br>
		<center><hr color="#EFEFEF" width="80%">
		<h3><i class="fa fa-pencil-square-o" aria-hidden="true"></i>평점 & 리뷰 작성</h3></center>
		<br>
		<center>
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
		
		<a href="#" class="ui violet button">작성하기</a></center></div>
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
	<p style="WIDTH: 80%; PADDING-RIGHT:0px;	PADDING-LEFT:0px;	BACKGROUND: url(image/icon_star.gif) 0px 0px;	PADDING-BOTTOM: 0px;	MARGIN: 0px;	PADDING-TOP: 0px;	HEIGHT: 18px;">
	</p>
	</div></td>
		<td>재밌네요 하항</td>
		<td>짱구 <br>2017.05.05</td>
		<tr>
		</tbody>
		</table>
		</center>
</body>
</html>