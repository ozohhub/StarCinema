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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/js/materialize.min.js"></script>

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
	            		<li class="nonActive" ><button type="button" onclick="laterMovieInfo(); javascript:location.href='index?formpath=movieInfoList&page=2';"><span class="later_span" style="color: #BDBDBD;">상영 예정작</span></button></li>
	        		</c:when>
	        		<c:otherwise>
	        			<li class="active"><button type="button" onclick="nowMovieInfo(); javascript:location.href='index?formpath=movieInfoList&page=1';"><span class="now_span" style="color: #BDBDBD;">현재 상영작</span></button></li>
	            		<li class="nonActive" style="border-bottom: 1px solid rgb(0, 0, 0);"><button type="button" onclick="laterMovieInfo(); javascript:location.href='index?formpath=movieInfoList&page=2';"><span class="later_span" style="color: black;">상영 예정작</span></button></li>
	        		</c:otherwise>
	        	</c:choose>
	            
	        </ul>
	        <ul class="list_lnk" id="movietype1">
	            <li class="on"><a href="javascript:void(0)" role="button">예매순</a></li>
	            <li><a href="javascript:void(0)" role="button">평점순</a></li>
	            <li><a href="javascript:void(0)" role="button">관람평 많은순</a></li>
	            <li><a href="javascript:void(0)" role="button">보고싶어요순</a></li>
	        </ul>
	        <ul class="list_lnk" id="movietype2" style="display: none;">
	            <li class="on"><a href="javascript:void(0)" role="button">개봉일순</a></li>
	            <li><a href="javascript:void(0)" role="button">예매순</a></li>
	            <li><a href="javascript:void(0)" role="button">보고싶어요순</a></li>
	        </ul>
	        <c:choose>
	        	<c:when test="${page == '1' }">
	        		<ul class="movie_list type2" id="nowInfo">
			            <li class="screen_add_box">
			            	<div class="movieBg1" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(1);" onmouseout="moiveOpacityReset(1);">
								<div class="movieBtn1">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn1" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn1">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			            <li class="screen_add_box">
			            	<div class="movieBg2" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(2);" onmouseout="moiveOpacityReset(2);">
								<div class="movieBtn2">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn2" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn2">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			            <li class="screen_add_box">
			            	<div class="movieBg3" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(3);" onmouseout="moiveOpacityReset(3);">
								<div class="movieBtn3">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn3" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn3">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			            <li class="screen_add_box">
			            	<div class="movieBg4" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(4);" onmouseout="moiveOpacityReset(4);">
								<div class="movieBtn4">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn4" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn4">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			            <li class="screen_add_box">
			            	<div class="movieBg5" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(5);" onmouseout="moiveOpacityReset(5);">
								<div class="movieBtn5">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn5" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn5">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			            <li class="screen_add_box">
			            	<div class="movieBg6" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(6);" onmouseout="moiveOpacityReset(6);">
								<div class="movieBtn6">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn6" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn6">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			            <li class="screen_add_box">
			            	<div class="movieBg7" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(7);" onmouseout="moiveOpacityReset(7);">
								<div class="movieBtn7">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn7" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn7">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			            <li class="screen_add_box">
			            	<div class="movieBg8" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(8);" onmouseout="moiveOpacityReset(8);">
								<div class="movieBtn8">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn8" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn8">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			            <li class="screen_add_box">
			            	<div class="movieBg9" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(9);" onmouseout="moiveOpacityReset(9);">
								<div class="movieBtn9">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn9" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn9">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			            <li class="screen_add_box">
			            	<div class="movieBg10" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(10);" onmouseout="moiveOpacityReset(10);">
								<div class="movieBtn10">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn10" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn10">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			        </ul>
	        	</c:when>
	        	<c:otherwise>
	        		<ul class="movie_list type2" id="laterInfo">
			            <li class="screen_add_box">
			            	<div class="movieBg1" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/dun.jpg');"  onmouseover="movieOpacity(1);" onmouseout="moiveOpacityReset(1);">
								<div class="movieBtn1">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn1" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn1">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			            <li class="screen_add_box">
			            	<div class="movieBg2" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(2);" onmouseout="moiveOpacityReset(2);">
								<div class="movieBtn2">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn2" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn2">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			            <li class="screen_add_box">
			            	<div class="movieBg3" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(3);" onmouseout="moiveOpacityReset(3);">
								<div class="movieBtn3">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn3" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn3">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			            <li class="screen_add_box">
			            	<div class="movieBg4" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(4);" onmouseout="moiveOpacityReset(4);">
								<div class="movieBtn4">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn4" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn4">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			            <li class="screen_add_box">
			            	<div class="movieBg5" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(5);" onmouseout="moiveOpacityReset(5);">
								<div class="movieBtn5">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn5" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn5">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			            <li class="screen_add_box">
			            	<div class="movieBg6" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(6);" onmouseout="moiveOpacityReset(6);">
								<div class="movieBtn6">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn6" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn6">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			            <li class="screen_add_box">
			            	<div class="movieBg7" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(7);" onmouseout="moiveOpacityReset(7);">
								<div class="movieBtn7">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn7" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn7">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			            <li class="screen_add_box">
			            	<div class="movieBg8" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(8);" onmouseout="moiveOpacityReset(8);">
								<div class="movieBtn8">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn8" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn8">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			            <li class="screen_add_box">
			            	<div class="movieBg9" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(9);" onmouseout="moiveOpacityReset(9);">
								<div class="movieBtn9">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn9" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn9">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			            <li class="screen_add_box">
			            	<div class="movieBg10" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');"  onmouseover="movieOpacity(10);" onmouseout="moiveOpacityReset(10);">
								<div class="movieBtn10">
									<button id="movieReserve_btn" style="display: none;" class="reserve_btn10" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
									<button id="movieDetail_btn" style="display: none;" class="detail_btn10">상세정보</button>
								</div>
							</div>
			                <div class="btm_info">
			                	<strong class="tit_info">이터널스</strong>
			                	<span class="sub_info1">
			                		<span class="rate_info">예매율 <em>18.4%</em></span>
			                		<span class="star_info">7.2</span>
			                	</span>
			                </div>
			            </li>
			        </ul>
	        	</c:otherwise>
	        </c:choose>
	    </div>
	</div>
</body>
</html>