<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/css/materialize.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/movieDetail.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
<script src="${pageContext.request.contextPath}/resources/js/movieDetail.js"></script>

<title>영화 - 상세정보 및 리뷰</title>

<script>
$(document).ready(function(){
  $('.slider').slider();
});
</script>

<!-- 스틸컷 -->
<c:set var="stillArr" value="${movie.moviePoster.split('\\\.')}"/>
  
<c:set var ="still1" value="${stillArr[0]}_1.${stillArr[1]}"/>
<c:set var ="still2" value="${stillArr[0]}_2.${stillArr[1]}"/>
<c:set var ="still3" value="${stillArr[0]}_3.${stillArr[1]}"/>
<c:set var ="still4" value="${stillArr[0]}_4.${stillArr[1]}"/>
<c:set var ="still5" value="${stillArr[0]}_5.${stillArr[1]}"/>


<div id="slide_wrap" style="height: 653px; width: 100%; background-color: black;">
<div class="slider" style="z-index: 1; height: 653px; width: 980px;">
		<ul class="slides" style="height: 653px; width: auto;">
			<li>			
				<img src="${pageContext.request.contextPath}/resources/images/stillcut/${still1}" width="auto;" height="653px;">
				<div class="caption center-align"></div>
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/resources/images/stillcut/${still2}" width="auto;" height="653px;">
				<div class="caption center-align"></div>

			</li>
			<li>
				<img src="${pageContext.request.contextPath}/resources/images/stillcut/${still3}" width="auto;" height="653px;">
				<div class="caption center-align"></div>
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/resources/images/stillcut/${still4}" width="auto;" height="653px;">
				<div class="caption center-align"></div>	
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/resources/images/stillcut/${still5}" width="auto;" height="653px">
				<div class="caption center-align"></div>
			</li>
		</ul>
	</div>
</div>
	<script src="<c:url value="/resources/js/main.js" />"></script>

