<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myPage.css" />
<script src="<c:url value="/resources/js/myPage.js" />"></script>
<c:url var="root" value="/"/>

<title>마이페이지 - 관람내역</title>

<%@ include file="myPageHeader.jsp" %>

<!-- 전체 관람내역 나오는 페이지 -->
<center>
	<div class="sub_content">
		<div class="myMovieHistory">
		
		
		
		</div>
	</div>
</center>

