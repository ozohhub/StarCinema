<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myPage.css" />
<script src="<c:url value="/resources/js/myPage.js" />"></script>
<c:url var="root" value="/"/>

<title>마이페이지 - 찜목록</title>

<%@ include file="myPageHeader.jsp" %>
<!-- 반복문 사용 / 반복문 사용시 - 등급 맞게 span class명 지정 -->
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
					<div class="detail">
						<span class="reserve_per">
							<em>예매율</em>
							<strong>0.00%</strong>
						</span>
						<span class="score">
							<em>평점</em>
							<strong>0.0</strong>
						</span>
						<button type="button" class="heart_btn"></button>
					</div>
					<dl class="review_box">
						<dt>Recent Review</dt>
						<dd>리뷰 내용이 나오는곳</dd>
					</dl>
					<div class="reserve_btn_area">
						<a href="#">
							<span>예매하기</span>
						</a>
					</div>
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
					<div class="detail">
						<span class="reserve_per">
							<em>예매율</em>
							<strong>0.00%</strong>
						</span>
						<span class="score">
							<em>평점</em>
							<strong>0.0</strong>
						</span>
						<button type="button" class="heart_btn"></button>
					</div>
					<dl class="review_box">
						<dt>Recent Review</dt>
						<dd>리뷰 내용이 나오는곳</dd>
					</dl>
					<div class="reserve_btn_area">
						<a href="#">
							<span>예매하기</span>
						</a>
					</div>
				</li>
				
				<li>
					<div class="myLike_poster">
						<a href="#">
							<img src="${pageContext.request.contextPath}/resources/images/poster/loan.jpg" >
						</a>
					</div>
					<strong class="movie_tit">
						<span class="grade gr_15">15</span>
						제목
					</strong>
					<div class="detail">
						<span class="reserve_per">
							<em>예매율</em>
							<strong>0.00%</strong>
						</span>
						<span class="score">
							<em>평점</em>
							<strong>0.0</strong>
						</span>
						<button type="button" class="heart_btn"></button>
					</div>		
					<dl class="review_box">
						<dt>Recent Review</dt>
						<dd>리뷰 내용이 나오는곳</dd>
					</dl>	
					<div class="reserve_btn_area">
						<a href="#">
							<span>예매하기</span>
						</a>
					</div>
					
				</li>
				
				<li>
					<div class="myLike_poster">
						<a href="#">
							<img src="${pageContext.request.contextPath}/resources/images/poster/venom.jpg" >
						</a>
					</div>
					<strong class="movie_tit">
						<span class="grade gr_18">청불</span>
						제목
					</strong>
					<div class="detail">
						<span class="reserve_per">
							<em>예매율</em>
							<strong>0.00%</strong>
						</span>
						<span class="score">
							<em>평점</em>
							<strong>0.0</strong>
						</span>
						<button type="button" class="heart_btn"></button>
					</div>
					<dl class="review_box">
						<dt>Recent Review</dt>
						<dd>리뷰 내용이 나오는곳</dd>
					</dl>
					<div class="reserve_btn_area">
						<a href="#">
							<span>예매하기</span>
						</a>
					</div>
				</li>
			
			
			</ul>
		
		<div class="last_list">
		
		</div>
		
		</div>
	</div>
</center>