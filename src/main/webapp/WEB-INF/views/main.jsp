<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>롯지브이</title>
<link rel="icon" href="https://www.lottecinema.co.kr/NLCHS/favicon.ico?v=1" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value="/resources/js/nav.js" />"></script>

</head>
<body>
	<div id="skip_nav_section" class="skip_nav">
	<ul>
		<li><a href="#nav">주 메뉴 바로가기</a></li>
		<li><a href="#contents">본문 바로가기</a></li>
	</ul>
	</div>
	<div id="header_section" class="header ty3" style="">
		<h1 class="logo">
			<a href="main">LOTTE CINEMA</a>
		</h1>
		<div class="gnb">
			<ul class="g_menu2">
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Mypage/MemberVipzone">멤버십</a></li>
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Customer">고객센터</a></li>
				<li><a href="#none">로그인</a></li>
			</ul>
			<ul class="g_menu3">
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Mypage" class="btn_my">마이</a></li>
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Ticketing" class="btn_reserve">바로 예매</a></li>
				<li><button class="btn_menu_all">전체 메뉴 레이어 열기</button><div id="allmenu"></div></li>
			</ul>
		</div>
		<div id="nav">
			<ul>
				<li class="">
					<a href="https://www.lottecinema.co.kr/NLCHS/Ticketing">예매</a>
					<div style="display: none;">
						<ul style="opacity: 0;">
							<li><a href="https://www.lottecinema.co.kr/NLCHS/Ticketing" title="예매하기">예매하기</a></li>
							<li><a href="https://www.lottecinema.co.kr/NLCHS/Ticketing/Schedule" title="상영시간표">상영시간표</a></li>
							<li><a href="https://www.lottecinema.co.kr/NLCHS/Ticketing/DiscountGuide" title="할인안내">할인안내</a></li>
						</ul>
					</div>
				</li>
				<li class="">
					<a href="https://www.lottecinema.co.kr/NLCHS/Movie">영화</a>
					<div style="display: none;">
						<ul style="opacity: 0;">
							<li><a href="https://www.lottecinema.co.kr/NLCHS/Movie" title="홈">홈</a></li>
							<li class=""><a href="https://www.lottecinema.co.kr/NLCHS/Movie/List?flag=1" title="현재상영작">현재상영작</a></li>
							<li><a href="https://www.lottecinema.co.kr/NLCHS/Movie/List?flag=5" title="상영예정작">상영예정작</a></li>
							<li><a href="https://www.lottecinema.co.kr/NLCHS/Movie/Arte" title="아르떼">아르떼</a></li>
							<li><a href="https://www.lottecinema.co.kr/NLCHS/Movie/NTOK" title="국립극장">국립극장</a></li>
						</ul>
					</div>
				</li>
				<li class="">
					<a href="#">영화관</a>
					<div style="display: none;">
						<ul style="opacity: 0;">
							<li><a href="#" title="스페셜관">스페셜관</a>
								<div style="display: none;">
									<ul style="opacity: 0;">
										<li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialIndex">홈</a></li>
										<li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=300">샤롯데</a></li>
										<li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=941">수퍼플렉스 G</a></li>
									</ul>
								</div>
							</li>
							<li><a href="#" title="서울">서울</a>
								<div style="display: none;">
									<ul style="opacity: 0;">
										<li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1013">가산디지털</a></li>
										<li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=9094">가양</a></li>
									</ul>
								</div>
							</li>
							<li><a href="#" title="경기/인천">경기/인천</a>
								<div style="display: none;"><ul style="opacity: 0;">
									<li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3030">광교아울렛</a></li>
									<li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3027">광명(광명사거리)</a></li>
								</ul>
							</div>
						</li>
						<li><a href="#" title="충청/대전">충청/대전</a>
							<div style="display: none;">
								<ul style="opacity: 0;">
									<li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=9085">당진</a></li>
									<li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=4002">대전(백화점)</a></li>
								</ul>
							</div>
						</li>
						<li><a href="#" title="전라/광주">전라/광주</a>
							<div style="display: none;">
								<ul style="opacity: 0;">
									<li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=6001">광주(백화점)</a></li>
									<li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=9065">광주광산</a></li>
								</ul>
							</div>
						</li>
						<li><a href="#" title="경북/대구">경북/대구</a>
							<div style="display: none;">
								<ul style="opacity: 0;">
									<li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=5008">경산</a></li>
									<li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9090">경주</a></li>
								</ul>
							</div>
						</li>
						<li><a href="#" title="경남/부산/울산">경남/부산/울산</a>
							<div style="display: none;">
								<ul style="opacity: 0;">
									<li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=9082">거창</a></li>
									<li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=2009">광복</a></li>
								</ul>
							</div>
						</li>
						<li><a href="#" title="강원">강원</a>
							<div style="display: none;">
								<ul style="opacity: 0;">
									<li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=6&amp;cinemaID=7001">남원주</a></li>
									<li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=6&amp;cinemaID=7002">동해</a></li>
								</ul>
							</div>
						</li>
						<li><a href="#" title="제주">제주</a>
							<div style="display: none;">
								<ul style="opacity: 0;">
									<li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=7&amp;cinemaID=9013">서귀포</a></li>
									<li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=7&amp;cinemaID=9068">제주삼화지구</a></li>
								</ul>
							</div>
						</li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<div id="sub_section">
		<div id="visualAd" class="visual_top visual_main">
			<div class="inner">
				<div class="slide_wrap slide_main_visual">
					<div class="owl-carousel owl-loaded owl-drag">
						<div class="owl-stage-outer"></div>
						<div class="owl-nav" style="width: 759px; margin-left: -379.5px;">
							<button type="button" role="presentation" class="owl-prev">
								<span aria-label="Previous">‹</span>
							</button>
							<button type="button" role="presentation" class="owl-next">
								<span aria-label="Next">›</span>
							</button>
						</div>
						<div class="owl-dots">
							<button role="button" class="owl-dot"><span></span></button>
							<button role="button" class="owl-dot"><span></span></button>
							<button role="button" class="owl-dot"><span></span></button>
							<button role="button" class="owl-dot"><span></span></button>
							<button role="button" class="owl-dot"><span></span></button>
							<button role="button" class="owl-dot"><span></span></button>
							<button role="button" class="owl-dot"><span></span></button>
							<button role="button" class="owl-dot active"><span></span></button>
						</div>
					</div>
					<div class="bx_ctrl" style="left: 114px;">
						<button class="play active">슬라이드 자동재생</button><button class="stop">슬라이드 일시정지</button>
					</div>
				</div>
			</div>
		</div>
		<div id="contents" class="contents_main">
			<div class="movi_current_list">
				<span class="movi_info_txt">
					<a href="https://www.lottecinema.co.kr/NLCHS/Movie/List?flag=1"><em>11.09 11:20</em>&nbsp;기준</a>
				</span>
				<ul class="tab_wrap outer lft">
				<li class="active">
					<button type="button" class="tab_tit" style="left: 0px; width: 20px;"><span></span></button>
					<div class="tab_con">
						<h3 class="hidden"></h3>
						<div class="main_movie_list">
							<div class="slide_wrap slide_main_movie">
								<div class="owl-carousel owl-loaded owl-drag">
									<div class="owl-stage-outer">
										<div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 4378px;">
											<div class="owl-item active" style="width: 184px; margin-right: 15px;">
												<div class="item">
													<div class="top_info">
														<span class="poster_info">
															<img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/17885_101_1.jpg" alt="이터널스"><em class="num_info">1</em><span class="ic_grade gr_12">12</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">이터널스</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>48.7%</em></span><span class="star_info" style="cursor: pointer;">7.1</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item active" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202110/17864_101_1.jpg" alt="듄"><em class="num_info">2</em><span class="ic_grade gr_12">12</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">듄</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>11.2%</em></span><span class="star_info" style="cursor: pointer;">8.7</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item active" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18045_101_1.jpg" alt="아담스 패밀리 2"><em class="num_info">3</em><span class="ic_grade gr_all">전체</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">아담스 패밀리 2</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>10.5%</em></span><span class="remain_info">D-1</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item active" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/17962_101_1.jpg" alt="강릉"><em class="num_info">4</em><span class="ic_grade gr_18">청불</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">강릉</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>7.4%</em></span><span class="remain_info">D-1</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item active" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching2.lottecinema.co.kr/lotte_image/2021/Romance/Romance_184262.jpg" alt="장르만 로맨스 케미황제 류승룡의 스크린 컴백 매일 버라이어티한 그들의 사생활이 밝혀진다 11월 17일 대개봉 15세 이상 관람가 말맛폭발 케미폭발 예고편"><em class="num_info">AD</em></span><div class="over_box"><div class="inner" style="margin-top: -14px;"><a href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_lottelotte_33&amp;adgroupid=adg_lottecinema_20211027_17&amp;adid=adi_lottecinema_20211027_28" target="" class="btn_col3 ty3">상세정보</a></div></div></div></div></div><div class="owl-item" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18010_101_1.jpg" alt="1984 최동원"><em class="num_info">5</em><span class="ic_grade gr_all">전체</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">1984 최동원</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>7.0%</em></span><span class="remain_info">D-2</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18030_101_1.jpg" alt="장르만 로맨스"><em class="num_info">6</em><span class="ic_grade gr_15">15</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">장르만 로맨스</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>6.2%</em></span><span class="remain_info">D-8</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202109/17458_101_1.jpg" alt="베놈 2: 렛 데어 비 카니지"><em class="num_info">7</em><span class="ic_grade gr_15">15</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">베놈 2: 렛 데어 비 카니지</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>1.6%</em></span><span class="star_info" style="cursor: pointer;">7.7</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18080_101_1.jpg" alt="귀멸의 칼날: 남매의 연"><em class="num_info">8</em><span class="ic_grade gr_15">15</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">귀멸의 칼날: 남매의 연</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>1.3%</em></span><span class="remain_info">D-1</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202110/17994_101_1.jpg" alt="고장난 론"><em class="num_info">9</em><span class="ic_grade gr_all">전체</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">고장난 론</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>0.8%</em></span><span class="star_info" style="cursor: pointer;">9.3</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202109/17811_101_1.jpg" alt="보이스"><em class="num_info">10</em><span class="ic_grade gr_15">15</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">보이스</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>0.5%</em></span><span class="star_info" style="cursor: pointer;">9</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202110/17974_101_1.jpg" alt="바다 탐험대 옥토넛 : 육지수호 대작전"><em class="num_info">11</em><span class="ic_grade gr_all">전체</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">바다 탐험대 옥토넛 : 육지수호 대작전</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>0.3%</em></span><span class="star_info" style="cursor: pointer;">8.6</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/17972_101_1.jpg" alt="퍼스트 카우"><em class="num_info">12</em><span class="ic_grade gr_12">12</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">퍼스트 카우</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>0.3%</em></span><span class="star_info" style="cursor: pointer;">8.3</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18039_101_1.jpg" alt="싸반"><em class="num_info">13</em><span class="ic_grade gr_15">15</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">싸반</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>0.3%</em></span><span class="remain_info">D-2</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202004/15359_101_1.jpg" alt="007 노 타임 투 다이"><em class="num_info">14</em><span class="ic_grade gr_12">12</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">007 노 타임 투 다이</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>0.3%</em></span><span class="star_info" style="cursor: pointer;">8.5</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/17888_101_1.jpg" alt="귀토-토끼의 팔란"><em class="num_info">15</em><span class="ic_grade gr_all">전체</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">귀토-토끼의 팔란</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>0.3%</em></span><span class="remain_info">D-2</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202110/17720_101_1.jpg" alt="라스트 듀얼: 최후의 결투"><em class="num_info">16</em><span class="ic_grade gr_18">청불</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">라스트 듀얼: 최후의 결투</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>0.3%</em></span><span class="star_info" style="cursor: pointer;">9</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/17914_101_1.jpg" alt="세버그"><em class="num_info">17</em><span class="ic_grade gr_15">15</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">세버그</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>0.2%</em></span><span class="star_info" style="cursor: pointer;">8.7</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/17838_101_1.jpg" alt="빌리 홀리데이"><em class="num_info">18</em><span class="ic_grade gr_18">청불</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">빌리 홀리데이</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>0.2%</em></span><span class="star_info" style="cursor: pointer;">8.9</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18038_101_1.jpg" alt="나를 잡아줘"><em class="num_info">19</em><span class="ic_grade gr_12">12</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">나를 잡아줘</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>0.1%</em></span><span class="remain_info">D-2</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202109/17836_101_1.jpg" alt="용과 주근깨 공주"><em class="num_info">20</em><span class="ic_grade gr_all">전체</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">용과 주근깨 공주</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>0.1%</em></span><span class="star_info" style="cursor: pointer;">7.9</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div><div class="owl-item" style="width: 184px; margin-right: 15px;"><div class="item"><div class="top_info"><span class="poster_info"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202110/17992_101_1.jpg" alt="아네트"><em class="num_info">21</em><span class="ic_grade gr_15">15</span></span><div class="over_box"><div class="inner" style="margin-top: -33px;"><a href="#" class="btn_col3 ty3">예매하기</a><a href="#none" class="btn_col3 ty3">상세정보</a></div></div></div><div class="btm_info"><strong class="tit_info">아네트</strong><span class="sub_info1"><span class="rate_info">예매율&nbsp;<em>0.1%</em></span><span class="star_info" style="cursor: pointer;">7</span><span class="heart_info"><button type="button" class="btn_heart_rnd ">관심등록</button></span></span></div></div></div></div></div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev disabled"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots disabled"></div></div></div></div></div></li></ul></div><div id="main_specialCinema" class="main_cont_wrap special"><div class="sec_tit">스페셜관</div><ul class="special_wrap2"><li style="padding-left: 13px;"><a href="#none"><img src="https://caching.lottecinema.co.kr//Media/WebAdmin/e2a94c82115c46f7b326baee6e10266a.png" alt="샤롯데바로가기"></a></li><li style="padding-left: 38px;"><a href="#none"><img src="https://caching.lottecinema.co.kr//Media/WebAdmin/3ffca854b1844fdc8b54d8d9db45a03f.png" alt="수퍼플렉스 G 바로가기"></a></li><li style="padding-left: 38px;"><a href="#none"><img src="https://caching.lottecinema.co.kr//Media/WebAdmin/ff43cb260a2647dbb5f3c62b709103c4.png" alt="수퍼S 바로가기"></a></li><li style="padding-left: 38px;"><a href="#none"><img src="https://caching.lottecinema.co.kr//Media/WebAdmin/c9078226c9ad4085b1b629bee2aba138.png" alt="수퍼플렉스 바로가기"></a></li><li style="padding-left: 38px;"><a href="#none"><img src="https://caching.lottecinema.co.kr//Media/WebAdmin/61fb906fbd9b4ff1b34d6e0bd78dc655.png" alt="수퍼4D 바로가기"></a></li><li style="padding-left: 38px;"><a href="#none"><img src="https://caching.lottecinema.co.kr//Media/WebAdmin/2a366799460a49359bf93250f50852cf.png" alt="컬러리움"></a></li><li style="padding-left: 38px;"><a href="#none"><img src="https://caching.lottecinema.co.kr//Media/WebAdmin/208a5ede362244fb8ab2e5cc3ab07529.PNG" alt="씨네살롱"></a></li><li style="padding-left: 38px;"><a href="#none"><img src="https://caching.lottecinema.co.kr//Media/WebAdmin/5c23288d3a104f7fa4f7d3e725a2c6a8.PNG" alt="씨네컴포트"></a></li></ul><button type="button" class="btn_txt_more ty2">더보기</button></div><div id="main_eventList" class="main_cont_wrap event"><div class="sec_tit">이벤트</div><div class="event_wrap"><ul class="img_lst_wrap"><li class="img_w_01"><a href="#none" title="화면이동"><img src="https://caching.lottecinema.co.kr//Media/Event/85169f743d1f4aaeb963d3bdbd70d156.jpg" alt=""></a></li><li class="img_w_01"><a href="#none" title="화면이동"><img src="https://caching.lottecinema.co.kr//Media/Event/00ca0af6ef4c4dd481774b91e2fb980e.jpg" alt=""></a></li><li class="img_w_02"><a href="#none" title="화면이동"><img src="https://caching.lottecinema.co.kr//Media/Event/ea1c8e058f074064ad6703fe425383db.jpg" alt=""><span class="bd_txt fin">D-6</span></a></li><li class="fl_r img_w_03"><a href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_lottelotte_43&amp;adgroupid=adg_lottecinema_20211029_37&amp;adid=adi_lottecinema_20211029_37" target="_blank"><img src="https://caching2.lottecinema.co.kr/lotte_image/2020/Hyundaicard/Hyundaicard_296511_1.jpg" alt="금요일 토요일 5000 엠포인트 사용 그 외 2500 엠포인트"></a></li><li class="img_w_04"><a href="#none" title="화면이동"><img src="https://caching.lottecinema.co.kr//Media/Event/54250fc5c47844bea4e6e4c212a1957e.jpg" alt=""></a></li><li class="img_w_01"><a href="#none" title="화면이동"><img src="https://caching.lottecinema.co.kr//Media/Event/380b1149ed724ce9ba07391a0ed1bb1c.jpg" alt=""></a></li></ul></div><button type="button" class="btn_txt_more ty2">더보기</button></div><div class="main_cont_wrap premiere"><div class="sec_tit">시사회/무대인사</div><ul class="premiere_wrap"><li><a href="#none"><img src="https://caching.lottecinema.co.kr//Media/Event/2e5ea415aa834121bf02d59ab8e629d4.png" alt="시사회 연애빠진 로맨스"></a></li><li><a href="#none"><img src="https://caching.lottecinema.co.kr//Media/Event/90f45fadb5c440f283acbf8a58b1f761.jpg" alt="시사회 태일이 회원시사회"></a></li><li><a href="#none"><img src="https://caching.lottecinema.co.kr//Media/Event/f06c2fc787314359b1c3a6834f7b40e0.jpg" alt="<1984 최동원> GV 상영회"></a></li></ul><button type="button" class="btn_txt_more ty2">더보기</button></div><div class="mid_menu_wrap"><a href="#none" class="mid_itm" title=""><img src="https://caching.lottecinema.co.kr//Media/WebAdmin/3423e358b74d49d5b12867c7d9c6f6a8.png" alt="할인안내"></a><a href="#none" class="mid_itm" title=""><img src="https://caching.lottecinema.co.kr//Media/WebAdmin/16b056e5e6a04c609b94a5c21e786d3b.png" alt="포인트"></a><a href="#none" class="mid_itm" title=""><img src="https://caching.lottecinema.co.kr//Media/WebAdmin/9fd4a77cd6a44a39aa35d07e5bb8a010.png" alt="멤버십"></a><a href="#none" class="mid_itm" title=""><img src="https://caching.lottecinema.co.kr//Media/WebAdmin/3633088df0644062b53cd88b34067895.png" alt="틴틴클럽"></a><a href="#none" class="mid_itm" title=""><img src="https://caching.lottecinema.co.kr//Media/WebAdmin/9c4e2721ecdd488d86df6d27e3c2a000.png" alt="bravo 브라보클럽"></a></div><div class="main_cont_wrap notice"><div class="sec_tit">공지사항</div><div class="rolling_menu_wrap"><ul class="rolling_menu" style="top: 0px;"><li><a href="#none" title="">롯데시네마 &lt;백신 패스관&gt; 운영 안내</a></li><li><a href="#none" title="">V3 백신 엔진 악성코드 오진 안내</a></li><li><a href="#none" title="">KT 멤버십 영화예매 적립 서비스 안내</a></li><li><a href="#none" title="">&lt;마스크 착용 의무화 행정명령 시행 안내&gt;</a></li><li><a href="#none" title="">롯데시네마 영구VIP 서비스 종료 안내</a></li><li><a href="#none" title="">롯데시네마 &lt;백신 패스관&gt; 운영 안내</a></li><li><a href="#none" title="">롯데시네마 &lt;백신 패스관&gt; 운영 안내</a></li><li><a href="#none" title="">롯데시네마 &lt;백신 패스관&gt; 운영 안내</a></li><li><a href="#none" title="">롯데시네마 &lt;백신 패스관&gt; 운영 안내</a></li><li><a href="#none" title="">롯데시네마 &lt;백신 패스관&gt; 운영 안내</a></li><li><a href="#none" title="">롯데시네마 &lt;백신 패스관&gt; 운영 안내</a></li><li><a href="#none" title="">롯데시네마 &lt;백신 패스관&gt; 운영 안내</a></li></ul></div><button type="button" class="btn_txt_more ty2">더보기</button></div></div><div id="homeAlertSmall" class="banner_layer_wrap" style="display: none; position: fixed; top: 50px; left: 250px; margin-left: -188px; z-index: 98;"><a href="#none"><img src="https://caching.lottecinema.co.kr//Media/WebAdmin/020053e72d8f48449af41c1a3924b70c.jpg" alt=""></a><div class="close_wrap"><input type="checkbox" id="todayCookie"><label for="todayCookie" class="ty2">오늘하루그만보기</label><button class="btn_close btnCloseLayer">닫기</button></div></div></div>
