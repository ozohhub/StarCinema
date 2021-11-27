<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>롯지브이</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/css/materialize.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
<script src="${pageContext.request.contextPath}/resources/js/movie.js"></script>


<script>
$(document).ready(function(){
  $('.slider').slider();
});
</script>

</head>
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
	<div id="contents" class="contents_movie_list">
	    <h2 class="hidden">영화목록</h2>
	    <div class="movie_screen_box">
	        <ul class="tab_btn_type1">
	        	<c:choose>
	        		<c:when test="${page == '1' }">
	        			<li class="active" style="border-bottom: 1px solid rgb(0, 0, 0);"><button type="button" onclick="nowMovieInfo(); javascript:location.href='index?formpath=movieInfoList&page=1';"><span class="now_span" style="color: black;">현재 상영작</span></button></li>
	            		<li class="nonActive" ><button type="button" onclick="laterMovieInfo(); javascript:location.href='movieInfoListProc?page=1';"><span class="later_span" style="color: #BDBDBD;">상영 예정작</span></button></li>
	        		</c:when>
	        		<c:otherwise>
	        			<li class="active"><button type="button" onclick="nowMovieInfo(); javascript:location.href='index?formpath=movieInfoList&page=1';"><span class="now_span" style="color: #BDBDBD;">현재 상영작</span></button></li>
	            		<li class="nonActive" style="border-bottom: 1px solid rgb(0, 0, 0);"><button type="button" onclick="laterMovieInfo(); javascript:location.href='movieInfoListProc?page=2';"><span class="later_span" style="color: black;">상영 예정작</span></button></li>
	        		</c:otherwise>
	        	</c:choose>
	            
	        </ul>
	        <c:choose>
	        	<c:when test="${page == '1' }">
	        		<ul class="movie_list type2" id="nowInfo">
	        		<c:forEach var="now" items="${nowMovie }" varStatus="status">
			            <li class="screen_add_box">
			            	<div class="movieBg${status.count }" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(${status.count });" onmouseout="moiveOpacityReset(${status.count });">
								<div class="movieBtn${status.count }">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn${status.count }" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn${status.count }">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">${now.getMovieName() }</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			        </c:forEach>    
			        </ul>
	        	</c:when>
	        	
	        	<c:otherwise>
	        		<ul class="movie_list type2" id="laterInfo">
	        		<c:forEach var="later" items="${laterMovie }" varStatus="status"> 
			            <li class="screen_add_box">
			            	<div class="movieBg${status.count }" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/dun.jpg');"  onmouseover="movieOpacity(${status.count });" onmouseout="moiveOpacityReset(${status.count });">
								<div class="movieBtn${status.count }">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn${status.count }" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn${status.count }">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">${later.getMovieName() }</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			        </c:forEach>    
			        </ul>
	        	</c:otherwise>
	        </c:choose>
	    </div>
	</div>
</body>
</html>