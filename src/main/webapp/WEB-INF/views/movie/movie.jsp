<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>롯지브이</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/css/materialize.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
<script src="${pageContext.request.contextPath}/resources/js/movie.js"></script>


<script>
$(document).ready(function(){
  $('.slider').slider();
});
</script>

<body>
	<div class="slider" style="z-index: 1;">
		<ul class="slides" style="height: 450px;">
			<li>
				<img src="${pageContext.request.contextPath}/resources/images/main/slide/kuck_slide.jpg">
				<div class="caption center-align"></div>
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/resources/images/main/slide/kang_slide.jpg">
				<div class="caption left-align"></div>
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/resources/images/main/slide/mat_slide.jpg">
				<div class="caption right-align"></div>
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/resources/images/main/slide/nkan_slide.jpg">
				<div class="caption center-align"></div>
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/resources/images/main/slide/shop_slide.jpg">
				<div class="caption center-align"></div>
			</li>
		</ul>
	</div>
	<div id="contents" class="contents_movie_home">
	    <h2 class="hidden">영화</h2>
	    <div class="movi_current_list">
	        <h3 class="tit_type1">영화 목록</h3>
	        <ul class="movie_list">
	        <c:forEach var="movie" items="${movieList }" varStatus="status">
	        	<li class="screen_add_box">
	            	<div class="movieBg${status.count }" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/${movie.getMoviePoster() }.jpg');"  onmouseover="movieOpacity(${status.count });" onmouseout="moiveOpacityReset(${status.count });">
						<div class="movieBtn${status.count }">
							<button id="movieReserve_btn" style="display: none;" class="reserve_btn${status.count }" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
							<button id="movieDetail_btn" style="display: none;" class="detail_btn${status.count }">상세정보</button>
						</div>
					</div>
	                <div class="btm_info">
	                	<strong class="tit_info">${movie.getMovieName() }</strong>
	                	<span class="sub_info1">
	                		<span class="rate_info">예매율 <em>18.4%</em></span>
	                		<span class="star_info">7.2</span>
	                	</span>
	                </div>
	            </li>
	            </c:forEach>
	        </ul>
	        
	        <a href="movieInfoListProc" class="btn_txt_more ty2">더보기</a>
	       
	    </div>
	</div>
</body>			