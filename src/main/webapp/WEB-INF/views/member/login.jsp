<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="root" value="/" />
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Login - 롯지브이</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/default.css" />
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/js/materialize.min.js"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
	
</head>

<body>
    <div id="header_section" class="header">
        <h1 class="logo">
        	<a href="${root }">LOTTE CINEMA</a>
        </h1>
        <div class="gnb">
            <ul class="g_menu1">
                <li><a href="https://www.facebook.com/LotteCinema.kr" class="btn_facebook" target="_blank" title="롯데시네마 페이스북 새창열림">좋아요</a></li>
                <li><a href="https://www.youtube.com/channel/UCi4KivcV3a3yhkycFsjpalQ" class="btn_youtube" target="_blank" title="새창열림">구독하기</a></li>
                <li><a href="https://www.instagram.com/lottecinema_official/" class="btn_follow" target="_blank" title="롯데시네마 인스타그램 새창열림">팔로우</a></li>
            </ul>
            <ul class="g_menu2">
                <li><a href="https://www.lottecinema.co.kr/NLCHS/Mypage/MemberVipzone">멤버십</a></li>
                <li><a href="https://www.lottecinema.co.kr/NLCHS/Customer">고객센터</a></li>
                <li><a href="https://www.lottecinema.co.kr/NLCHS/Member/login">로그인</a></li>
            </ul>
            <ul class="g_menu3">
                <li><a href="https://www.lottecinema.co.kr/NLCHS/Membership/l_point" class="btn_my">회원가입</a></li>
                <li><a href="https://www.lottecinema.co.kr/NLCHS/Ticketing" class="btn_reserve">바로 예매</a></li>
                <li><button class="btn_menu_all">전체 메뉴 레이어 열기</button>
                    <div id="allmenu"></div>
                </li>
            </ul>
        </div>
        <div id="nav">
            <ul>
                <li class=""><a href="https://www.lottecinema.co.kr/NLCHS/Ticketing">예매</a>
                    <div style="display: none;">
                        <ul style="opacity: 0;">
                            <li><a href="https://www.lottecinema.co.kr/NLCHS/Ticketing" title="예매하기">예매하기</a></li>
                            <li><a href="https://www.lottecinema.co.kr/NLCHS/Ticketing/Schedule" title="상영시간표">상영시간표</a></li>
                            <li><a href="https://www.lottecinema.co.kr/NLCHS/Ticketing/DiscountGuide" title="할인안내">할인안내</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class=""><a href="https://www.lottecinema.co.kr/NLCHS/Movie">영화</a>
                    <div style="display: none;">
                        <ul style="opacity: 0;">
                            <li><a href="https://www.lottecinema.co.kr/NLCHS/Movie" title="홈">홈</a></li>
                            <li><a href="https://www.lottecinema.co.kr/NLCHS/Movie/List?flag=1" title="현재상영작">현재상영작</a></li>
                            <li><a href="https://www.lottecinema.co.kr/NLCHS/Movie/List?flag=5" title="상영예정작">상영예정작</a></li>
                            <li><a href="https://www.lottecinema.co.kr/NLCHS/Movie/Arte" title="아르떼">아르떼</a></li>
                            <li><a href="https://www.lottecinema.co.kr/NLCHS/Movie/NTOK" title="국립극장">국립극장</a></li>
                        </ul>
                    </div>
                </li>
                <li class=""><a href="#">영화관</a>
                    <div style="display: none;">
                        <ul style="opacity: 0;">
                            <li><a href="#" title="스페셜관">스페셜관</a>
                                <div style="display: none;">
                                    <ul style="opacity: 0;">
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialIndex">홈</a></li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=300">샤롯데</a></li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=941">수퍼플렉스 G</a></li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=980">수퍼 S</a></li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=940">수퍼플렉스</a></li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=930">수퍼 4D</a></li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=988">컬러리움</a></li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=987">씨네살롱</a></li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=960">씨네패밀리</a></li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=200">씨네커플</a></li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=950">씨네비즈</a></li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&amp;screendivcd=986">씨네컴포트(리클라이너)</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="#" title="서울">서울</a>
                                <div style="display: none;">
                                    <ul style="opacity: 0;">
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1013">가산디지털</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=9094">가양</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=9010">강동</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1004">건대입구</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1009">김포공항</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1003">노원</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1023">도곡</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1017">독산</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=9056">브로드웨이(신사)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1012">서울대입구</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=9099">수락산</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1022">수유</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1015">신도림</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1007">신림</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1001">에비뉴엘(명동)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1002">영등포</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1014">용산</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1016">월드타워</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1021">은평(롯데몰)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=9083">중랑</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1008">청량리</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1010">합정</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=1&amp;cinemaID=1005">홍대입구</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="#" title="경기/인천">경기/인천</a>
                                <div style="display: none;">
                                    <ul style="opacity: 0;">
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3030">광교아울렛</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3027">광명(광명사거리)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3025">광명아울렛</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3020">광주터미널</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3026">구리아울렛</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3048">동탄</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=9095">라페스타</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3021">마석</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3046">별내</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3017">병점</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3011">부천(신중동역)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=9054">부천역</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3003">부평</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3008">부평역사</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3045">북수원(천천동)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3031">산본피트인</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3043">서수원</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3041">성남중앙(신흥역)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3012">센트럴락</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3029">송탄</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3024">수원(수원역)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3044">수지</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=9088">시화</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3004">안산</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3028">안산고잔</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3022">안성</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3007">안양(안양역)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3032">안양일번가</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=9077">영종하늘도시</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=9079">오산(원동)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3039">용인기흥</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3040">용인역북</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3037">위례</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3033">의정부민락</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=9100">인덕원</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3035">인천아시아드</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3038">인천터미널</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=9087">주엽</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3010">진접</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3034">파주운정</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3047">판교(창조경제밸리)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3018">평촌(범계역)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=9075">평택비전(뉴코아)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=9096">하남미사</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=2&amp;cinemaID=3036">향남</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="#" title="충청/대전">충청/대전</a>
                                <div style="display: none;">
                                    <ul style="opacity: 0;">
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=9085">당진</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=4002">대전(백화점)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=4009">대전관저</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=4006">대전둔산(월평동)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=4008">대전센트럴</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=9044">서산</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=4004">서청주(아울렛)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=4005">아산터미널</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=4007">청주용암</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=3&amp;cinemaID=9078">충주</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="#" title="전라/광주">전라/광주</a>
                                <div style="display: none;">
                                    <ul style="opacity: 0;">
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=6001">광주(백화점)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=9065">광주광산</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=6007">군산나운</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=6009">군산몰</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=6004">수완(아울렛)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=9070">익산모현</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=6002">전주(백화점)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=6006">전주평화</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=4&amp;cinemaID=9047">충장로</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="#" title="경북/대구">경북/대구</a>
                                <div style="display: none;">
                                    <ul style="opacity: 0;">
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=5008">경산</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9090">경주</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9091">경주황성</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=5013">구미공단</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=5012">대구광장</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=5006">대구율하</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9076">대구현풍</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=5005">동성로</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=5016">상인</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9080">상주</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=5004">성서</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9064">영주</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9098">영천</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9097">포항</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9067">프리미엄구미센트럴</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9066">프리미엄만경</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9074">프리미엄안동</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=5&amp;cinemaID=9057">프리미엄칠곡</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="#" title="경남/부산/울산">경남/부산/울산</a>
                                <div style="display: none;">
                                    <ul style="opacity: 0;">
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=9082">거창</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=2009">광복</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=5015">김해부원</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=5011">김해아울렛(장유)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=2012">대영</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=2007">동래</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=2010">동부산아울렛</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=9093">드라이브
                                                오시리아</a></li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=9042">마산(합성동)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=9092">부산명지</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=2004">부산본점</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=2005">사상</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=9084">사천</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=2008">서면(전포동)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=2006">센텀시티</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=9069">엠비씨네(진주)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=2011">오투(부산대)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=5001">울산(백화점)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=5014">울산성남</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=5017">진주혁신(롯데몰)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=5009">진해</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=5002">창원</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=9036">통영</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=9072">프리미엄경남대</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=9003">프리미엄진주(중안)</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=101&amp;cinemaID=9059">프리미엄해운대(장산역)</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="#" title="강원">강원</a>
                                <div style="display: none;">
                                    <ul style="opacity: 0;">
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=6&amp;cinemaID=7001">남원주</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=6&amp;cinemaID=7002">동해</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=6&amp;cinemaID=9089">속초</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=6&amp;cinemaID=7003">원주무실</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=6&amp;cinemaID=9081">춘천</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="#" title="제주">제주</a>
                                <div style="display: none;">
                                    <ul style="opacity: 0;">
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=7&amp;cinemaID=9013">서귀포</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=7&amp;cinemaID=9068">제주삼화지구</a>
                                        </li>
                                        <li><a href="https://www.lottecinema.co.kr/NLCHS/Cinema/Detail?divisionCode=1&amp;detailDivisionCode=7&amp;cinemaID=9071">제주아라</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class=""><a href="https://event.lottecinema.co.kr/NLCHS/Event">이벤트</a>
                    <div style="display: none;">
                        <ul style="opacity: 0;">
                            <li><a href="https://event.lottecinema.co.kr/NLCHS/Event" title="홈">홈</a></li>
                            <li><a href="https://event.lottecinema.co.kr/NLCHS/Event/DetailList?code=20" title="영화">영화</a>
                            </li>
                            <li><a href="https://event.lottecinema.co.kr/NLCHS/Event/DetailList?code=40" title="시사회/무대인사">시사회/무대인사</a></li>
                            <li><a href="https://event.lottecinema.co.kr/NLCHS/Event/DetailList?code=10" title="HOT">HOT</a>
                            </li>
                            <li><a href="https://event.lottecinema.co.kr/NLCHS/Event/DetailList?code=50" title="제휴할인">제휴할인</a></li>
                            <li><a href="https://event.lottecinema.co.kr/NLCHS/Event/NearCinemaList" title="우리동네영화관">우리동네영화관</a></li>
                        </ul>
                    </div>
                </li>
                <li class=""><a href="https://www.lottecinema.co.kr/NLCHS/CinemaMall">스토어</a>
                    <div style="display: none;">
                        <ul style="opacity: 0;">
                            <li><a href="https://www.lottecinema.co.kr/NLCHS/CinemaMall#store2" title="베스트">베스트</a></li>
                            <li><a href="https://www.lottecinema.co.kr/NLCHS/CinemaMall#store3" title="관람권">관람권</a></li>
                            <li><a href="https://www.lottecinema.co.kr/NLCHS/CinemaMall#store4" title="스낵음료">스낵음료</a></li>
                            <li><a href="https://www.lottecinema.co.kr/NLCHS/CinemaMall#store13" title="포토카드">포토카드</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div id="contents" class="contents_full contents_member_comn">

        <script src="<c:url value=" /resources/js/aes.js" />"></script>
        <script src="<c:url value=" /resources/js/sso.js" />"></script>
        <script src="<c:url value=" /resources/js/LcCommon.js" />"></script>
        <script src="<c:url value=" /resources/js/crossDomainStorage.js" />"></script>

        <div id="loginContents">
            <ul class="tab_wrap outer full">
                <li class="active">
                    <button type="button" class="tab_tit" style="left: 50%; width: 326.667px; margin-left: -490px;">
                        <span>회원</span>
                    </button>
                    <div class="tab_con">
                        <h3 class="hidden">회원</h3>
                        <div class="member_login_wrap">
                            <div class="contents_inner">
                                <div class="login_box">
                                    <p class="tip">L.POINT, 롯데시네마 ID로 별도의 회원가입 없이 이용 가능 합니다. </p>
                                    <div class="login_area">
                                        <input type="text" id="userId" maxlength="50" placeholder="아이디 또는 이메일을 입력해 주세요." title="입력태그">
                                        <input type="password" id="userPassword" maxlength="15" placeholder="비밀번호를 입력해 주세요." title="입력태그">
                                        <input type="hidden" name="hidLoginType" id="hidLoginType" value="">
                                        <button type="button" class="btn_login">로그인</button>
                                    </div>
                                    <div class="login_bot_wrap">
                                        <div class="login_check">
                                            <input type="checkbox" name="loginCheck" id="checkSavedID">
                                            <label for="checkSavedID">아이디 저장</label>
                                        </div>
                                        <div class="login_menu"><a href="#none" title="페이지 이동">회원가입</a>
                                            <a href="#none" title="페이지 이동">아이디 찾기</a>
                                            <a href="#none" title="페이지 이동">비밀번호 찾기</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </li>
        </div>
    </div>
	<div id="banner_section" class="banner_wrap">
	    <div class="banner_01"><a href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_lottelotte_34&amp;adgroupid=adg_lottecinema_20211021_16&amp;adid=adi_lottecinema_20211021_29" target=""><img src="https://caching2.lottecinema.co.kr/lotte_image/2021/Shop/1104/Shop_980180.jpg" alt="제라드 버틀러 X A 특공대 조 카나한 감독 캅샵 미친놈들의 전쟁 11월 대개봉 완벽하게 재밌다 관람등급미정"></a></div>
	    <div id="footerBanner" class="banner_type02" style="background-color: rgb(227, 230, 239); background-image: url(&quot;https://caching2.lottecinema.co.kr/lotte_image/2017/bg_01.jpg&quot;); background-repeat: repeat-x; background-position: 0px 0px;"><a href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_lottelotte_36&amp;adgroupid=adg_lottecinema_20211015_40&amp;adid=adi_lottecinema_20211015_74" target="_blank"><img src="https://caching2.lottecinema.co.kr/lotte_image/2021/Mp/1027/Mp_980240.png" alt="현대해상 다이렉트 자동차보험 신규자동차 보험 30만원 이상 가입 시 롯데 3만원 상품권 지급 30000원"></a></div>
	</div>
	<div id="footer_section" class="footer" style="background-color: white;">
		<%@ include file="../common/footer.jsp" %>
	</div>
</body>

</html>