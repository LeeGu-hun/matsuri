<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div id="contents">
	<c:if test="${!empty boardList }">
			<c:forEach var="boa" items="${boardList }">
				<div style="width:50%;min-width:550px;margin-left:auto;margin-right: auto;border: 1px dashed black;text-align: center;">
					<div class="row" style="height:40px;">
						<div class="col-md-4">
						<a href="<c:url value="/member/detail/${boa.writer_id }"/>">
						<img src="./images/thumnail.jpg" alt="Responsive image" style="height:50px"/>
						</a>
						<a href="<c:url value="/member/detail/${boa.writer_id }"/>">${boa.name }</a>
						</div>
						<div class="col-md-4"></div>
						<div class="col-md-4"><fmt:formatDate value="${boa.date }" pattern="yyyy-MM-dd" /></div>
					</div>
					<p></p>
					<div>
					<c:if test="${!empty boa.content }">
					${boa.content }
					</c:if>
					</div>
					<div>
					<c:if test="${!empty boa.file }">
					<img src="./uploads/${boa.file }" style="width:100%;max-width:500px;"/>
					</c:if>
					</div>
				</div>
				<br/>
			</c:forEach>
	</c:if>
	<c:if test="${empty boardList }">
		No Data!
	</c:if>
</div>