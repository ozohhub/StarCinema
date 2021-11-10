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
	<div id="header_section" class="header ty3" style="">
		<h1 class="logo">
			<a href="/cinema/"><img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/logo_wht.png"/>LOTTE CINEMA</a>
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
						<div class="slider">
		    <ul class="slides">
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
					<div class="bx_ctrl" style="left: 114px;">
						<button class="play active">슬라이드 자동재생</button><button class="stop">슬라이드 일시정지</button>
					</div>
				</div>
			</div>
		</div>
		
		<div id="contents" class="contents_main">
			<div class="movi_current_list"></div>
			<div class="inner" style="background-color: white;"></div>
		</div>
	</div>
	<div id="banner_side_section" class="banner_side_wrap"></div>
	<div id="footer_section" class="footer" style="background-color: white;">
		<div class="inner">
			<span class="f_logo">
				<img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/logo_footer.gif" alt="LOTTE CINEMA">
			</span>
			<ul class="f_menu">
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Etc/MemberClause" title="회원약관" target="_self">회원약관</a></li>
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Etc/IndividualInfomationHandlingPolicy" title="개인정보처리방침" target="_self"><strong>개인정보처리방침</strong></a></li>
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Etc/EmailCollectionRefusal" title="이메일무단수집거부" target="_self">이메일무단수집거부</a></li>
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Etc/ElectronicManagementPolicy" title="영상정보처리기기 운영 및 관리방침" target="_self">영상정보처리기기 운영 및 관리방침</a></li>
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Membership/l_point" title="L.POINT회원안내" target="_self">L.POINT회원안내</a></li>
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Etc/AssignStandard" title="배정기준" target="_self">배정기준</a></li>
				<li><a href="http://www.lottecinema.co.kr/LCCS/Contents/employ/individuals.aspx" title="채용안내" target="_blank">채용안내</a></li>
				<li><a href="https://www.lottecinema.co.kr/LCCS/Contents/ad/advertinquiry.aspx" title="광고/임대문의" target="_blank">광고/임대문의</a></li>
				<li><a href="http://www.lottecinema.co.kr/LCCS/Contents/ethical/ethicsintroduce.aspx" title="윤리경영" target="_self">윤리경영</a></li>
				<li><a href="http://www.lottecinema.co.kr/LCCS/index.aspx" title="기업정보" target="_blank">기업정보</a></li>
			</ul>
			<div class="bx_address">
				<address>서울특별시 송파구 올림픽로 300 롯데월드타워 27층</address>
				<span class="bar">고객센터 1544-8855</span><br>
				<span>대표이사 기원규</span>
				<span class="bar">사업자등록번호 313-87-00979</span>
				<span class="bar">통신판매업신고번호 제1184호</span>
				<span class="bar">개인정보 보호 최고 책임자 김무성</span>
			</div>
			<p class="copyright">COPYRIGHT© LOTTE CINEMA ALL RIGHT RESERVED.</p>
		</div>
		<div class="article_award">
			<div class="inner">
				<ul>
					<li><img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/footer_award_NCSI6.PNG?v=21040801" alt="NCSI / NCSI 영화관부문 6년 연속 1위"></li>
					<li><img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/footer_award_kcsi.png?v=21020102" alt="KCSI 영화관부문 7년 연속 1위(총12회)"></li>
					<li><img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/footer_award_kssqi-1.png?v=21020101" alt="KS-SQI 영화관부문 9년 연속 1위(총12회)"></li>
					<li><img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/footer_award_brandcinema.png?v=21020101" alt="올해의 브랜드대상 영화관 부문 10년 연속 1위"></li>
					<li><img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/footer_award_greenstar.png?v=21020101" alt="그린스타 영화관 부문 4년 연속 1위"></li>
					<li><img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/footer_award_brandstar.png?v=21020101" alt="대한민국 브랜드 스타 영화관 부문 1위"></li>
					<li><img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/footer_award_familyship.png?v=21020101" alt="가족친화 인증기업 선정"></li>
					<li><img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/footer_award_winner.png?v=21020101" alt="소셜미디어 브랜드분야 WINNER 수상"></li>
				</ul>
			</div>
		</div>
	</div>
</html>