<center>
	<div class="content" >
		<div class="detail_top">
			<div class="detail_poster">
				<img src="${pageContext.request.contextPath}/resources/images/poster/${movie.moviePoster}">
			</div>
			<div class="detail_title">
				<c:if test="${movie.movieAge == '0'}"><c:set var="grAge" value="grall"/></c:if>
				<c:if test="${movie.movieAge == '12'}"><c:set var="grAge" value="gr12"/></c:if>
				<c:if test="${movie.movieAge == '15'}"><c:set var="grAge" value="gr15"/></c:if>
				<c:if test="${movie.movieAge == '18'}"><c:set var="grAge" value="gr18"/></c:if>
				
				<span class="grade ${grAge}">
					<c:choose>
					<c:when test="${movie.movieAge == '0' }">
						전체
					</c:when>
					<c:when test="${movie.movieAge == '18' }">
						청불
					</c:when>
					<c:otherwise>
						${movie.movieAge }
					</c:otherwise>
					</c:choose>
				</span>
				<strong>${movie.movieName }</strong>
			</div>
			<ul class="detail_info1">
				<li class="sub_info1">
					<em>관람객 평점</em>
					<strong class="score">
						<em>평점</em>
						<strong>${grade.grade}</strong>
					</strong>
				</li>
				<li class="sub_info2">
					<em>예매율 n위</em>	
					<strong class="str">00.0%</strong>
				</li>
			</ul>
			<ul class="detail_info2">
				<li class="sub_info1">
					<em class="tit">장르</em>
					<strong>
						<em>${movie.movieGenre }, / ${movie.movieCountry}</em>
						<em class="line">|</em>
						<em>${movie.movieOpen }</em>
						<em class="line">|</em>
						<em>${movie.movieTime } 분</em>					
					</strong>
				</li>
				<li class="sub_info2">
					<em class="tit">감독</em>
					<strong>
						<em>${movie.movieDirector }</em>
					</strong>
				</li>
				<li class="sub_info3">
					<em class="tit">출연</em>
					<strong>
						<em>${movie.movieActors }</em>
					</strong>
				</li>
			</ul>
			
			<div class="btn_area">
				<ul>
					<li>
						<button class="movieLikeBtn">
							<strong>좋아요</strong>
							<em>${grade.likeRate}</em>
						</button>
					</li>
					<li>
						<a class="reserve_a" href='index?formpath=ticketing'>예매하기</a>
					</li>				
				</ul>
			</div>
				
			<div class="tab_con">
				<div class="tab_info1">
					<div class="left_con">
						<strong class="tit_info">시놉시스</strong>
						<textarea readonly="readonly" class="story">							
							${movie.movieDetail }
						</textarea>
					</div>
										
					<div class="right_con">
						<strong class="tit_info">관람 선호도</strong>
						<div class="group_graph">
						 	<div class="bx_graph01">
						 		<div class="bg"></div>
						 		<dl>
						 			<dt class="mal">남성</dt>
									<dd class="mal">
										<span class="bar" style="height: 47.9%;"></span>
										<strong>
											47.9
											<span>%</span>
										</strong>
									</dd>
									<dt class="fe">여성</dt>
									<dd class="fe">
										<span class="bar" style="height: 52.1%;"></span>
										<strong>
											52.1
											<span>%</span>
										</strong>
									</dd>
						 		</dl>
						 	</div>
						 	
						 	<div class="bx_graph02">
						 		<dl>
						 			<dt class="gen10">10대</dt>
						 			<dd class="gen10" style="height: 5.1%;">
						 				<span class="bar"></span>
						 				<strong>
						 					5.1
						 					<span>%</span>
						 				</strong>
						 			</dd>
						 			
						 			<dt class="gen20">20대</dt>
						 			<dd class="gen20" style="height: 28.9%;">
						 				<span class="bar"></span>
						 				<strong>
						 					28.9
						 					<span>%</span>
						 				</strong>
						 			</dd>
						 			
						 			<dt class="gen30">30대</dt>
						 			<dd class="gen30" style="height: 32.9%;">
						 				<span class="bar"></span>
						 				<strong>
						 					32.9
						 					<span>%</span>
						 				</strong>
						 			</dd>
						 			
						 			<dt class="gen40">40대</dt>
						 			<dd class="gen40" style="height: 33.1%;">
						 				<span class="bar"></span>
						 				<strong>
						 					33.1
						 					<span>%</span>
						 				</strong>
						 			</dd>
						 		</dl>
						 	</div>						 	
						</div>					
					</div>
				</div>
			</div>		
		</div>
	
	<div class="review_box">
		<div class="score_box">
			<span class="score_ty">
				<em class="score_tit">총 평점</em>
				<strong>0</strong>
				<em class="slash">/</em>
				<span>10</span>
			</span>
		</div>
	
		<div class="star_score_box">
			<strong class="score_info">
				<em>0</em>점
			</strong>
			<div class="star_rate">
				<button type="button" class="star on"><em>별1점</em></button>
				<button type="button" class="star on"><em>별2점</em></button>
				<button type="button" class="star on"><em>별3점</em></button>
				<button type="button" class="star on"><em>별4점</em></button>
				<button type="button" class="star on"><em>별5점</em></button>
				<button type="button" class="star on"><em>별6점</em></button>
				<button type="button" class="star on"><em>별7점</em></button>
				<button type="button" class="star on"><em>별8점</em></button>
				<button type="button" class="star on"><em>별9점</em></button>
				<button type="button" class="star on"><em>별10점</em></button>
			</div>
			
		</div>
		<div class="reviewBox">
			<textarea class="review_txt" placeholder="평점 및 영화 관람평을 작성해주세요. 주제와 무관한 리뷰 또는 스포일러는 표시제한 또는 삭제될 수 있습니다.">
			</textarea>
		</div>
		<button type="button" class="btn_submit">관람평 작성</button>
	</div>
	
	<div class="review_list">
		<div class="review_top">
			<div class="total_info">총<em>${grade.size()}</em>건</div>
		</div>
		
	<ul class="reivew_con_list">
		<!-- 여기반복 -->
		<li>
			<span class="img_info"><img src="${pageContext.request.contextPath}/resources/images/movie/rev_3.png"></span>
			<div class="top_info">
				<span class="name_info">이름</span>
				<span class="score_ty2">
					<em>평점</em>
					<strong>0</strong>
				</span>
			</div>
			<div class="review_info">리뷰나오는곳</div>
			<div class="btm_info">
				<span class="date_info">작성년.월.일</span>
			</div>
		</li>
	
	
		<li>
			<span class="img_info"><img src="${pageContext.request.contextPath}/resources/images/movie/rev_1.png"></span>
			<div class="top_info">
				<span class="name_info">이름</span>
				<span class="score_ty2">
					<em>평점</em>
					<strong>10</strong>
				</span>
			</div>
			<div class="review_info">리뷰나오는곳</div>
			<div class="btm_info">
				<span class="date_info">작성년.월.일</span>
			</div>
		</li>

	</ul>
	</div>
	
	
	<div class="page_ctrl">
		1
	</div>
</div>
</center>	

		

		

	