<div id="layerMovieTrailer" class="layer_wrap ty2 layer_movie_trailer" style="left: 50%; top: 50%; margin-top: -260.5px; margin-left: -485px;"><strong class="hidden">레이어 팝업 시작</strong><div class="layer_header"><button type="button" class="btn_close btnCloseLayer">팝업 닫기</button></div><div class="layer_contents"><video height="100%" width="100%" controls="" id="vdoPlayer" src="https://caching2.lottecinema.co.kr/lotte_image/2021/Ita/1103/Ita_1280720.mp4"></video></div><strong class="hidden txtTabIndex" tabindex="0">레이어 팝업 끝</strong></div>

	<div id="banner_side_section" class="banner_side_wrap"></div>
	<div id="banner_section" class="banner_wrap"><div class="banner_01"><a href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_lottelotte_34&amp;adgroupid=adg_lottecinema_20211013_16&amp;adid=adi_lottecinema_20211013_53" target=""><img src="https://caching2.lottecinema.co.kr/lotte_image/2021/Kang/1104/Kang_980180.jpg" alt="비트 친구를 잇는 누아르 3부작 낭만의 시대는 끝났다 유오성 장혁 강릉 11월 10일 대개봉 화끈한 액션 예고편 GO 청소년관람불가"></a></div><div id="footerBanner" class="banner_type02" style="background-color: rgb(227, 230, 239); background-image: url(&quot;https://caching2.lottecinema.co.kr/lotte_image/2017/bg_01.jpg&quot;); background-repeat: repeat-x; background-position: 0px 0px;"><a href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_lottelotte_36&amp;adgroupid=adg_lottecinema_20211015_40&amp;adid=adi_lottecinema_20211015_74" target="_blank"><img src="https://caching2.lottecinema.co.kr/lotte_image/2021/Mp/1027/Mp_980240.png" alt="현대해상 다이렉트 자동차보험 신규자동차 보험 30만원 이상 가입 시 롯데 3만원 상품권 지급 30000원"></a></div></div>
	<div id="footer_section" class="footer"><div class="inner"><span class="f_logo"><img src="/NLCHS/Content/images/common/logo_footer.gif" alt="LOTTE CINEMA"></span><ul class="f_menu"><li><a href="https://www.lottecinema.co.kr/NLCHS/Etc/MemberClause" title="회원약관" target="_self">회원약관</a></li><li><a href="https://www.lottecinema.co.kr/NLCHS/Etc/IndividualInfomationHandlingPolicy" title="개인정보처리방침" target="_self"><strong>개인정보처리방침</strong></a></li><li><a href="https://www.lottecinema.co.kr/NLCHS/Etc/EmailCollectionRefusal" title="이메일무단수집거부" target="_self">이메일무단수집거부</a></li><li><a href="https://www.lottecinema.co.kr/NLCHS/Etc/ElectronicManagementPolicy" title="영상정보처리기기 운영 및 관리방침" target="_self">영상정보처리기기 운영 및 관리방침</a></li><li><a href="https://www.lottecinema.co.kr/NLCHS/Membership/l_point" title="L.POINT회원안내" target="_self">L.POINT회원안내</a></li><li><a href="https://www.lottecinema.co.kr/NLCHS/Etc/AssignStandard" title="배정기준" target="_self">배정기준</a></li><li><a href="http://www.lottecinema.co.kr/LCCS/Contents/employ/individuals.aspx" title="채용안내" target="_blank">채용안내</a></li><li><a href="https://www.lottecinema.co.kr/LCCS/Contents/ad/advertinquiry.aspx" title="광고/임대문의" target="_blank">광고/임대문의</a></li><li><a href="http://www.lottecinema.co.kr/LCCS/Contents/ethical/ethicsintroduce.aspx" title="윤리경영" target="_self">윤리경영</a></li><li><a href="http://www.lottecinema.co.kr/LCCS/index.aspx" title="기업정보" target="_blank">기업정보</a></li></ul><div class="bx_address"><address>서울특별시 송파구 올림픽로 300 롯데월드타워 27층</address><span class="bar">고객센터 1544-8855</span><br><span>대표이사 기원규</span><span class="bar">사업자등록번호 313-87-00979</span><span class="bar">통신판매업신고번호 제1184호</span><span class="bar">개인정보 보호 최고 책임자 김무성</span></div><p class="copyright">COPYRIGHT© LOTTE CINEMA ALL RIGHT RESERVED.</p></div><div class="article_award"><div class="inner"><ul><li><img src="/NLCHS/Content/images/common/footer_award_NCSI6.PNG?v=21040801" alt="NCSI / NCSI 영화관부문 6년 연속 1위"></li><li><img src="/NLCHS/Content/images/common/footer_award_kcsi.png?v=21020102" alt="KCSI 영화관부문 7년 연속 1위(총12회)"></li><li><img src="/NLCHS/Content/images/common/footer_award_kssqi-1.png?v=21020101" alt="KS-SQI 영화관부문 9년 연속 1위(총12회)"></li> <li><img src="/NLCHS/Content/images/common/footer_award_brandcinema.png?v=21020101" alt="올해의 브랜드대상 영화관 부문 10년 연속 1위"></li><li><img src="/NLCHS/Content/images/common/footer_award_greenstar.png?v=21020101" alt="그린스타 영화관 부문 4년 연속 1위"></li><li><img src="/NLCHS/Content/images/common/footer_award_brandstar.png?v=21020101" alt="대한민국 브랜드 스타 영화관 부문 1위"></li><li><img src="/NLCHS/Content/images/common/footer_award_familyship.png?v=21020101" alt="가족친화 인증기업 선정"></li><li><img src="/NLCHS/Content/images/common/footer_award_winner.png?v=21020101" alt="소셜미디어 브랜드분야 WINNER 수상"></li></ul></div></div></div>
</html>