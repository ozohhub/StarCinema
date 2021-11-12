<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="root" value="/" />

<head>
<meta charset="UTF-8">
<title>롯지브이</title>
	<link rel="icon" href="https://www.lottecinema.co.kr/NLCHS/favicon.ico?v=1" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/default.css" />
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/js/materialize.min.js"></script>
	<script src="<c:url value="/resources/js/main.js" />"></script>

</head>
<body>
		<h1 class="logo">
			<a href="${root }">LOTTE CINEMA</a>
		</h1>
		<div class="gnb">
			<ul class="g_menu2">
				<li><a href="index?formpath=memberList">회원관리</a></li>
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Mypage/MemberVipzone">멤버십</a></li>
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Customer">고객센터</a></li>
				<li><a href="index?formpath=login">로그인</a></li>
			</ul>
			<ul class="g_menu3">
				<li><a href="register1" class="btn_my">회원가입</a></li>
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