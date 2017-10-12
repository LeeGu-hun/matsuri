<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div id="writer">
	<form:form action="writeEnd" commandName="boardCommand"
		enctype="multipart/form-data">
		<p>
			<label>글쓰기<br> <textarea id="conent" name="conent"></textarea>
				<%-- <form:textarea path="contents"/> --%>
			</label>
		</p>
		<p>
			<label>첨부파일 <input type="file" id="file" name="file"
				onchange="readURL(this)"/>
			</label>
		</p>
				<img id="UploadedImg" name="UploadedImg" />
		<p>
			<input type="submit" value="글쓰기" class="btn btn-info"/>
		</p>
		<input type="hidden" name="hostid" id="hostid"
			value="${authInfo.getId() }" />
		<input type="hidden" name="writerid" id="writerid"
			value="${authInfo.getId() }" />
		<input type="hidden" name="upDir" id="upDir"
			value="<%=request.getSession().getServletContext().getRealPath("/uploads/")%>" />
	</form:form>
</div>