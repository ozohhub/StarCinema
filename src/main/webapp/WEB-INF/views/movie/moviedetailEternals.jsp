<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<body>
	<div class="slider" style="z-index: 1;">
	    <ul class="slides" style="height: 450px;">
	      <li>
	        <img src="${pageContext.request.contextPath}/resources/images/main/slide/kuck_slide.jpg"> 
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
	       <li>
	         <img src="${pageContext.request.contextPath}/resources/images/main/slide/shop_slide.jpg"> 
	        <div class="caption center-align"> 
	        </div>
	      </li>
	    </ul>
	  </div>
