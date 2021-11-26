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
				<li>
					<div class="boxBg1" style="background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');" onmouseover="bgOpacity(1);" onmouseout="bgOpacityReset(1);">
						<div class="boxBtn1">	<!-- 마우스오버시 배경만 어둡게 하기위해 영역지정 -->
							<button id="reserve_btn" class="reserve_btn1" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
							<button id="detail_btn" class="detail_btn1" onclick="javascript:location.href='movieDetailProc?movieListNum=2';">상세정보</button>
						</div>
					</div>
					<div class = "movieInfo">
	                    <h3>영화1</h3>
	                    <span>정보1</span>
               		</div>
				 </li>
				<li>
					<div class="boxBg2" style="background-image:url('${pageContext.request.contextPath}/resources/images/poster/anne.jpg');" onmouseover="bgOpacity(2);" onmouseout="bgOpacityReset(2);">
						<div class="boxBtn2">
							<button id="reserve_btn" class="reserve_btn2" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
							<button id="detail_btn" class="detail_btn2">상세정보</button>
						</div>
					</div>
					<div class = "movieInfo">
	                    <h3>영화2</h3>
	                    <span>정보2</span>
               		</div>
				</li>
				<li>
					<div class="boxBg3" style="background-image:url('${pageContext.request.contextPath}/resources/images/poster/dun.jpg');" onmouseover="bgOpacity(3);" onmouseout="bgOpacityReset(3);">
						<div class="boxBtn3">
							<button id="reserve_btn" class="reserve_btn3" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
							<button id="detail_btn" class="detail_btn3"onclick="javascript:location.href='index?formpath=movieDetail';">상세정보</button>
						</div>
					</div>
					<div class = "movieInfo">
	                    <h3>영화3</h3>
	                    <span>정보3</span>
               		</div>
				</li>
				
				<li>
					<div class="boxBg4" style="background-image:url('${pageContext.request.contextPath}/resources/images/poster/venom.jpg');" onmouseover="bgOpacity(4);" onmouseout="bgOpacityReset(4);">
						<div class="boxBtn4">	
							<button id="reserve_btn" class="reserve_btn4" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
							<button id="detail_btn" class="detail_btn4">상세정보</button>
						</div>
					</div>
					<div class = "movieInfo">
	                    <h3>영화4</h3>
	                    <span>정보4</span>
               		</div>
				</li>
				<li>
					<div class="boxBg5" style="background-image:url('${pageContext.request.contextPath}/resources/images/poster/kang.jpg');" onmouseover="bgOpacity(5);" onmouseout="bgOpacityReset(5);">
						<div class="boxBtn5">
							<button id="reserve_btn" class="reserve_btn5" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
							<button id="detail_btn" class="detail_btn5">상세정보</button>
						</div>
					</div>
					<div class = "movieInfo">
	                    <h3>영화5</h3>
	                    <span>정보5</span>
               		</div>
				</li>
				<li>
					<div class="boxBg6" style="background-image:url('${pageContext.request.contextPath}/resources/images/poster/notime.jpg');" onmouseover="bgOpacity(6);" onmouseout="bgOpacityReset(6);">
						<div class="boxBtn6">
							<button id="reserve_btn" class="reserve_btn6" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
							<button id="detail_btn" class="detail_btn6">상세정보</button>
						</div>
					</div>
					<div class = "movieInfo">
	                    <h3>영화6</h3>
	                    <span>정보6</span>
               		</div>
				 </li>
				<li>
					<div class="boxBg7" style="background-image:url('${pageContext.request.contextPath}/resources/images/poster/voice.jpg');" onmouseover="bgOpacity(7);" onmouseout="bgOpacityReset(7);">
						<div class="boxBtn7">
							<button id="reserve_btn" class="reserve_btn7" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
							<button id="detail_btn" class="detail_btn7">상세정보</button>
						</div>
					</div>
					<div class = "movieInfo">
	                    <h3>영화7</h3>
	                    <span>정보7</span>
               		</div>
				</li>
				<li>
					<div class="boxBg8" style="background-image:url('${pageContext.request.contextPath}/resources/images/poster/kang.jpg');" onmouseover="bgOpacity(8);" onmouseout="bgOpacityReset(8);">
						<div class="boxBtn8">
							<button id="reserve_btn" class="reserve_btn8" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
							<button id="detail_btn" class="detail_btn8">상세정보</button>
						</div>
					</div>
					<div class = "movieInfo">
	                    <h3>영화8</h3>
	                    <span>정보8</span>
               		</div>
				</li>
				<li>
					<div class="boxBg9" style="background-image:url('${pageContext.request.contextPath}/resources/images/poster/billy.jpg');" onmouseover="bgOpacity(9);" onmouseout="bgOpacityReset(9);">
						<div class="boxBtn9">
							<button id="reserve_btn" class="reserve_btn9" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
							<button id="detail_btn" class="detail_btn9">상세정보</button>
						</div>
					</div>
					<div class = "movieInfo">
	                    <h3>영화9</h3>
	                    <span>정보9</span>
               		</div>
				</li>
					<li>
					<div class="boxBg10" style="background-image:url('${pageContext.request.contextPath}/resources/images/poster/last.jpg');" onmouseover="bgOpacity(10);" onmouseout="bgOpacityReset(10);">
						<div class="boxBtn10">
							<button id="reserve_btn" class="reserve_btn10" onclick="javascript:location.href='index?formpath=ticketing';">예매하기</button>
							<button id="detail_btn" class="detail_btn10">상세정보</button>
						</div>
					</div>
					<div class = "movieInfo">
	                    <h3>영화10</h3>
	                    <span>정보10</span>
               		</div>
				</li>
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