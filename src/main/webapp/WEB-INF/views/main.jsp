<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>롯지브이</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/css/materialize.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/js/materialize.min.js"></script>


<script>
$(document).ready(function(){
  $('.slider').slider();
});
</script>

</head>
<body style="background-color: black;">
	<div id="skip_nav_section" class="skip_nav">
	<ul>
		<li><a href="#nav">주 메뉴 바로가기</a></li>
		<li><a href="#contents">본문 바로가기</a></li>
	</ul>
	</div>

	<!-- 자동 슬라이더 -->

		<div class="slider" style="z-index: 1;">
		    <ul class="slides" style="height: 800px;">
		      <li>
		        <img src="${pageContext.request.contextPath}/resources/images/main/slide/ite_slide.jpg"> 
		        <div class="caption center-align">
		        </div>
		      </li>
		      <li>
		         <img src="${pageContext.request.contextPath}/resources/images/main/slide/kang_slide.jpg"> 
		        <div class="caption left-align">
		        </div>
		      </li>
		      <li>
		        <img src="${pageContext.request.contextPath}/resources/images/main/slide/mat_slide.jpg"> 
		        <div class="caption right-align">
		        </div>
		      </li>
		      <li>
		         <img src="${pageContext.request.contextPath}/resources/images/main/slide/nkan_slide.jpg"> 
		        <div class="caption center-align"> 
		        </div>
		      </li>
		    </ul>
		  </div>
			
	<!-- 멀티플 슬라이드 -->
	<div class="multiple_whole">
		<div class="multiple_wrap">
			<ul class="multiple_slider">
			<c:forEach var="movieList" items="${movieListInfo }" varStatus="status">
				<li>
					<div class="boxBg${status.count }" style="background-image:url('${pageContext.request.contextPath}/resources/images/poster/${movieList.getMoviePoster() }');" onmouseover="bgOpacity(${status.count });" onmouseout="bgOpacityReset(${status.count });">
						<div class="boxBtn${status.count }">	<!-- 마우스오버시 배경만 어둡게 하기위해 영역지정 -->
							<button id="reserve_btn" class="reserve_btn${status.count }" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
							<button id="detail_btn" class="detail_btn${status.count }" onclick="javascript:location.href='movieDetailProc?movieListNum=${movieList.getMovieListNum() }';">상세정보</button>
						</div>
					</div>
					<div class="movieInfo" style="text-align: center;">
	                    <h3 style="font-size: 30px;">${movieList.getMovieName() }</h3>
	                    <c:forEach var="rate" items="${map }">
							<c:if test="${rate.getKey() == movieList.getMovieListNum() }">
								<span style="font-size: 15px;">예매율 ${rate.getValue() } %</span>
							</c:if>
						</c:forEach>
               		</div>
				</li>
			</c:forEach>
			</ul>
		</div>
		
		<button type="button" class="prev"><img src="${pageContext.request.contextPath}/resources/images/main/icon/slide_left.png"></button>
		<button type="button" class="next"><img src="${pageContext.request.contextPath}/resources/images/main/icon/slide_right.png"></button>
	</div>
	
	<!-- 로드 후 js작동! -->	
	<script src="<c:url value="/resources/js/main.js" />"></script>
	
	<!-- 차트 넣을 영역 -->
	<div id="banner_section" class="banner_wrap">
		<div class="banner_01">
			<img src="${pageContext.request.contextPath}/resources/images/icon/like.png" style="width: 200px; height: 120px;"/>
			<img src="${pageContext.request.contextPath}/resources/images/icon/grade.png" style="width: 200px; height: 120px;"/>
			<img src="${pageContext.request.contextPath}/resources/images/icon/look.png" style="width: 200px; height: 120px;"/>
		</div>
	</div>

</html>