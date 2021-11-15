<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myPage.css" />
<script src="<c:url value="/resources/js/myPage.js" />"></script>
<c:url var="root" value="/"/>

<title>마이페이지 - 찜목록</title>

<%@ include file="myPageHeader.jsp" %>

<center>
	<div class="sub_content">
		<div class="myLike">
			<div class="myLike_title">
				<h4>내가 찜한 영화</h4>
				<span><em>몇편인지 나오는 곳</em>편</span>
			</div>
			<ul class="myLike_list">
				<li>
					<div class="myLike_poster">
						<a href="#">
							<img src="${pageContext.request.contextPath}/resources/images/poster/dun.jpg" >
						</a>
					</div>
					<strong class="movie_tit">
						<span class="grade gr_12">12</span>
						제목
					</strong>
					
				
				</li>
				<li>
					<div class="myLike_poster">
						<a href="#">
							<img src="${pageContext.request.contextPath}/resources/images/poster/1984.jpg" >
						</a>
					</div>
					<strong class="movie_tit">
						<span class="grade gr_all">전체</span>
						제목
					</strong>
				</li>
			</ul>
		
		
		</div>
	</div>
</center>