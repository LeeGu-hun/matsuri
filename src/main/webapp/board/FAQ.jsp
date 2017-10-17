<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<title>Home</title>

	<script
  src="https://code.jquery.com/jquery-3.2.1.js"
  integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
  crossorigin="anonymous"></script>
<script>
		
		function search(){
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
		
		 $(document).ready(function(){

			 $(".menu>a").click(function(){
				 $(this).next("ul").toggleClass("hide");
		        });
		    });


		
</script>


</head>
<style>
		#container {
			width:960px;
			margin:0 auto;
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
			transition:0.3s;
		}
		/* Style the tab content */
		.tabcontent {
			display: none;
			background-color:#F5A9A9;
			padding: 6px 12px;
			color:#000000;
		}
		ul.tab li.current{
			background-color: #F5A9A9;
			color: #000000;
		}
		.tabcontent.current {
			display: block;
		}
		
		.menu a{cursor:pointer;}
    .menu .hide{display:none;}



	</style>
<body>

<h2>FAQ / 자주묻는 질문</h2>
	<div id="container">
		<div id="tab-home">
			<!-- Nav tabs -->
			<ul class="tab">
			<li class="current" data-tab="tab1"><a href="#">공연문의</a></li>
			<li data-tab="tab2"><a href="#">축제문의</a></li>
			<li data-tab="tab3"><a href="#">모바일 앱 문의</a></li>
			<li data-tab="tab4"><a href="#">예매 문의</a></li>
			
		</ul>


			<div id="tab1" class="tabcontent current">
				<div>
					<ul>
						<li class="menu"><i class="fa fa-question" aria-hidden="true"></i>
							<a><img src="" alt="자주묻는질문1" /></a>
							<ul class="hide">
								<li>답변1</li>

							</ul></li>

						<li class="menu"><a><img src="" alt="자주묻는질문2" /></a>
							<ul class="hide">
								<li>답변2</li>

							</ul></li>
					</ul>



				</div>

			</div>
				
				<div id="tab2" class="tabcontent">
					<div>
					<ul>
						<li class="menu"><i class="fa fa-question" aria-hidden="true"></i>
							<a><img src="" alt="자주묻는질문1" /></a>
							<ul class="hide">
								<li>답변1</li>

							</ul></li>

						<li class="menu"><a><img src="" alt="자주묻는질문2" /></a>
							<ul class="hide">
								<li>답변2</li>

							</ul></li>
					</ul>



				</div>

			
				</div>
				
				
				<div id="tab3" class="tabcontent">
					<div>
					<ul>
						<li class="menu"><i class="fa fa-question" aria-hidden="true"></i>
							<a><img src="" alt="자주묻는질문1" /></a>
							<ul class="hide">
								<li>답변1</li>

							</ul></li>

						<li class="menu"><a><img src="" alt="자주묻는질문2" /></a>
							<ul class="hide">
								<li>답변2</li>

							</ul></li>
					</ul>
					</div>
					</div>
					
					<div id="tab4" class="tabcontent">
					<div>
					<ul>
						<li class="menu"><i class="fa fa-question" aria-hidden="true"></i>
							<a><img src="" alt="자주묻는질문1" /></a>
							<ul class="hide">
								<li>답변1</li>

							</ul></li>

						<li class="menu"><a><img src="" alt="자주묻는질문2" /></a>
							<ul class="hide">
								<li>답변2</li>

							</ul></li>
					</ul>
					</div>
					</div>
			</div>
			<br>
			<br>
			
		</div>
		
		<select>
				<option ></option>
				
				<option></option>
			</select>
</body>
</html>
