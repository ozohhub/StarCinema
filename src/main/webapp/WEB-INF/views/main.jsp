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
					<div class="boxBg1" style="width:245px; height : 350px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');">
						<label>안녕</label>
					</div>
										
					<div class = "movieInfo">
	                    <h3>영화1</h3>
	                    <span>정보1</span>
               		</div>
				 </li>
				<li>
					<img src="${pageContext.request.contextPath}/resources/images/poster/adams.jpg" id = "bookImg2" style="width : auto; height : 350px;">
					<div class = "movieInfo">
	                    <h3>영화2</h3>
	                    <span>정보2</span>
               		</div>
				</li>
				<li>
					<img src="${pageContext.request.contextPath}/resources/images/poster/dun.jpg" id = "bookImg3" style="width : auto; height : 350px;"> 
					<div class = "movieInfo">
	                    <h3>영화3</h3>
	                    <span>정보3</span>
               		</div>
				</li>
				<li>
					<img src="${pageContext.request.contextPath}/resources/images/poster/venom.jpg" id = "bookImg4" style="width : auto; height : 350px;">
					<div class = "movieInfo">
	                    <h3>영화4</h3>
	                    <span>정보4</span>
               		</div>
				</li>
				<li>
					<img src="${pageContext.request.contextPath}/resources/images/poster/anne.jpg" style="width : auto; height : 350px;">
					<div class = "movieInfo">
	                    <h3>영화5</h3>
	                    <span>정보5</span>
               		</div>
				</li>
				<li>
					<img src="${pageContext.request.contextPath}/resources/images/poster/notime.jpg" style="width : auto; height : 350px;">
					<div class = "movieInfo">
	                    <h3>영화6</h3>
	                    <span>정보6</span>
               		</div>
				 </li>
				<li>
					<img src="${pageContext.request.contextPath}/resources/images/poster/voice.jpg" style="width : auto; height : 350px;">
					<div class = "movieInfo">
	                    <h3>영화7</h3>
	                    <span>정보7</span>
               		</div>
				</li>
				<li>
					<img src="${pageContext.request.contextPath}/resources/images/poster/kang.jpg" style="width : auto; height : 350px;"> 
					<div class = "movieInfo">
	                    <h3>영화8</h3>
	                    <span>정보8</span>
               		</div>
				</li>
				<li>
					<img src="${pageContext.request.contextPath}/resources/images/poster/billy.jpg" style="width : auto; height : 350px;">
					<div class = "movieInfo">
	                    <h3>영화9</h3>
	                    <span>정보9</span>
               		</div>
				</li>
					<li>
					<img src="${pageContext.request.contextPath}/resources/images/poster/last.jpg" style="width : auto; height : 350px;">
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