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
	        <h3 class="tit_type1">현재 상영작 <strong class="ty2 eng">TOP 5</strong></h3>
	        <ul class="movie_list">
	            <li class="">
	                <div class="top_info">
	                	<span class="poster_info">
	                		<img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/17885_103_1.jpg" alt="이터널스">
	                		<em class="num_info">1</em>
	                		<span class="ic_grade gr_12"></span>
	                	</span>
	                    <div class="over_box">
	                        <div class="inner" style="margin-top: -33px;">
	                        	<a href="index?formpath=ticketing" class="btn_col3 ty3">예매하기</a>
	                        	<a href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=17885" class="btn_col3 ty3">상세정보</a>
	                        </div>
	                    </div>
	                </div>
	                <div class="btm_info">
	                	<strong class="tit_info">이터널스</strong>
	                	<span class="sub_info1">
	                		<span class="rate_info">예매율 <em>18.8%</em></span>
	                		<span class="star_info">7.2</span></span>
	                </div>
	            </li>
	            <li class="">
	                <div class="top_info">
	                	<span class="poster_info">
	                		<img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202110/17864_103_1.jpg" alt="듄">
	                		<em class="num_info">2</em>
	                		<span class="ic_grade gr_12"></span>
	                	</span>
	                    <div class="over_box">
	                        <div class="inner" style="margin-top: -33px;">
	                        	<a href="index?formpath=ticketing" class="btn_col3 ty3">예매하기</a>
	                        	<a href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=17864" class="btn_col3 ty3">상세정보</a>
	                        </div>
	                    </div>
	                </div>
	                <div class="btm_info">
	                	<strong class="tit_info">듄</strong>
	                	<span class="sub_info1">
	                		<span class="rate_info">예매율 <em>7.0%</em></span>
	                		<span class="star_info">8.7</span>
	                	</span>
	                </div>
	            </li>
	            <li class="">
	                <div class="top_info">
	                	<span class="poster_info">
	                		<img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/17962_103_1.jpg" alt="강릉">
	                		<em class="num_info">3</em>
	                		<span class="ic_grade gr_18"></span>
	                	</span>
	                    <div class="over_box">
	                        <div class="inner" style="margin-top: -33px;">
	                        	<a href="index?formpath=ticketing" class="btn_col3 ty3">예매하기</a>
	                        	<a href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=17962" class="btn_col3 ty3">상세정보</a>
	                        </div>
	                    </div>
	                </div>
	                <div class="btm_info">
	                	<strong class="tit_info">강릉</strong>
	                	<span class="sub_info1">
	                		<span class="rate_info">예매율 <em>5.0%</em></span>
	                		<span class="star_info">7.2</span>
	                	</span>
	                </div>
	            </li>
	            <li class="">
	                <div class="top_info">
	                	<span class="poster_info">
	                		<img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202109/17458_103_1.jpg" alt="베놈 2: 렛 데어 비 카니지">
	                		<em class="num_info">4</em>
	                		<span class="ic_grade gr_15"></span>
	                	</span>
	                    <div class="over_box">
	                        <div class="inner" style="margin-top: -33px;">
	                        	<a href="index?formpath=ticketing" class="btn_col3 ty3">예매하기</a>
	                        	<a href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=17458" class="btn_col3 ty3">상세정보</a>
	                        </div>
	                    </div>
	                </div>
	                <div class="btm_info">
	                	<strong class="tit_info">베놈 2: 렛 데어 비 카니지</strong>
	                	<span class="sub_info1">
	                		<span class="rate_info">예매율 <em>1.2%</em></span>
	                		<span class="star_info">7.7</span>
	                	</span>
	                </div>
	            </li>
	            <li class="">
	                <div class="top_info">
	                	<span class="poster_info">
	                		<img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18010_103_1.jpg" alt="1984 최동원">
	                		<em class="num_info">5</em>
	                		<span class="ic_grade gr_all"></span>
	                	</span>
	                    <div class="over_box">
	                        <div class="inner" style="margin-top: -33px;">
	                        	<a href="index?formpath=ticketing" class="btn_col3 ty3">예매하기</a>
	                        	<a href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=18010" class="btn_col3 ty3">상세정보</a>
	                        </div>
	                    </div>
	                </div>
	                <div class="btm_info">
	                	<strong class="tit_info">1984 최동원</strong>
	                	<span class="sub_info1">
	                		<span class="rate_info">예매율 <em>0.9%</em></span>
	                		<span class="star_info">9.0</span>
	                	</span>
	                </div>
	            </li>
	        </ul>
	        <a href="https://www.lottecinema.co.kr/NLCHS/Movie/List?flag=1" class="btn_txt_more ty2">더보기</a>
	    </div>
	    <div class="movi_pre_list">
	        <h3 class="tit_type1">상영 예정작 <strong class="ty2 eng">TOP 5</strong></h3>
	        <ul class="movie_list">
	            <li>
	                <div class="top_info">
	                	<span class="poster_info">
	                		<img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18030_103_1.jpg" alt="장르만 로맨스">
	                		<span class="ic_grade gr_15"></span>
	                	</span>
	                    <div class="over_box">
	                        <div class="inner" style="margin-top: -33px;">
	                        	<a href="index?formpath=ticketing" class="btn_col3 ty3">예매하기</a>
	                        	<a href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=18030" class="btn_col3 ty3">상세정보</a>
	                        </div>
	                    </div>
	                </div>
	                <div class="btm_info">
	                	<strong class="tit_info">장르만 로맨스</strong>
	                	<span class="sub_info1">
	                		<span class="rate_info">예매율 <em>25.3%</em></span>
	                		<span class="remain_info">D-2</span>
	                	</span>
	                </div>
	            </li>
	            <li>
	                <div class="top_info">
	                	<span class="poster_info">
	                		<img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18028_103_1.jpg" alt="디어 에반 핸슨">
	                		<span class="ic_grade gr_12"></span>
	                	</span>
	                    <div class="over_box">
	                        <div class="inner" style="margin-top: -33px;">
	                        	<a href="index?formpath=ticketing" class="btn_col3 ty3">예매하기</a>
	                        	<a href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=18028" class="btn_col3 ty3">상세정보</a>
	                        </div>
	                    </div>
	                </div>
	                <div class="btm_info">
	                	<strong class="tit_info">디어 에반 핸슨</strong>
	                	<span class="sub_info1">
	                		<span class="rate_info">예매율 <em>21.4%</em></span>
	                		<span class="remain_info">D-2</span>
	                	</span>
	                </div>
	            </li>
	            <li>
	                <div class="top_info">
	                	<span class="poster_info">
	                		<img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18181_103_1.jpg" alt="귀멸의 칼날: 나타구모산 편">
	                		<span class="ic_grade gr_15"></span>
	                	</span>
	                    <div class="over_box">
	                        <div class="inner" style="margin-top: -33px;">
	                        	<a href="index?formpath=ticketing" class="btn_col3 ty3">예매하기</a>
	                        	<a href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=18181" class="btn_col3 ty3">상세정보</a>
	                        </div>
	                    </div>
	                </div>
	                <div class="btm_info">
	                	<strong class="tit_info">귀멸의 칼날: 나타구모산 편</strong>
	                	<span class="sub_info1">
	                		<span class="rate_info">예매율 <em>0.2%</em></span>
	                		<span class="remain_info">D-2</span></span>
	                </div>
	            </li>
	            <li class="">
	                <div class="top_info">
	                	<span class="poster_info">
	                		<img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18094_103_1.jpg" alt="괴짜들의 로맨스">
	                		<span class="ic_grade gr_12"></span>
	                	</span>
	                    <div class="over_box">
	                        <div class="inner" style="margin-top: -33px;">
	                        	<a href="index?formpath=ticketing" class="btn_col3 ty3">예매하기</a>
	                        	<a href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=18094" class="btn_col3 ty3">상세정보</a>
	                        </div>
	                    </div>
	                </div>
	                <div class="btm_info">
	                	<strong class="tit_info">괴짜들의 로맨스</strong>
	                	<span class="sub_info1">
	                		<span class="rate_info">예매율 <em>0%</em></span>
	                		<span class="remain_info">D-2</span>
	                	</span>
	                </div>
	            </li>
	            <li>
	                <div class="top_info">
	                	<span class="poster_info">
	                		<img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18149_103_1.jpg" alt="너에게 가는 길">
	                		<span class="ic_grade gr_12"></span>
	                	</span>
	                    <div class="over_box">
	                        <div class="inner" style="margin-top: -33px;">
	                        	<a href="index?formpath=ticketing" class="btn_col3 ty3">예매하기</a>
	                        	<a href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=18149" class="btn_col3 ty3">상세정보</a>
	                        </div>
	                    </div>
	                </div>
	                <div class="btm_info">
	                	<strong class="tit_info">너에게 가는 길</strong>
	                	<span class="sub_info1">
	                		<span class="rate_info">예매율 <em>0%</em></span>
	                		<span class="remain_info">D-2</span>
	                	</span>
	                </div>
	            </li>
	        </ul>
	        <a href="https://www.lottecinema.co.kr/NLCHS/Movie/List?flag=5" class="btn_txt_more ty2">더보기</a>
	    </div>
	</div>
</body>			