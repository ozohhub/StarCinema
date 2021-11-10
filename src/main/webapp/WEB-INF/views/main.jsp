<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>롯지브이</title>
<link rel="icon" href="https://www.lottecinema.co.kr/NLCHS/favicon.ico?v=1" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/css/materialize.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/js/materialize.min.js"></script>
<script src="<c:url value="/resources/js/nav.js" />"></script>

<script>
$(document).ready(function(){
  $('.slider').slider();
});
</script>

</head>
<body>
	<div id="skip_nav_section" class="skip_nav">
	<ul>
		<li><a href="#nav">주 메뉴 바로가기</a></li>
		<li><a href="#contents">본문 바로가기</a></li>
	</ul>
	</div>
	<div id="header_section" class="header ty3" style="z-index: 2;">
		<%@ include file="common/header.jsp" %>
	</div>
	<div id="sub_section">
		<div class="slider" style="z-index: 1;">
		    <ul class="slides" style="height: 800px;">
		      <li>
		        <img src="${pageContext.request.contextPath}/resources/images/main/slide/ite_slide.jpg"> 
		        <div class="caption center-align">
		        </div>
		      </li>
		      <li>
		         <img src="${pageContext.request.contextPath}/resources/images/main/slide/romance_slide.jpg"> 
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
		</div>
			
	<div id="contents" class="contents_main">
			<div class="movi_current_list">
				
			</div>
			<div class="inner" style="background-color: white;"></div>
		</div>
	
	<div id="banner_side_section" class="banner_side_wrap"></div>
	<div id="footer_section" class="footer" style="margin-top: 500px; background-color: white;">
		<%@ include file="common/footer.jsp" %>
	</div>
</html>