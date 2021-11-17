<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myPage.css" />
<script src="<c:url value="/resources/js/myPage.js" />"></script>
<c:url var="root" value="/"/>

<title>마이페이지 - 관람내역</title>

<%@ include file="myPageHeader.jsp" %>

<center>
	<div class="sub_content">
		<div class="myMovieHistory">
			<div class="myMovieHistory_title">
				<h4>내 관람 내역</h4>
				<span><em>몇편인지 나오는 곳</em>편</span>
			</div>
			<ul class="myMovieHistory_list">
				<li>
					<div class="myMovieHistory_poster">
						<a href="#">
							<img src="${pageContext.request.contextPath}/resources/images/poster/dun.jpg" >
						</a>
					</div>
					<strong class="movie_tit">
						<span class="grade gr_12">12</span>
						제목
					</strong>
					<div class="detail_history1">
						<span class="detail_info">
							<strong>영화관명</strong>
						</span>
						<span class="detail_info">
							<strong>관</strong>
						</span>
						<span class="detail_info">
							<strong>좌석번호</strong>
						</span>
					</div>
					<div class="detail_history2">
						<span class="detail_info">
							<strong>관람날짜</strong>
						</span>
						<span class="detail_info">
							<strong>관람시간</strong>
						</span>
					</div>
					<div class="detail_history3">
						<span class="detail_info">
							<strong>관람 인원 </strong>
						</span>
						<span class="detail_info">
							<strong>n명</strong>
						</span>
					</div>
					<dl class="review_box">
						<dt>My Review</dt>
						<dd>내가 작성한 리뷰가 나오는 곳</dd>
					</dl>
					<div class="reviewWrite_btn_area">
						<a href="#">
							<span>리뷰쓰기</span>
						</a>
					</div>
				</li>
				
				<li>
					<div class="myMovieHistory_poster">
						<a href="#">
							<img src="${pageContext.request.contextPath}/resources/images/poster/romance.jpg" >
						</a>
					</div>
					<strong class="movie_tit">
						<span class="grade gr_15">15</span>
						제목
					</strong>
					<div class="detail_history1">
						<span class="detail_info">
							<strong>영화관명</strong>
						</span>
						<span class="detail_info">
							<strong>관</strong>
						</span>
						<span class="detail_info">
							<strong>좌석번호</strong>
						</span>
					</div>
					<div class="detail_history2">
						<span class="detail_info">
							<strong>관람날짜</strong>
						</span>
						<span class="detail_info">
							<strong>관람시간</strong>
						</span>
					</div>
					<div class="detail_history3">
						<span class="detail_info">
							<strong>관람 인원 </strong>
						</span>
						<span class="detail_info">
							<strong>n명</strong>
						</span>
					</div>
					<dl class="review_box">
						<dt>My Review</dt>
						<dd>내가 작성한 리뷰가 나오는 곳</dd>
					</dl>
					<div class="reviewWrite_btn_area">
						<a href="#">
							<span>리뷰쓰기</span>
						</a>
					</div>
				</li>








			
			</ul>
		
		<div class="last_list"></div>
		
		</div>
	</div>
</center>