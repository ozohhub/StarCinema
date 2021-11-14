<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

    <head>
        <title>예매 - 롯데시네마</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">

        <meta id="description" content="Happy Memories 롯데시네마는 최상의 관람 환경과 양질의 켄텐츠로 영화를 통해 고객에게 행복한 기억을 선물합니다.">
        <meta id="Keywords" content="롯데시네마, LOTTE CINEMA, 롯시, 시네마, CINEMA, 영화, 영화관, 극장, 티켓, 박스오피스, Movie, Theater, 예매, 현재상영작, 상영예정작, 개봉영화, 영화예매, 영화예매순위, 영화순위, 상영시간표">
        <link href="https://www.lottecinema.co.kr/NLCHS/favicon.ico?v=1" rel="shortcut icon" type="image/x-icon">
        <script async="" type="text/javascript" src="https://tag-deepad.lpoint.com/cookie?mid=4&amp;cid=381071758.1636073813"></script>
        <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
        <script async="" src="//dsp.dmcmedia.co.kr/selper/js/selperevt.js?ver=0.1.4.1"></script>
        <script src="https://connect.facebook.net/signals/config/233523444404890?v=2.9.48&amp;r=stable" async=""></script>
        <script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
        <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
        <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-164790289-1"></script>
        <script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-PJ6LCKF"></script>
        <script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-K8MP435"></script>
        <script async="" src="https://www.google-analytics.com/analytics.js"></script>
        <script type="text/javascript">
            var mobileKeyWords = new Array('iPhone', 'iPod', 'BlackBerry', 'Android', 'Windows CE', 'LG', 'MOT', 'SAMSUNG', 'SonyEricsson', 'Windows Phone');

            for (var word in mobileKeyWords) {

                if (navigator.userAgent.match(mobileKeyWords[word]) != null) {

                    location.href = "/NLCMW/";

                    break;
                }
            }
        </script>



        <script type="text/javascript">
            var CinemaServerDomain = "https://www.lottecinema.co.kr";
            var EventServerDomain = "https://event.lottecinema.co.kr";
            var CinemaServiceDomain = "";
            var Language = "KR";
            var lottecinemaVodDomain = "https://www.lottecinemavod.co.kr";
            var seechuAgreeMode = ""; //롯데시네마 VOD 동의 호출 경로(main, vod)
            //서비스플랫폼 NLCMW:모바일웹, NLCMS:모바일앱, NLCHS:웹
            var PLATFORM_TYPE = "NLCHS";
            var CHANNEL_TYPE = "HO";
            const headTitle = "바로예매_index";
        </script>
        <script src="https://www.lottecinema.co.kr/NLCHS/Content/js/jquery-1.12.3.min.js"></script>
        <script src="https://www.lottecinema.co.kr/NLCHS/Content/js/jquery.jplayer.min.js"></script>
        <script src="https://www.lottecinema.co.kr/NLCHS/Content/js/jquery.lazy.min.js"></script>
        <script src="https://www.lottecinema.co.kr/NLCHS/Content/js/jquery-ui.min.js"></script>
        <script src="https://www.lottecinema.co.kr/NLCHS/Content/js/jquery.cookie.js"></script>
        <script src="https://www.lottecinema.co.kr/NLCHS/Content/js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="https://www.lottecinema.co.kr/NLCHS/Content/js/owl.carousel-2.3.4-custom.js"></script>
        <script src="https://www.lottecinema.co.kr/NLCHS/Content/js/plugin.js"></script>
        <script src="https://www.lottecinema.co.kr/NLCHS/Content/js/pl_custom.js"></script>
        <script src="https://www.lottecinema.co.kr/NLCHS/Scripts/Library/moment.js"></script>
        <script type="text/javascript" src="https://members.lpoint.com/api/js/lotte.sso.api.js"></script>
        <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

        <script src="https://www.lottecinema.co.kr/NLCHS/Content/js/common.js?v=202111141143"></script>
        <script src="https://www.lottecinema.co.kr/NLCHS/Scripts/common/Cookie.js?v=202111141143"></script>

        <script src="https://www.lottecinema.co.kr/NLCHS/Scripts/Library/jquery.blockUI.min.js"></script>
        <script src="https://www.lottecinema.co.kr/NLCHS/Scripts/Library/React/remarkable.min.js"></script>
        <script src="https://www.lottecinema.co.kr/NLCHS/Scripts/Library/React/axios.min.js"></script>
        <script src="https://www.lottecinema.co.kr/NLCHS/Scripts/common/URLSearchParamsCustom.js"></script>
        <script src="https://www.lottecinema.co.kr/NLCHS/Scripts/common/Util.js?v=202111141143"></script>
        <script src="https://www.lottecinema.co.kr/NLCHS/Scripts/common/Common.js?v=202111141143"></script>

        <script src="https://www.lottecinema.co.kr/NLCHS/Scripts/common/ShareSNS.js?v=202111141143"></script>
        <script src="https://www.lottecinema.co.kr/NLCHS/Scripts/Member/Member.js"></script>
        <script type="text/javascript">
            var MypageCommonQuery = RequestParams(document.location.search); //페이지 파라메터
        </script>

        <!-- Google Tag Manager -->

        <script src="https://www.lottecinema.co.kr/NLCHS/Scripts/common/lcga.js?v=202111141143"></script>
        <!-- Google Tag Manager -->

    </head>
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
                        <ul class="tab_wrap outer"><button type="button" class="tab_tit" style="width: 50%; left: 0%;"><span>전체</span></button>
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
                                                                    <li class="active"><a href="#none">김포공항</a></li>
                                                                    <li class=""><a href="#none">청량리</a></li>
                                                                    <li class=""><a href="#none">홍대입구</a></li>
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
                            <li><button type="button" class="tab_tit" style="width: 50%; left: 50%;"><span>스페셜관</span></button>
                                <div class="tab_con">
                                    <h5 class="hidden">전체</h5>
                                    <div class="cinema_select_wrap cinemaSelect">
                                        <ul>
                                            <li class="depth1 active"><a href="#none">샤롯데<em>(0)</em></a>
                                                <div class="depth2">
                                                    <ul>
                                                        <li class="disabled"><a href="#none">월드타워</a></li>
                                                        <li class="disabled"><a href="#none">동탄</a></li>
                                                        <li class="disabled"><a href="#none">건대입구</a></li>
                                                        <li class="disabled"><a href="#none">에비뉴엘(명동)</a></li>
                                                        <li class="disabled"><a href="#none">김포공항</a></li>
                                                        <li class="disabled"><a href="#none">안산</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li class="depth1"><a href="#none">수퍼플렉스 G<em>(1)</em></a>
                                                <div class="depth2">
                                                    <ul>
                                                        <li class=""><a href="#none">월드타워</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li class="depth1"><a href="#none">수퍼 S<em>(2)</em></a>
                                                <div class="depth2">
                                                    <ul>
                                                        <li class=""><a href="#none">월드타워</a></li>
                                                        <li class=""><a href="#none">건대입구</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li class="depth1"><a href="#none">수퍼플렉스<em>(4)</em></a>
                                                <div class="depth2">
                                                    <ul>
                                                        <li class=""><a href="#none">수지</a></li>
                                                        <li class=""><a href="#none">은평(롯데몰)</a></li>
                                                        <li class=""><a href="#none">상인</a></li>
                                                        <li class=""><a href="#none">광복</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li class="depth1"><a href="#none">수퍼 4D<em>(3)</em></a>
                                                <div class="depth2">
                                                    <ul>
                                                        <li class=""><a href="#none">수완(아울렛)</a></li>
                                                        <li class=""><a href="#none">평촌(범계역)</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li class="depth1"><a href="#none">컬러리움<em>(1)</em></a>
                                                <div class="depth2">
                                                    <ul>
                                                        <li class=""><a href="#none">수원(수원역)</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li class="depth1"><a href="#none">씨네살롱<em>(0)</em></a>
                                                <div class="depth2">
                                                    <ul>
                                                        <li class="disabled"><a href="#none">도곡</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li class="depth1"><a href="#none">씨네패밀리<em>(0)</em></a>
                                                <div class="depth2">
                                                    <ul>
                                                        <li class="disabled"><a href="#none">월드타워</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li class="depth1"><a href="#none">씨네커플<em>(15)</em></a>
                                                <div class="depth2">
                                                    <ul>
                                                        <li class=""><a href="#none">사천</a></li>
                                                        <li class=""><a href="#none">도곡</a></li>
                                                        <li class=""><a href="#none">대전관저</a></li>
                                                        <li class=""><a href="#none">원주무실</a></li>
                                                        <li class=""><a href="#none">은평(롯데몰)</a></li>
                                                        <li class=""><a href="#none">대영</a></li>
                                                        <li class=""><a href="#none">파주운정</a></li>
                                                        <li class=""><a href="#none">청주용암</a></li>
                                                        <li class=""><a href="#none">군산나운</a></li>
                                                        <li class=""><a href="#none">제주삼화지구</a></li>
                                                        <li class=""><a href="#none">의정부민락</a></li>
                                                        <li class=""><a href="#none">오투(부산대)</a></li>
                                                        <li class=""><a href="#none">상인</a></li>
                                                        <li class=""><a href="#none">월드타워</a></li>
                                                        <li class=""><a href="#none">광복</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li class="depth1"><a href="#none">씨네비즈<em>(2)</em></a>
                                                <div class="depth2">
                                                    <ul>
                                                        <li class=""><a href="#none">안양(안양역)</a></li>
                                                        <li class=""><a href="#none">울산(백화점)</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li class="depth1"><a href="#none">씨네컴포트(리클라이너)<em>(6)</em></a>
                                                <div class="depth2">
                                                    <ul>
                                                        <li class=""><a href="#none">동탄</a></li>
                                                        <li class=""><a href="#none">사천</a></li>
                                                        <li class=""><a href="#none">제주삼화지구</a></li>
                                                        <li class=""><a href="#none">용인역북</a></li>
                                                        <li class=""><a href="#none">수지</a></li>
                                                        <li class=""><a href="#none">대전센트럴</a></li>
                                                    </ul>
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
                        <h4 class="tit">2021-11-12(오늘)</h4>
                    </div>
                    <div class="inner">
                        <div class="date_select_wrap dateReserveWrap">
                            <div class="slide_wrap slide_reserve_date">
                                <ul class="owl-carousel owl-loaded owl-drag">
                                    <div class="owl-stage-outer">
                                        <div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1470px;">
                                            <div class="owl-item active" style="width: 52.5px;">
                                                <li class="item"><strong class="month">11월</strong><span class="date"><label><input type="radio" name="radioDate1" data-displayyn="Y" data-playdate="2021-11-12" data-isplaydate="Y" data-playweek="오늘" checked=""><strong>12</strong><em>오늘</em></label></span></li>
                                            </div>
                                            <div class="owl-item active" style="width: 52.5px;">
                                                <li class="item"><span class="date sat"><label><input type="radio" name="radioDate1" data-displayyn="Y" data-playdate="2021-11-13" data-isplaydate="Y" data-playweek="토"><strong>13</strong><em>토</em></label></span></li>
                                            </div>
                                            <div class="owl-item active" style="width: 52.5px;">
                                                <li class="item"><span class="date sun"><label><input type="radio" name="radioDate1" data-displayyn="Y" data-playdate="2021-11-14" data-isplaydate="Y" data-playweek="일"><strong>14</strong><em>일</em></label></span></li>
                                            </div>
                                            <div class="owl-item active" style="width: 52.5px;">
                                                <li class="item"><span class="date"><label><input type="radio" name="radioDate1" data-displayyn="Y" data-playdate="2021-11-15" data-isplaydate="Y" data-playweek="월"><strong>15</strong><em>월</em></label></span></li>
                                            </div>
                                            <div class="owl-item active" style="width: 52.5px;">
                                                <li class="item"><span class="date"><label><input type="radio" name="radioDate1" data-displayyn="Y" data-playdate="2021-11-16" data-isplaydate="Y" data-playweek="화"><strong>16</strong><em>화</em></label></span></li>
                                            </div>
                                            <div class="owl-item active" style="width: 52.5px;">
                                                <li class="item"><span class="date"><label><input type="radio" name="radioDate1" data-displayyn="Y" data-playdate="2021-11-17" data-isplaydate="Y" data-playweek="수"><strong>17</strong><em>수</em></label></span></li>
                                            </div>
                                            <div class="owl-item active" style="width: 52.5px;">
                                                <li class="item"><span class="date"><label><input type="radio" name="radioDate1" data-displayyn="Y" data-playdate="2021-11-18" data-isplaydate="Y" data-playweek="목"><strong>18</strong><em>목</em></label></span></li>
                                            </div>
                                            <div class="owl-item active" style="width: 52.5px;">
                                                <li class="item"><span class="date"><label><input type="radio" name="radioDate1" data-displayyn="Y" data-playdate="2021-11-19" data-isplaydate="Y" data-playweek="금"><strong>19</strong><em>금</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><span class="date sat"><label><input type="radio" name="radioDate1" data-displayyn="Y" data-playdate="2021-11-20" data-isplaydate="Y" data-playweek="토"><strong>20</strong><em>토</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><span class="date sun"><label><input type="radio" name="radioDate1" data-displayyn="Y" data-playdate="2021-11-21" data-isplaydate="Y" data-playweek="일"><strong>21</strong><em>일</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><span class="date"><label><input type="radio" name="radioDate1" data-displayyn="Y" data-playdate="2021-11-22" data-isplaydate="Y" data-playweek="월"><strong>22</strong><em>월</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><span class="date"><label><input type="radio" name="radioDate1" data-displayyn="Y" data-playdate="2021-11-23" data-isplaydate="Y" data-playweek="화"><strong>23</strong><em>화</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><span class="date disabled"><label><input type="radio" name="radioDate1" data-displayyn="N" data-playdate="2021-11-24" data-isplaydate="N" data-playweek="수"><strong>24</strong><em>수</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><span class="date disabled"><label><input type="radio" name="radioDate1" data-displayyn="N" data-playdate="2021-11-25" data-isplaydate="N" data-playweek="목"><strong>25</strong><em>목</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><span class="date disabled"><label><input type="radio" name="radioDate1" data-displayyn="N" data-playdate="2021-11-26" data-isplaydate="N" data-playweek="금"><strong>26</strong><em>금</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><span class="date sat"><label><input type="radio" name="radioDate1" data-displayyn="Y" data-playdate="2021-11-27" data-isplaydate="Y" data-playweek="토"><strong>27</strong><em>토</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><span class="date sun disabled"><label><input type="radio" name="radioDate1" data-displayyn="N" data-playdate="2021-11-28" data-isplaydate="N" data-playweek="일"><strong>28</strong><em>일</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><span class="date disabled"><label><input type="radio" name="radioDate1" data-displayyn="N" data-playdate="2021-11-29" data-isplaydate="N" data-playweek="월"><strong>29</strong><em>월</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><span class="date disabled"><label><input type="radio" name="radioDate1" data-displayyn="N" data-playdate="2021-11-30" data-isplaydate="N" data-playweek="화"><strong>30</strong><em>화</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><strong class="month">12월</strong><span class="date disabled"><label><input type="radio" name="radioDate1" data-displayyn="N" data-playdate="2021-12-01" data-isplaydate="N" data-playweek="수"><strong>1</strong><em>수</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><span class="date disabled"><label><input type="radio" name="radioDate1" data-displayyn="N" data-playdate="2021-12-02" data-isplaydate="N" data-playweek="목"><strong>2</strong><em>목</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><span class="date disabled"><label><input type="radio" name="radioDate1" data-displayyn="N" data-playdate="2021-12-03" data-isplaydate="N" data-playweek="금"><strong>3</strong><em>금</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><span class="date sat"><label><input type="radio" name="radioDate1" data-displayyn="Y" data-playdate="2021-12-04" data-isplaydate="Y" data-playweek="토"><strong>4</strong><em>토</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><span class="date sun disabled"><label><input type="radio" name="radioDate1" data-displayyn="N" data-playdate="2021-12-05" data-isplaydate="N" data-playweek="일"><strong>5</strong><em>일</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><span class="date disabled"><label><input type="radio" name="radioDate1" data-displayyn="N" data-playdate="2021-12-06" data-isplaydate="N" data-playweek="월"><strong>6</strong><em>월</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><span class="date disabled"><label><input type="radio" name="radioDate1" data-displayyn="N" data-playdate="2021-12-07" data-isplaydate="N" data-playweek="화"><strong>7</strong><em>화</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><span class="date disabled"><label><input type="radio" name="radioDate1" data-displayyn="N" data-playdate="2021-12-08" data-isplaydate="N" data-playweek="수"><strong>8</strong><em>수</em></label></span></li>
                                            </div>
                                            <div class="owl-item" style="width: 52.5px;">
                                                <li class="item"><span class="date disabled"><label><input type="radio" name="radioDate1" data-displayyn="N" data-playdate="2021-12-09" data-isplaydate="N" data-playweek="목"><strong>9</strong><em>목</em></label></span></li>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-nav"><button type="button" role="presentation" class="owl-prev disabled"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div>
                                    <div class="owl-dots disabled"></div>
                                </ul>
                            </div>
                        </div>
                        <ul class="tab_wrap outer sml">
                            <li class="active"><button type="button" class="tab_tit" style="width: 16.6667%; left: 0%;"><span>전체</span></button>
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
</body>

</html>