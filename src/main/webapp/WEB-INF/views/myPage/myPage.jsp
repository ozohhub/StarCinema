<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myPage.css" />
<script src="<c:url value="/resources/js/myPage.js" />"></script>
<c:url var="root" value="/"/>

<title>마이페이지 - 예매내역</title>

<%@ include file="myPageHeader.jsp" %>

<!-- 한달내에 예매내역만 나오는 페이지 -->
<center>
	<div class="sub_content">
		<div class="myTicketing">
			<div class="myTicketing_title">
				<h4>내가 예매한 내역 - </h4>
				<span><font style="color : red;">한달</font> 내 예매한 내역만 출력됩니다.</span>
			</div>
			
			<ul class="myTicketing_list">
				<li>
					<div class="myTicketing_poster">
						<a href="#">
							<img src="${pageContext.request.contextPath}/resources/images/poster/dun.jpg" >
						</a>
					</div>
					<strong class="movie_tit">
						<span class="grade gr_12">12</span>
						제목
					</strong>
					<div class="detail_reserve1">
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
					<div class="detail_reserve2">
						<span class="detail_info">
							<strong>관람날짜</strong>
						</span>
						<span class="detail_info">
							<strong>관람시간</strong>
						</span>
					</div>
					<div class="detail_reserve3">
						<span class="detail_info">
							<strong>관람 인원 </strong>
						</span>
						<span class="detail_info">
							<strong>n명</strong>
						</span>
					</div>
					<dl class="cancel_box">
						<dt>취소 관련 주의사항</dt>
						<dd>예매취소는 신용카드로 결제한 내역만<br>가능합니다.</dd>
					</dl>
					
					<div class="cancel_btn_area">
						<a href="#">
							<span>취소하기</span>
						</a>
					</div>
				</li>
				
				<li>
					<div class="myTicketing_poster">
						<a href="#">
							<img src="${pageContext.request.contextPath}/resources/images/poster/firstcow.jpg" >
						</a>
					</div>
					<strong class="movie_tit">
						<span class="grade gr_12">12</span>
						제목
					</strong>
					<div class="detail_reserve1">
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
					<div class="detail_reserve2">
						<span class="detail_info">
							<strong>관람날짜</strong>
						</span>
						<span class="detail_info">
							<strong>관람시간</strong>
						</span>
					</div>
					<div class="detail_reserve3">
						<span class="detail_info">
							<strong>관람 인원 </strong>
						</span>
						<span class="detail_info">
							<strong>n명</strong>
						</span>
					</div>
					<dl class="cancel_box">
						<dt>취소 관련 주의사항</dt>
						<dd>예매취소는 신용카드로 결제한 내역만<br>가능합니다.</dd>
					</dl>
					
					<div class="cancel_btn_area">
						<a href="#">
							<span>취소하기</span>
						</a>
					</div>
				</li>
			</ul>
			
			<div class="last_list"></div>
		
		
		</div>
	</div>
</center>


