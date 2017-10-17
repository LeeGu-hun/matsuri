<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<link rel="stylesheet" href="/matsuri/css/header.css?ver=4">
<link rel="stylesheet"
   href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet"
   href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">


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
            <a class="navbar-brand" href="/matsuri2/main">로고 로고 로고</a>
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
                                 <c:if test="${empty authInfo }">

                                    <form:form commandName="loginCommand" action="./main">
                                       <c:if test="${empty cookie.REMEMBER.value}">
                                          <div class="ui input" style="padding-top: 30px;">
                                             <input type="text" name="email" id="email"
                                                placeholder="ID / E-mail" />
                                          </div>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <div class="ui input">
                                             <input type="password" name="password" id="password"
                                                placeholder="PASSWORD" /> <br>
                                             <div class="ui slider checkbox">
                                                <input type="checkbox" name="rememberEmail"
                                                   id="rememberEmail" /> <label style="font-size: 14px">ID
                                                   저장하기 </label>
                                             </div>
                                             <br> <input type="submit"
                                                class="btn btn-primary btn-block" value="LOGIN">
                                          </div>
                                          <br>

                                       </c:if>
                                       <c:if test="${! empty cookie.REMEMBER.value}">

                                          <div class="ui input" style="padding-top: 30px;">
                                             <input type="text" name="email" id="email"
                                                value="${cookie.REMEMBER.value}" />
                                          </div>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <div class="ui input">
                                             <input type="password" name="password" id="password"
                                                placeholder="PASSWORD" />
                                          </div>
                                          <input type="submit"
                                             class="ui inverted red button, huge ui button"
                                             value="LOGIN">
                                          <br>
                                          <div class="ui slider checkbox">
                                             <input type="checkbox" name="rememberEmail"
                                                id="rememberEmail" checked /> <label
                                                style="font-size: 14px; padding-right: 30px;">ID
                                                저장하기 </label>
                                          </div>
                                          <a href="./register/step1"
                                             style="color: red; padding-right: 30px;">회원가입을 원하세요?</a>
                                          <hr>
                                       </c:if>

                                    </form:form>
                                 </c:if>

                                 <c:if test="${! empty authInfo }">
                                    <div style="padding-top: 30px;">

                                       <span style="font-size: 16px"><b>${authInfo.name }</b>님
                                          환영합니다! &nbsp;&nbsp;&nbsp;</span> <br> <br>
                                       <p class="text-left">
                                          <a href="./edit/changePassword"
                                             class="btn btn-primary btn-block btn-sm">개인정보 변경</a> <a
                                             href="./edit/changePassword"
                                             class="btn btn-primary btn-block btn-sm">예매 확인</a> <a
                                             href="./edit/changePassword"
                                             class="btn btn-primary btn-block btn-sm">관람 기록 확인</a>
                                       </p>
                                       <br>

                                       <hr>
                                       <a href="<c:url value='/logout'/>"
                                          class="btn btn-danger btn-block">로그아웃</a>
                                    </div>
                                 </c:if>


                              </div>
                           </div>
                        </div>
                     </li>


                  </ul></li>
            </ul>
            <ul class="nav navbar-nav">
               <li class="active"><a href="search">Search</a></li>
               <li><a href="#" class="dropdown-toggle" data-toggle="dropdown">공연팀
                     및 공연장<b class="caret"></b>
               </a>
                  <ul class="dropdown-menu multi-level">
                     <li><a href="#">공연팀 검색</a></li>
                     <li><a href="#">공연장 검색</a></li>
                  </ul></li>
               <li><a href="#" class="dropdown-toggle" data-toggle="dropdown">사이트
                     정보<b class="caret"></b>
               </a>
                  <ul class="dropdown-menu">
                     <li><a href="faq">FAQ</a></li>
                     <li><a href="#">문의 게시판</a></li>
                  </ul></li>
               <li><a href="#" class="dropdown-toggle" data-toggle="dropdown">공연팀
                     전용 페이지<b class="caret"></b>
               </a>
                  <ul class="dropdown-menu">
                     <li><a href="#">공연팀 정보 등록</a></li>
                     <li><a href="#">공연 등록</a></li>
                  </ul></li>
            </ul>

         </div>
         <!--/.nav-collapse -->
      </div>
   </div>
</body>