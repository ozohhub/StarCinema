<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>롯지브이</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/css/materialize.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
<script src="${pageContext.request.contextPath}/resources/js/movieManagement.js"></script>
</head>
<body>
	<div id="contents" class="contents_customer">
		<div class="title_top">
			<h2 class="tit">상영시간표</h2>
		</div>
			<ul class="tab_wrap outer">
				<li class="active">
					<div class="tab_con ty2">
					<h2 class="hidden">상영시간표 추가</h2>
	                <div class="movie_input_box" style="margin-top: 80px;">
	                	<ul class="tab_btn_type1">
	                        <li class="active">
	                            <button type="button" onclick="javascript:location.href='index?formpath=movieManagement';">
	                                <span class="now_span" style="color: black;">상영시간표 추가</span>
	                            </button>
	                        </li>
	                    </ul>
	                    <div class="subject __underline" style="border-bottom: 1px solid #000;"></div><br>
	                    	<div class= "input_field" style ="width: 60%">
								<label style="padding-right: 50px">지역명</label>
								<input type="text" placeholder="지역을 입력하세요." id="input-movie-name"><br>
								<label style="padding-right: 50px">영화관 이름</label>
								<input type="text" placeholder="영화관 이름을 입력하세요." id="input-movie-genre"><br>
								<label style="padding-right: 50px">상영 날짜</label>
								<input type="text" placeholder="상영 날짜를 입력하세요." id="input-movie-name"><br>
								<label style="padding-right: 50px">상영 시간</label>
								<input type="text" placeholder="상영 시간을 입력하세요." id="input-movie-name"><br>
						</div>
						<input type="button" value="상영시간표 등록" onclick="InputCinemaInfo();" style=" width:200px; height:100px; background-color: gray; text-align : center; border-color: transparent; color: white; font-weight: bold; cursor:  pointer;">
	            	</div>
						
					<div class="brd_paginate">
						${page }
					</div>
				</div>
			</li>
		</ul>
	</div>
</body>
</html>