<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<link rel="stylesheet" href="/mySnscyj/css/header.css?ver=4">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<style>
body {
	padding-top: 50px;
}

.color-link {
	background-color: red;
	color: white !important;
}

.color-link:hover {
	color: black !important;
}
</style>
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/mySnscyj/main">로고 로고 로고</a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <span class="glyphicon glyphicon-user"></span>
							<strong><spring:message code="header.name"
									arguments="${authInfo.name}" /></strong> <span
							class="glyphicon glyphicon-chevron-down"></span>
					</a>
						<ul class="dropdown-menu">
							<li>
								<div class="navbar-login">
									<div class="row">
										<div class="col-lg-4">
											<p class="text-center">
												<span class="glyphicon glyphicon-user icon-size"></span>
											</p>
										</div>
										<div class="col-lg-8">
											<p class="text-left">
												<strong><spring:message code="main.welcome"
														arguments="${authInfo.name}" /></strong>
											</p>
											<p class="text-left small">
												<spring:message code="header.name"
													arguments="${authInfo.email}" />
											</p>
											<p class="text-left">
												<a href="./edit/changePassword"
													class="btn btn-primary btn-block btn-sm">개인정보 변경</a>
												<a href="./edit/changePassword"
													class="btn btn-primary btn-block btn-sm">예매 확인</a>
												<a href="./edit/changePassword"
													class="btn btn-primary btn-block btn-sm">관람 기록 확인</a>
											</p>
										</div>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="navbar-login navbar-login-session">
									<div class="row">
										<div class="col-lg-12">
											<p>
												<a href="/mySnscyj/logout" class="btn btn-danger btn-block">로그아웃</a>
											</p>
										</div>
									</div>
								</div>
							</li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="active"><a href="/mySnscyj/main">Search</a></li>
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown">공연팀 및 공연장<b class="caret"></b>
					</a>
						<ul class="dropdown-menu multi-level">
							<li><a href="/mySnscyj/member/list">공연팀 검색</a></li>
							<li><a href="#">공연장 검색</a></li>
						</ul></li>
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown">사이트 정보<b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">Q&A</a></li>
							<li><a href="#">문의 게시판</a></li>
						</ul>
					</li>
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown">공연팀 전용 페이지<b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">공연팀 정보 등록</a></li>
							<li><a href="#">공연 등록</a></li>
						</ul>
					</li>
				</ul>
				
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
</body>