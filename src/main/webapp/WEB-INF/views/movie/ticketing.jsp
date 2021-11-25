<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDate"%>
<!DOCTYPE html>
<html>

<head>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/swiper.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mCustomScrollbar.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content_lc21new.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dev.css" />
</head>
<body>
    <div id="contents" class="contents_full contents_reserve" style="">
        <div class="wrap_reserve">
            <h2 class="hidden">예매하기</h2>
            <div class="section_step_tit">
                <ul>
                    <li class="active step01"><a href="#reserveStep01"><strong class="tit"><span>01</span><br>상영시간</strong></a></li>
                    <li class="disabled"><a style="cursor: default;"><strong class="tit"><span>02</span><br>인원/좌석</strong></a></li>
                    <li class="disabled"><a style="cursor: default;"><strong class="tit"><span>03</span><br>결제</strong></a></li>
                    <li class="disabled"><a style="cursor: default;"><strong class="tit"><span>04</span><br>결제완료</strong></a></li>
                </ul>
            </div>
            <div id="reserveStep01" class="section_step_con step01 active">
                <h3 class="hidden">상영시간</h3>
                <div class="article article_cinema">
                    <div class="group_top">
                        <h4 class="tit">영화관</h4>
                    </div>
                    <div class="inner">
                        <ul class="tab_wrap outer">
                            <li class="active">
                                <div class="tab_con">
                                    <h5 class="hidden">전체</h5>
                                    <div class="cinema_select_wrap cinemaSelect basicCinema">
                                        <ul>
                                            <li class="depth1 active"><a href="#none">서울<em>(15)</em></a>
                                                <div class="depth2">
                                                    <div class="mCustomScrollbar basicCinemaScroll _mCS_1 mCS-autoHide" data-mcs-theme="minimal-dark" style="position: relative; overflow: visible;">
                                                        <div id="mCSB_1" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" style="max-height: none;" tabindex="0">
                                                            <div id="mCSB_1_container" class="mCSB_container" style="position: relative; top: 0px; left: 0px;" dir="ltr">
                                                                <ul>
                                                                    <li class="cinema"><a href="#none">김포공항</a></li>
                                                                    <li class="cinema"><a href="#none">청량리</a></li>
                                                                    <li class="cinema"><a href="#none">홍대입구</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: block;">
                                                            <div class="mCSB_draggerContainer">
                                                                <div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; display: block; height: 628px; max-height: 719px; top: 0px;">
                                                                    <div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
                                                                </div>
                                                                <div class="mCSB_draggerRail"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="depth1"><a href="#none">경기/인천<em>(30)</em></a>
                                                <div class="depth2">
                                                    <div class="mCustomScrollbar basicCinemaScroll _mCS_2 mCS-autoHide mCS_no_scrollbar" data-mcs-theme="minimal-dark" style="position: relative; overflow: visible;">
                                                        <div id="mCSB_2" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" style="max-height: 753px;" tabindex="0">
                                                            <div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                                                <ul>
                                                                    <li class=""><a href="#none">인천터미널</a></li>
                                                                    <li class=""><a href="#none">광명(광명사거리)</a></li>
                                                                    <li class=""><a href="#none">광명아울렛</a></li>
                                                                    <li class=""><a href="#none">광주터미널</a></li>
                                                                    <li class=""><a href="#none">구리아울렛</a></li>
                                                                    <li class=""><a href="#none">동탄</a></li>
                                                                    <li class=""><a href="#none">라페스타</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: none;">
                                                            <div class="mCSB_draggerContainer">
                                                                <div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; top: 0px;">
                                                                    <div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
                                                                </div>
                                                                <div class="mCSB_draggerRail"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="depth1"><a href="#none">충청/대전<em>(8)</em></a>
                                                <div class="depth2">
                                                    <div class="mCustomScrollbar basicCinemaScroll _mCS_3 mCS-autoHide mCS_no_scrollbar" data-mcs-theme="minimal-dark" style="position: relative; overflow: visible;">
                                                        <div id="mCSB_3" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" style="max-height: 753px;" tabindex="0">
                                                            <div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                                                <ul>
                                                                    <li class=""><a href="#none">대전(백화점)</a></li>
                                                                    <li class=""><a href="#none">대전관저</a></li>
                                                                    <li class=""><a href="#none">대전둔산(월평동)</a></li>
                                                                    <li class=""><a href="#none">대전센트럴</a></li>
                                                                    <li class=""><a href="#none">서산</a></li>
                                                                    <li class=""><a href="#none">서청주(아울렛)</a></li>
                                                                    <li class=""><a href="#none">아산터미널</a></li>
                                                                    <li class=""><a href="#none">청주용암</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: none;">
                                                            <div class="mCSB_draggerContainer">
                                                                <div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; top: 0px;">
                                                                    <div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
                                                                </div>
                                                                <div class="mCSB_draggerRail"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="depth1"><a href="#none">전라/광주<em>(7)</em></a>
                                                <div class="depth2">
                                                    <div class="mCustomScrollbar basicCinemaScroll _mCS_4 mCS-autoHide mCS_no_scrollbar" data-mcs-theme="minimal-dark" style="position: relative; overflow: visible;">
                                                        <div id="mCSB_4" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" style="max-height: 753px;" tabindex="0">
                                                            <div id="mCSB_4_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                                                <ul>
                                                                    <li class=""><a href="#none">광주(백화점)</a></li>
                                                                    <li class=""><a href="#none">군산나운</a></li>
                                                                    <li class=""><a href="#none">군산몰</a></li>
                                                                    <li class=""><a href="#none">수완(아울렛)</a></li>
                                                                    <li class=""><a href="#none">익산모현</a></li>
                                                                    <li class=""><a href="#none">전주(백화점)</a></li>
                                                                    <li class=""><a href="#none">전주평화</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div id="mCSB_4_scrollbar_vertical" class="mCSB_scrollTools mCSB_4_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: none;">
                                                            <div class="mCSB_draggerContainer">
                                                                <div id="mCSB_4_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; top: 0px;">
                                                                    <div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
                                                                </div>
                                                                <div class="mCSB_draggerRail"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="depth1"><a href="#none">경북/대구<em>(12)</em></a>
                                                <div class="depth2">
                                                    <div class="mCustomScrollbar basicCinemaScroll _mCS_5 mCS-autoHide mCS_no_scrollbar" data-mcs-theme="minimal-dark" style="position: relative; overflow: visible;">
                                                        <div id="mCSB_5" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" style="max-height: 753px;" tabindex="0">
                                                            <div id="mCSB_5_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                                                <ul>
                                                                    <li class=""><a href="#none">경산</a></li>
                                                                    <li class=""><a href="#none">구미공단</a></li>
                                                                    <li class=""><a href="#none">대구광장</a></li>
                                                                    <li class=""><a href="#none">대구율하</a></li>
                                                                    <li class=""><a href="#none">동성로</a></li>
                                                                    <li class=""><a href="#none">상인</a></li>
                                                                    <li class=""><a href="#none">성서</a></li>
                                                                    <li class=""><a href="#none">포항</a></li>
                                                                    <li class=""><a href="#none">프리미엄구미센트럴</a></li>
                                                                    <li class=""><a href="#none">프리미엄만경</a></li>
                                                                    <li class=""><a href="#none">프리미엄안동</a></li>
                                                                    <li class=""><a href="#none">프리미엄칠곡</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div id="mCSB_5_scrollbar_vertical" class="mCSB_scrollTools mCSB_5_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: none;">
                                                            <div class="mCSB_draggerContainer">
                                                                <div id="mCSB_5_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; top: 0px;">
                                                                    <div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
                                                                </div>
                                                                <div class="mCSB_draggerRail"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="depth1"><a href="#none">경남/부산/울산<em>(24)</em></a>
                                                <div class="depth2">
                                                    <div class="mCustomScrollbar basicCinemaScroll _mCS_6 mCS-autoHide mCS_no_scrollbar" data-mcs-theme="minimal-dark" style="position: relative; overflow: visible;">
                                                        <div id="mCSB_6" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" style="max-height: 753px;" tabindex="0">
                                                            <div id="mCSB_6_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                                                <ul>
                                                                    <li class="disabled"><a href="#none">거창</a></li>
                                                                    <li class=""><a href="#none">광복</a></li>
                                                                    <li class=""><a href="#none">김해부원</a></li>
                                                                    <li class=""><a href="#none">김해아울렛(장유)</a></li>
                                                                    <li class=""><a href="#none">대영</a></li>
                                                                    <li class=""><a href="#none">동래</a></li>
                                                                    <li class=""><a href="#none">동부산아울렛</a></li>
                                                                    <li class=""><a href="#none">드라이브 오시리아</a></li>
                                                                    <li class=""><a href="#none">오투(부산대)</a></li>
                                                                    <li class=""><a href="#none">울산(백화점)</a></li>
                                                                    <li class=""><a href="#none">울산성남</a></li>
                                                                    <li class=""><a href="#none">진주혁신(롯데몰)</a></li>
                                                                    <li class=""><a href="#none">진해</a></li>
                                                                    <li class=""><a href="#none">창원</a></li>
                                                                    <li class=""><a href="#none">통영</a></li>
                                                                    <li class=""><a href="#none">프리미엄경남대</a></li>
                                                                    <li class=""><a href="#none">프리미엄진주(중안)</a></li>
                                                                    <li class=""><a href="#none">프리미엄해운대(장산역)</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div id="mCSB_6_scrollbar_vertical" class="mCSB_scrollTools mCSB_6_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: none;">
                                                            <div class="mCSB_draggerContainer">
                                                                <div id="mCSB_6_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; top: 0px;">
                                                                    <div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
                                                                </div>
                                                                <div class="mCSB_draggerRail"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="depth1"><a href="#none">강원<em>(1)</em></a>
                                                <div class="depth2">
                                                    <div class="mCustomScrollbar basicCinemaScroll _mCS_7 mCS-autoHide mCS_no_scrollbar" data-mcs-theme="minimal-dark" style="position: relative; overflow: visible;">
                                                        <div id="mCSB_7" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" style="max-height: 753px;" tabindex="0">
                                                            <div id="mCSB_7_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                                                <ul>
                                                                    <li class=""><a href="#none">원주무실</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div id="mCSB_7_scrollbar_vertical" class="mCSB_scrollTools mCSB_7_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: none;">
                                                            <div class="mCSB_draggerContainer">
                                                                <div id="mCSB_7_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; top: 0px;">
                                                                    <div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
                                                                </div>
                                                                <div class="mCSB_draggerRail"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="depth1"><a href="#none">제주<em>(1)</em></a>
                                                <div class="depth2">
                                                    <div class="mCustomScrollbar basicCinemaScroll _mCS_8 mCS-autoHide mCS_no_scrollbar" data-mcs-theme="minimal-dark" style="position: relative; overflow: visible;">
                                                        <div id="mCSB_8" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" style="max-height: 753px;" tabindex="0">
                                                            <div id="mCSB_8_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                                                <ul>
                                                                    <li class="disabled"><a href="#none">서귀포</a></li>
                                                                    <li class=""><a href="#none">제주삼화지구</a></li>
                                                                    <li class="disabled"><a href="#none">제주아라</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div id="mCSB_8_scrollbar_vertical" class="mCSB_scrollTools mCSB_8_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: none;">
                                                            <div class="mCSB_draggerContainer">
                                                                <div id="mCSB_8_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; top: 0px;">
                                                                    <div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
                                                                </div>
                                                                <div class="mCSB_draggerRail"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="article article_movie">
                    <div class="group_top">
                        <h4 class="tit movie_name">영화 선택</h4>
                    </div>
                    <div class="inner">
                        <div class="movie_select_wrap list movieSelect">
                            <div class="mCustomScrollbar movieScroll _mCS_9 mCS-autoHide" data-mcs-theme="minimal-dark" style="position: relative; overflow: visible;">
                                <div id="mCSB_9" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" tabindex="0" style="max-height: none;">
                                    <div id="mCSB_9_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr">
                                        <ul>
                                            <li class="active"><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>1</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/17885_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_12">12세 관람가</span><strong class="tit">이터널스</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>51.2%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>7.2</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.03</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>2</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202110/17864_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_12">12세 관람가</span><strong class="tit">듄</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>13.1%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>8.7</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.10.20</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>3</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18045_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_all">0세 관람가</span><strong class="tit">아담스 패밀리 2</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>8.8%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>7.5</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.10</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>4</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18030_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_15">15세 관람가</span><strong class="tit">장르만 로맨스</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>8.6%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>0.0</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.17</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>5</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/17962_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_18">18세 관람가</span><strong class="tit">강릉</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>7.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>7.4</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.10</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>6</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18010_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_all">0세 관람가</span><strong class="tit">1984 최동원</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>2.4%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>8.7</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.11</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>7</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202109/17458_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_15">15세 관람가</span><strong class="tit">베놈 2: 렛 데어 비 카니지</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>1.6%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>7.7</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.10.13</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>8</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18080_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_15">15세 관람가</span><strong class="tit">귀멸의 칼날: 남매의 연</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>1.6%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>8.5</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.10</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>9</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202110/17994_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_all">0세 관람가</span><strong class="tit">고장난 론</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.7%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>9.3</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.10.27</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>10</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/17965_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_12">12세 관람가</span><strong class="tit">송해 1927</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.7%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>0.0</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.18</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>11</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18028_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_12">12세 관람가</span><strong class="tit">디어 에반 핸슨</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.6%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>0.0</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.17</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>12</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202110/17974_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_all">0세 관람가</span><strong class="tit">바다 탐험대 옥토넛 : 육지수호 대작전</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.6%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>8.7</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.10.27</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>13</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/17972_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_12">12세 관람가</span><strong class="tit">퍼스트 카우</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.2%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>8.3</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.04</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>14</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202110/17720_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_18">18세 관람가</span><strong class="tit">라스트 듀얼: 최후의 결투</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.2%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>9.0</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.10.20</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>15</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/17888_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_all">0세 관람가</span><strong class="tit">귀토-토끼의 팔란</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.2%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>9.8</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.11</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>16</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202004/15359_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_12">12세 관람가</span><strong class="tit">007 노 타임 투 다이</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.1%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>8.5</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.09.29</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>17</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18038_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_12">12세 관람가</span><strong class="tit">나를 잡아줘</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.1%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>6.3</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.11</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>18</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/17838_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_18">18세 관람가</span><strong class="tit">빌리 홀리데이</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.1%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>8.6</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.04</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>19</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18215_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_12">12세 관람가</span><strong class="tit">호빗: 뜻밖의 여정</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.1%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>0.0</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.18</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>20</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18083_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_12">12세 관람가</span><strong class="tit">틱, 틱... 붐!</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.1%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>0.0</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.12</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>21</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18052_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_15">15세 관람가</span><strong class="tit">러브 어페어: 우리가 말하는 것, 우리가 하는 것</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.1%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>7.0</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.11</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>22</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18036_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_15">15세 관람가</span><strong class="tit">나의 끝, 당신의 시작</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>0.0</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.18</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>23</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202109/17811_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_15">15세 관람가</span><strong class="tit">보이스</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>9.0</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.09.15</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>24</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/17914_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_15">15세 관람가</span><strong class="tit">세버그</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>8.8</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.04</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>25</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202110/17992_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_15">15세 관람가</span><strong class="tit">아네트</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>7.0</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.10.27</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>26</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/17983_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_18">18세 관람가</span><strong class="tit">뉴 오더</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>9.1</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.11</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>27</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18104_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_12">12세 관람가</span><strong class="tit">왕십리 김종분</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>0.0</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.11</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>28</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202109/17836_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_all">0세 관람가</span><strong class="tit">용과 주근깨 공주</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>7.9</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.09.29</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>29</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18044_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_15">15세 관람가</span><strong class="tit">태양은 움직이지 않는다</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>7.1</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.10</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>30</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202107/17680_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_all">0세 관람가</span><strong class="tit">극장판 짱구는 못말려: 격돌! 낙서왕국과 얼추 네 명의 용사들</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>9.4</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.09.15</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>31</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202110/17904_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_12">12세 관람가</span><strong class="tit">당신은 믿지 않겠지만</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>7.9</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.10.28</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>32</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202110/18074_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_15">15세 관람가</span><strong class="tit">숏버스 섬뜩행</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>7.2</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.10.28</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>33</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18039_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_15">15세 관람가</span><strong class="tit">싸반</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>9.0</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.11</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>34</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18056_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_12">12세 관람가</span><strong class="tit">아워 미드나잇</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>0.0</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.11</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>35</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202110/17968_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_15">15세 관람가</span><strong class="tit">애프터: 관계의 함정</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>6.8</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.10.27</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>36</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202105/17376_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_all">0세 관람가</span><strong class="tit">영화사취업설명회 By LOCA in 건대(백신패스관)</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>9.7</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.12.04</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>37</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202106/17575_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_all">0세 관람가</span><strong class="tit">영화사취업설명회 By LOCA in 부산(백신패스관)</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>0.0</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.27</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>38</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202106/17370_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_12">12세 관람가</span><strong class="tit">기적</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>9.1</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.09.15</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>39</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202108/17635_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_12">12세 관람가</span><strong class="tit">싱크홀</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>8.3</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.08.11</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>40</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18018_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_15">15세 관람가</span><strong class="tit">크림</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>7.3</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.04</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>41</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202110/17981_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_all">0세 관람가</span><strong class="tit">타다: 대한민국 스타트업의 초상</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>9.1</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.10.14</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a></li>
                                            <li class=""><a href="#none">
                                                    <div class="bx_thm"><span class="rank"><span class="hidden">순위</span><strong>42</strong></span><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/18070_101_1.jpg" alt="포스터" class="mCS_img_loaded"></div>
                                                    <div class="group_infor">
                                                        <div class="bx_tit"><span class="ic_grade gr_15">15세 관람가</span><strong class="tit">프렌치 디스패치</strong></div>
                                                        <dl>
                                                            <dt>예매율</dt>
                                                            <dd><strong>0.0%</strong></dd>
                                                            <dt class="side"><span class="txt_ic_score ty1"><em>평점</em></span></dt>
                                                            <dd><span class="txt_ic_score ty1"><strong>0.0</strong></span></dd>
                                                            <dt>개봉일</dt>
                                                            <dd>2021.11.18</dd>
                                                            <dt class="side day">d -day</dt>
                                                            <dd><strong class="expired"></strong></dd>
                                                        </dl>
                                                    </div>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div id="mCSB_9_scrollbar_vertical" class="mCSB_scrollTools mCSB_9_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: block;">
                                    <div class="mCSB_draggerContainer">
                                        <div id="mCSB_9_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; display: block; height: 258px; max-height: 720px; top: 0px;">
                                            <div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
                                        </div>
                                        <div class="mCSB_draggerRail"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="article article_time">
                    <div class="group_top">
                        <h4 class="tit"><%=LocalDate.now() %>(오늘)</h4>
                    </div>
                    <div class="inner">
                        <div class="date_select_wrap dateReserveWrap">
                            <div class="slide_wrap slide_reserve_date">
                                <ul class="owl-carousel owl-loaded owl-drag">
                                    <div class="owl-stage-outer">
                                        <div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1470px;">
                                        	<%
		                                    LocalDate start = LocalDate.now();
		                                    LocalDate end = start.plusDays(7);
		                                    
		                                    LocalDate next = start.minusDays(1);
		                                    while ((next = next.plusDays(1)).isBefore(end.plusDays(1))) {
												    String dayOfWeek = "";
                                                	switch(next.getDayOfWeek().getValue()) {
	                                                	case 1:
	                                                		dayOfWeek = "월";
	                                                		break;
	                                                	case 2:
	                                                		dayOfWeek = "화";
	                                                		break;
	                                                	case 3:
	                                                		dayOfWeek = "수";
	                                                		break;
	                                                	case 4:
	                                                		dayOfWeek = "목";
	                                                		break;
	                                                	case 5:
	                                                		dayOfWeek = "금";
	                                                		break;
	                                                	case 6:
	                                                		dayOfWeek = "토";
	                                                		break;
	                                                	case 7:
	                                                		dayOfWeek = "일";
	                                                		break;
                                                	}
                                                	if (start.getDayOfMonth() == next.getDayOfMonth()) {
                                                		dayOfWeek = "오늘";
                                                	} %>
		                                   <div class="owl-item active" style="width: 52.5px;">
	                                            <li class="item">
	                                                <%if (dayOfWeek.equals("오늘")) { %>
	                                                	<strong class="month"><%=start.getMonthValue()%>월</strong>
	                                                <%} %>
	                                                <%if (dayOfWeek.equals("일")) { %>
	                                                	<span class="date sun">
	                                                <%} else if (dayOfWeek.equals("토")) { %>
	                                                	<span class="date sat">
	                                                <%} else {%>
	                                                	<span class="date">
	                                                <%} %>
	                                                <label>
	                                                <% if (dayOfWeek.equals("오늘")) { %>
	                                                	<input type="radio" name="radioDate1" data-displayyn="Y" data-playdate=<%=next %> data-isplaydate="Y" data-playweek=<%=dayOfWeek%> checked="checked">
	                                                <% } else {%>
	                                                	<input type="radio" name="radioDate1" data-displayyn="Y" data-playdate=<%=next %> data-isplaydate="Y" data-playweek=<%=dayOfWeek%>>
	                                                <% } %>
	                                                <strong><%=next.getDayOfMonth() %></strong>
                                                	<em><%=dayOfWeek %></em>
                                                	</label>
                                                </span>
                                                </li>
                                            </div>
		                                    <% } %>
                                        </div>
                                    </div>
                                </ul>
                            </div>
                        </div>
                        <ul class="tab_wrap outer sml">
                            <li class="active">
                                <div class="tab_con ty5">
                                    <h5 class="hidden">전체</h5>
                                    <div class="mCustomScrollbar timeScroll _mCS_11 mCS-autoHide mCS_no_scrollbar" data-mcs-theme="minimal-dark" style="position: relative; overflow: visible;">
                                        <div id="mCSB_11" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" style="max-height: none;" tabindex="0">
                                            <div id="mCSB_11_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                                <div class="bx_notice">
                                                    <p>조회 가능한 상영시간이 없습니다.</p>
                                                    <p>조건을 변경해주세요.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="mCSB_11_scrollbar_vertical" class="mCSB_scrollTools mCSB_11_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: none;">
                                            <div class="mCSB_draggerContainer">
                                                <div id="mCSB_11_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
                                                    <div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
                                                </div>
                                                <div class="mCSB_draggerRail"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script>
	    jQuery(document).ready(function() {
	        $(".depth1").on("click", function(event) {
	        	$('.depth1').attr("class", "depth1");
	        	$(this).attr("class","depth1 active");
	        	
	        });
	        $(".depth1").on("click", "li", function(event) {
	        	$('.cinema').attr("class", "cinema");
	        	$(this).attr("class","cinema active");
	        	
	        });
	    });
	</script>
    
</body>

</html>