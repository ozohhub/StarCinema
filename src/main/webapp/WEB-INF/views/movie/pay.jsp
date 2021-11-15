<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>롯지브이</title>
<script src="${pageContext.request.contextPath}/resources/js/movie.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css" />
</head>

<body>
    <div id="contents" class="contents_full contents_reserve">
        <div class="wrap_reserve ">
			<h2 class="hidden">예매하기</h2>
					<div class="section_step_tit">
		                <ul style="padding-top: 700px;">
		                    <li class="step01 prev" style="margin-left: 0">
		                    	<a style="cursor: default;">
		                    		<strong class="tit"><span>01</span><br>상영시간</strong>
		                        </a>
		                    </li>
		                    <li class="step02" style="background-color: #333;">
							    <a href="#" style="color: #fff;"><strong class="tit"><span>02</span><br>인원/좌석</strong>
								</a>
						    </li>
		                    <li class="step03 active">
		                    	<a href="#"><strong class="tit"><span>03</span><br>결제</strong>
						    	</a>
						    </li>
		                    <li>
		                    	<a style="cursor: default;">
		                    		<strong class="tit"><span>04</span><br>결제완료</strong>
		                    	</a>
		                    </li>
		                </ul>
					</div>

                <div id="reserveStep01" class="section_step_con step01 ">
                    <h3 class="hidden">상영시간</h3>
                </div>
                <div id="reserveStep02" class="section_step_con step02 ">
                    <h3 class="hidden">인원/좌석</h3>
                </div>
                <div id="reserveStep03" class="section_step_con step03 active">
                    <h3 class="hidden">결제</h3>
                    <div class="article article_sum_infor">
                        <div class="group_top">
                            <h4 class="tit">예매정보</h4>
                        </div>
                        <div class="inner">
                            <div class="movie_infor new2020">
                                <span class="thm">
                                    <img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/17885_104_1.jpg" alt="이터널스">
                                </span>
                                <strong class="tit"><span class="ic_grade gr_12"></span>&nbsp;이터널스(디지털)</strong>
                                <dl class="dlist_infor">
                                    <dt>일시</dt>
                                    <dd><strong>2021-11-14 (일) 16:10 ~ 18:55</strong></dd>
                                    <dt>영화관</dt>
                                    <dd>가산디지털 5관 - 2D</dd>
                                    <dt>인원</dt>
                                    <dd>성인1</dd>
                                </dl>
                            </div>
                            <div class="seat_infor">
                                <dl class="dlist_infor">
                                    <dt>좌석</dt>
                                    <dd><strong>E6</strong></dd>
                                </dl>
                            </div>
                            <div class="addprodlistwrap">
                                <h5 class="tit">추가상품 구매</h5>
                                <div class="mCustomScrollbar _mCS_3 mCS-autoHide mCS_no_scrollbar" data-mcs-theme="minimal-dark" id="mCustomScrollbar1" style="position: relative; overflow: visible;">
                                    <div id="mCSB_3" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" style="max-height: none;" tabindex="0">
                                        <div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                            <ul class="addprodlist">
                                                <li><a href="#">
                                                        <div class="pay_movie_infor">
                                                            <div class="img_product">
                                                                <span class="thm">
                                                                    <img src="${pageContext.request.contextPath}/resources/images/movie/photoTicket.png" alt="포토티켓" class="mCS_img_loaded">
                                                                </span>
                                                            </div>
                                                            <div class="bx_infor">
                                                                <div class="badge_wrap"></div><strong class="tit">포토티켓</strong>
                                                                <div class="between_txt"><span><span class="pay">1,000</span> 원</span></div>
                                                            </div>
                                                        </div>
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: none;">
                                        <div class="mCSB_draggerContainer">
                                            <div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
                                                <div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
                                            </div>
                                            <div class="mCSB_draggerRail"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="article article_pay_method">
                        <div class="group_top">
                            <h4 class="tit">결제수단</h4><button type="button" class="btn_txt_reset" onclick="reset();">초기화</button>
                        </div>
                        <div class="inner">
                            <div class="mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" data-mcs-theme="minimal-dark" style="position: relative; overflow: visible;">
                                <div id="mCSB_1" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" style="max-height: none;" tabindex="0">
                                    <div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                        <div class="group_discount" style="display: block;">
                                            <h3 class="tit_payment">할인/포인트</h3>
                                            <div class="wrap_coupon">
                                                <div class="bx_cate">
                                                    <ul class="list_pay_item cate4">
                                                        <li id="point_vip"><button class="">VIP/Friends<span class="txt_cnt">0</span></button></li>
                                                        <li id="point_admission"><button class="">관람권<span class="txt_cnt">0</span></button></li>
                                                        <li id="point_discount"><button class="">할인권<span class="txt_cnt">0</span></button></li>
                                                        <li class="mline" id="point_etc"><button class="">제휴포인트/할인</button></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="toggle_wrap no couplechk" style="display: none;"></div>
                                        </div>
                                        <div class="group_payment">
                                            <h5 class="tit_payment">최종 결제수단</h5>
                                            <div class="bx_cate">
                                                <ul class="list_pay_item cate6">
                                                    <li><button type="button" class="cate1 ">신용카드</button></li>
                                                    <li><button type="button" class="cate3 ">간편결제</button></li>
                                                    <li><button type="button" class="cate5 ty2 ">내통장결제</button></li>
                                                    <li><button type="button" class="cate4 ty2 ">휴대폰</button></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: none;">
                                    <div class="mCSB_draggerContainer">
                                        <div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
                                            <div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
                                        </div>
                                        <div class="mCSB_draggerRail"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="article article_payment">
                        <div class="group_top">
                            <h4 class="tit">결제하기</h4>
                        </div>
                        <div class="inner">
                            <div class="payment_sum_wrap">
                                <dl>
                                    <dt>상품금액</dt>
                                    <dd><strong>14,000</strong>원</dd>
                                </dl>
                                <dl>
                                    <dt>할인금액</dt>
                                    <dd>-<strong>0</strong>원</dd>
                                </dl>
                                <dl>
                                    <dt>결제금액</dt>
                                    <dd>총<strong>14,000</strong>원</dd>
                                </dl><a href="#none" class="btn_col1 btn_confirm">결제하기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="reserveStep04" class="section_step_con step04 ">
                    <h3 class="hidden">결제완료</h3>
                </div>
			</div>
        </div>
    </div>

    <!-- popup : 추가상품구매 -->
    <div id="layerAddprodbuy" class="layer_wrap layer_pay_addprodbuy_infor"></div>
    
    <!-- //popup : 추가상품구매 -->
	<div id="layerNoticePopup" class="layer_wrap layer_Combi_Notice"></div>


    <script src="/NLCHS/Scripts/common/modal.js"></script>
    <script src="/NLCHS/Content/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="/NLCHS/Content/js/jquery.mask.min.js"></script>
    <script src="/NLCHS/Scripts/common/LcCommon.js?v=202111140152"></script>
    <script src="/NLCHS/Scripts/Dist/OrderSettlementEx.bundle.js?v= 202111140152"></script>
    <script src="/NLCHS/Scripts/common/seat.js?v=202111140152"></script>


    <form id="settleBankForm" name="settleBankForm" action="" target="x_frame" method="POST">
        <input type="hidden" id="hdInfo" name="hdInfo" value="">
        <input type="hidden" id="apiVer" name="apiVer" value="">
        <input type="hidden" id="processType" name="processType" value="">
        <input type="hidden" id="mercntId" name="mercntId" value="">
        <input type="hidden" id="ordNo" name="ordNo" value="">
        <input type="hidden" id="trDay" name="trDay" value="">
        <input type="hidden" id="trTime" name="trTime" value="">
        <input type="hidden" id="trPrice" name="trPrice" value="">
        <input type="hidden" id="taxPrice" name="taxPrice" value="">
        <input type="hidden" id="vatPrice" name="vatPrice" value="">
        <input type="hidden" id="dutyFreePrice" name="dutyFreePrice" value="">
        <input type="hidden" id="productNm" name="productNm" value="">
        <input type="hidden" id="dutyFreeYn" name="dutyFreeYn" value="">
        <input type="hidden" id="shopNm" name="shopNm" value="">
        <input type="hidden" id="cphoneNo" name="cphoneNo" value="">
        <input type="hidden" id="email" name="email" value="">
        <input type="hidden" id="callbackUrl" name="callbackUrl" value="">
        <input type="hidden" id="cancelUrl" name="cancelUrl" value="">
        <input type="hidden" id="regularpayYn" name="regularpayYn" value="">
        <input type="hidden" id="mercntParam1" name="mercntParam1" value="">
        <input type="hidden" id="mercntParam2" name="mercntParam2" value="">
        <input type="hidden" id="signature" name="signature" value="">
    </form>

    <script src="/NLCHS/Scripts/Dist/Pagination.bundle.js?v=202111140152"></script>
    <script src="/NLCHS/Scripts/Dist/LayoutTopOfTop.bundle.js"></script>
    <script src="/NLCHS/Scripts/Dist/LayoutSkipNav.bundle.js?v=202111140152"></script>
    <script src="/NLCHS/Scripts/Dist/LayoutHeaderMenu.bundle.js?v=202111140152"></script>
    <script src="/NLCHS/Scripts/Dist/LayoutBanner.bundle.js?v=202111140152"></script>
    <script src="/NLCHS/Scripts/Dist/LayoutFooter.bundle.js?v=202111140152"></script>

    <script src="/NLCHS/Scripts/Dist/LayoutBannerReserve.bundle.js?v=202111140152"></script>





    <script>
        if (document.readyState == "complete") {
            document.getElementById("loading").classList.remove('loader');
            document.getElementById("loading").classList.remove('loader-bouncing');
            document.getElementById("loading").classList.remove('is-active');
        }
    </script>


    <iframe title="교차프레임" src="https://www.lottecinema.co.kr/NLCHS/crossd_iframe.html" style="position: absolute; width: 1px; height: 1px; left: -9999px;"></iframe><iframe title="교차프레임" src="https://www.lottecinema.co.kr/NLCHS/crossd_iframe.html" style="position: absolute; width: 1px; height: 1px; left: -9999px;"></iframe><iframe title="교차프레임" src="https://event.lottecinema.co.kr/NLCHS/crossd_iframe.html" style="position: absolute; width: 1px; height: 1px; left: -9999px;"></iframe><iframe title="교차프레임" src="https://event.lottecinema.co.kr/NLCHS/crossd_iframe.html" style="position: absolute; width: 1px; height: 1px; left: -9999px;"></iframe><iframe title="교차프레임" src="https://www.lottecinema.co.kr/NLCHS/crossd_iframe.html" style="position: absolute; width: 1px; height: 1px; left: -9999px;"></iframe><iframe title="교차프레임" src="https://www.lottecinema.co.kr/NLCHS/crossd_iframe.html" style="position: absolute; width: 1px; height: 1px; left: -9999px;"></iframe><iframe title="교차프레임" src="https://event.lottecinema.co.kr/NLCHS/crossd_iframe.html" style="position: absolute; width: 1px; height: 1px; left: -9999px;"></iframe><iframe title="교차프레임" src="https://event.lottecinema.co.kr/NLCHS/crossd_iframe.html" style="position: absolute; width: 1px; height: 1px; left: -9999px;"></iframe>
    <script type="text/javascript" id="">
        var __selperAccountId = "6105da92-8851-11ea-a969-70106f4bafe6",
            __selperFacebookPixelId = ["233523444404890"],
            __selperGoogleAnalyticsMeasurementId = ["UA-164790289-1"],
            __selperSellerGoogleAnalyticsMeasurementId = "",
            __selperSellerGoogleAnalyticsMeasurementIds = {
                16790: "UA-161846195-15",
                16827: "UA-161846195-18"
            };

        function __getSelperCookie(a) {
            a += "\x3d";
            for (var c = document.cookie.split(";"), d = 0; d < c.length; d++) {
                for (var b = c[d];
                    " " == b.charAt(0);) b = b.substring(1, b.length);
                if (0 == b.indexOf(a)) return b.substring(a.length, b.length)
            }
            return null
        }

        function fetchSelperClassTagValue(a) {
            return "object" == typeof a[0] ? "" == a[0].innerText ? "string" == typeof a[0].innerHTML ? a[0].innerHTML : "" : a[0].innerText : ""
        }

        function fetchSelperClassTagValues(a) {
            var c = [];
            if (Array.isArray(a))
                for (var d = a.length, b = 0; b < d; b++) {
                    var e = a[b];
                    "" == e.innerText ? "string" == typeof e.innerHTML && c.push(e.innerHTML) : c.push(e.innerText)
                }
            return c
        }

        function convertToNumberSelperTagValue(a) {
            if (isNaN(a)) {
                var c = /[^0-9\.]/gi;
                a = a.replace(c, "");
                a = isNaN(a) ? 1 : a
            }
            return Number(a)
        }

        function __fetchSelperParams() {
            for (var a = document.location.search.split("+").join(" "), c = {}, d, b = /[?&]?([^=]+)=([^&]*)/g; d = b.exec(a);) c[decodeURIComponent(d[1])] = decodeURIComponent(d[2]);
            return c
        }
        var __selperEventType = "",
            __selperOstype = "",
            __hasSelperProductInformation = !1,
            __selperProducts = [],
            params = __fetchSelperParams(),
            pathname = document.location.pathname;
        if ("/NLCHS/Movie/MovieDetailView" == pathname) {
            if ("string" == typeof params.movie) {
                var movieId = params.movie;
                __selperEventType = "ViewContent";
                var imageUrl = "",
                    movieName = "",
                    productType1 = "",
                    __selperDetailTopWraps = document.getElementsByClassName("detail_top_wrap");
                if ("object" == typeof __selperDetailTopWraps && 1 == __selperDetailTopWraps.length) {
                    var __selperDetailTopWrap = __selperDetailTopWraps[0],
                        __selperPosterInfos = __selperDetailTopWrap.getElementsByClassName("poster_info");
                    if ("object" == typeof __selperPosterInfos &&
                        0 < __selperPosterInfos.length) {
                        var __selperPosterInfo = __selperPosterInfos[0],
                            __selperPosterInfoImgs = __selperPosterInfo.getElementsByTagName("img");
                        "object" == typeof __selperPosterInfoImgs && 0 < __selperPosterInfoImgs.length && (imageUrl = __selperPosterInfoImgs[0].src)
                    }
                    var __selperTitInfos = __selperDetailTopWrap.getElementsByClassName("tit_info");
                    if ("object" == typeof __selperTitInfos && 0 < __selperTitInfos.length) {
                        var __selperTitInfo = __selperTitInfos[0],
                            __selperTitInfoStrongs = __selperTitInfo.getElementsByTagName("strong");
                        "object" == typeof __selperTitInfoStrongs && 0 < __selperTitInfoStrongs.length && (movieName = __selperTitInfoStrongs[0].innerText)
                    }
                    var __selperDetailInfo2s = __selperDetailTopWrap.getElementsByClassName("detail_info2");
                    if ("object" == typeof __selperDetailInfo2s && 0 < __selperDetailInfo2s.length) {
                        var __selperDetailInfo2 = __selperDetailInfo2s[0].getElementsByTagName("em");
                        "object" == typeof __selperDetailInfo2 && 0 < __selperDetailInfo2.length && (productType1 = __selperDetailInfo2[1].innerText)
                    }
                }
                var description = "",
                    __selperMoviTabInfo1s =
                    document.getElementsByClassName("movi_tab_info1");
                if ("object" == typeof __selperMoviTabInfo1s && 0 < __selperMoviTabInfo1s.length) {
                    var __selperTxtInfos = __selperMoviTabInfo1s[0].getElementsByClassName("txt_info");
                    "object" == typeof __selperTxtInfos && 0 < __selperTxtInfos.length && (description = __selperTxtInfos[0].innerText)
                }
                __selperProducts.push({
                    id: movieId,
                    basePrice: 13E3,
                    salePrice: 13E3,
                    shippingPrice: 0,
                    currency: "KRW",
                    name: movieName,
                    productType1: productType1,
                    orderNo: "",
                    quantity: 1,
                    description: description,
                    imageUrl: imageUrl
                })
            }
        } else if ("/NLCMS/Movie/MovieDetailView" ==
            pathname || "/NLCMW/movie/moviedetailview" == pathname || "/NLCMS/movie/moviedetailview" == pathname || "/nlcms/movie/moviedetailview" == pathname.toLowerCase()) {
            if ("string" == typeof params.movie) {
                movieId = params.movie;
                __selperEventType = "ViewContent";
                productType1 = movieName = imageUrl = "";
                var __selperMovieDetailSummaris = document.getElementsByClassName("movie_detail_summary");
                if ("object" == typeof __selperMovieDetailSummaris && 1 == __selperMovieDetailSummaris.length) {
                    var __selperMovieDetailSummary = __selperMovieDetailSummaris[0],
                        __selperThms = __selperMovieDetailSummary.getElementsByClassName("thm");
                    if ("object" == typeof __selperThms && 0 < __selperThms.length) {
                        var __selperThmImgs = __selperThms[0].getElementsByTagName("img");
                        "object" == typeof __selperThmImgs && 0 < __selperThmImgs.length && (imageUrl = __selperThmImgs[0].src)
                    }
                    var __selperBxInfors = __selperMovieDetailSummary.getElementsByClassName("bx_infor");
                    if ("object" == typeof __selperBxInfors && 0 < __selperBxInfors.length) {
                        var __selperBxInfor = __selperBxInfors[0],
                            __selperBxInforTits = __selperBxInfor.getElementsByClassName("tit");
                        "object" == typeof __selperBxInforTits && 0 < __selperBxInforTits.length && (movieName = __selperBxInforTits[0].innerText);
                        var __selperBxInforTxtGeneres = __selperBxInfor.getElementsByClassName("txt_genre");
                        "object" == typeof __selperBxInforTxtGeneres && 0 < __selperBxInforTxtGeneres.length && (productType1 = __selperBxInforTxtGeneres[0].innerText)
                    }
                }
                __selperProducts.push({
                    id: movieId,
                    basePrice: 13E3,
                    salePrice: 13E3,
                    shippingPrice: 0,
                    currency: "KRW",
                    name: movieName,
                    productType1: productType1,
                    orderNo: "",
                    quantity: 1,
                    description: "",
                    imageUrl: imageUrl
                })
            }
        } else if ("/NLCHS/ticketing" == pathname) "string" == typeof params.movieCd && (movieId = params.movieCd, __selperEventType = "AddToCart", __selperProducts.push({
            id: movieId,
            basePrice: 13E3,
            salePrice: 13E3,
            shippingPrice: 0,
            currency: "KRW",
            name: "",
            productType1: "",
            orderNo: "",
            quantity: 1,
            description: "",
            imageUrl: ""
        }));
        else if ("/NLCMW/ticketing" == pathname || "/NLCMS/ticketing" == pathname) "string" == typeof params.movieCd && (movieId = params.movieCd, __selperEventType = "AddToCart", __selperProducts.push({
            id: movieId,
            basePrice: 13E3,
            salePrice: 13E3,
            shippingPrice: 0,
            currency: "KRW",
            name: "",
            productType1: "",
            orderNo: "",
            quantity: 1,
            description: "",
            imageUrl: ""
        }));
        else if ("/NLCHS/Ticketing/PaymentResult" == pathname || "/nlchs/ticketing/paymentresult" == pathname.toLowerCase()) {
            var orderNo = movieId = "",
                __selperReserveResultWraps = document.getElementsByClassName("reserve_result_wrap");
            if ("object" == typeof __selperReserveResultWraps && 0 < __selperReserveResultWraps.length) {
                var __selperBxThms = __selperReserveResultWraps[0].getElementsByClassName("bx_thm");
                if ("object" == typeof __selperBxThms && 0 < __selperBxThms.length) {
                    var __selperBxThm = __selperBxThms[0],
                        __selperBxThmImgs = __selperBxThm.getElementsByTagName("img");
                    if ("object" == typeof __selperBxThmImgs && 0 < __selperBxThmImgs.length) {
                        var __selperBxThmImgSrc = __selperBxThmImgs[0].src,
                            imgName = __selperBxThmImgSrc.substring(__selperBxThmImgSrc.lastIndexOf("/") + 1, __selperBxThmImgSrc.length);
                        movieId = imgName.substring(0, imgName.indexOf("_"))
                    }
                }
                var __selperGroupInfors = __selperReserveResultWraps[0].getElementsByClassName("group_infor");
                if ("object" == typeof __selperGroupInfors && 0 < __selperGroupInfors.length) {
                    var __selperTxtNums = __selperGroupInfors[0].getElementsByClassName("txt_num");
                    "object" == typeof __selperTxtNums && 0 < __selperTxtNums.length && (orderNo = __selperTxtNums[0].innerText)
                }
            }
            var basePrice = 0,
                salePrice = 0,
                __selperPaymentWraps = document.getElementsByClassName("payment_wrap");
            if ("object" == typeof __selperPaymentWraps && 0 < __selperPaymentWraps.length) {
                var __selperGroupPriceCase1s = __selperPaymentWraps[0].getElementsByClassName("group_price case1");
                if ("object" == typeof __selperGroupPriceCase1s && 0 < __selperGroupPriceCase1s.length) {
                    var __selperStrongs = __selperGroupPriceCase1s[0].getElementsByTagName("strong");
                    "object" == typeof __selperStrongs && 0 < __selperStrongs.length && (basePrice = convertToNumberSelperTagValue(__selperStrongs[0].innerText))
                }
                var __selperGroupPriceCase3s = __selperPaymentWraps[0].getElementsByClassName("group_price case3");
                "object" == typeof __selperGroupPriceCase3s && 0 < __selperGroupPriceCase3s.length && (__selperStrongs = __selperGroupPriceCase3s[0].getElementsByTagName("strong"),
                    "object" == typeof __selperStrongs && 0 < __selperStrongs.length && (salePrice = convertToNumberSelperTagValue(__selperStrongs[0].innerText)))
            }
            "" != movieId && (__selperEventType = "Purchase", __selperProducts.push({
                id: movieId,
                basePrice: basePrice,
                salePrice: salePrice,
                shippingPrice: 0,
                currency: "KRW",
                name: "",
                productType1: "",
                orderNo: orderNo,
                quantity: 1,
                description: "",
                imageUrl: ""
            }))
        } else if ("/NLCMW/MyCinema/BaroTicketSolo" == pathname || "/NLCMS/MyCinema/BaroTicketSolo" == pathname || "/nlcms/mycinema/baroticketsolo" == pathname.toLowerCase()) {
            movieId =
                "";
            "string" == typeof params.TransNo && (orderNo = params.TransNo);
            var __selperPosterImg = document.getElementById("posterImg");
            if ("object" == typeof __selperPosterImg) {
                var __selperPosterImgSrc = __selperPosterImg.src;
                imgName = __selperPosterImgSrc.substring(__selperPosterImgSrc.lastIndexOf("/") + 1, __selperPosterImgSrc.length);
                movieId = imgName.substring(0, imgName.indexOf("_"))
            }
            orderNo = "";
            var __selperTicketnums = document.getElementsByClassName("ticketnum");
            if ("object" == typeof __selperTicketnums && 0 < __selperTicketnums.length) {
                var __selperTicketnum =
                    __selperTicketnums[0];
                orderNo = __selperTicketnum.innerText
            }
            var quantity = 0;
            salePrice = 0;
            var __selperTkSeats = document.getElementsByClassName("tk_seat");
            if ("object" == typeof __selperTkSeats && 0 < __selperTkSeats.length)
                for (var __selperTkSeatList = __selperTkSeats[0].getElementsByTagName("li"), __selperTkSeatListSize = __selperTkSeatList.length, i = 0; i < __selperTkSeatListSize; i++) {
                    var __selperTkSeat = __selperTkSeatList[i],
                        __selperQuantity = convertToNumberSelperTagValue(__selperTkSeat.innerText);
                    quantity += __selperQuantity;
                    __selperTkSeat.innerText.includes("\uc131\uc778") ? salePrice += 13E3 * __selperQuantity : __selperTkSeat.innerText.includes("\uccad\uc18c\ub144") ? salePrice += 1E4 * __selperQuantity : __selperTkSeat.innerText.includes("\uc2dc\ub2c8\uc5b4") ? salePrice += 5E3 * __selperQuantity : __selperTkSeat.innerText.includes("\uc7a5\uc560\uc778") && (salePrice += 5E3 * __selperQuantity)
                }
            "" != movieId && (__selperEventType = "Purchase", __selperProducts.push({
                id: movieId,
                basePrice: salePrice,
                salePrice: salePrice,
                shippingPrice: 0,
                currency: "KRW",
                name: "",
                productType1: "",
                orderNo: orderNo,
                quantity: 1,
                description: "",
                imageUrl: ""
            }))
        }
        0 < __selperProducts.length && (__hasSelperProductInformation = !0);
        var __selperGoogleAnalyticsItems = [],
            __selperContnets = [],
            __selperItems = [],
            __selperTotalSalePrice = 0,
            __selperProductOrderNo = "";
        if (__hasSelperProductInformation)
            for (i = 0; i < __selperProducts.length; i++) {
                var product = __selperProducts[i],
                    __selperGoogleAnalyticsItem = {},
                    __selperContnet = {},
                    __selperItem = {};
                "string" == typeof product.id && (__selperGoogleAnalyticsItem.id = product.id, __selperContnet.id = product.id, __selperItem.id = product.id);
                "number" == typeof product.quantity ? (__selperGoogleAnalyticsItem.quantity = product.quantity, __selperContnet.quantity = product.quantity, __selperItem.quantity = product.quantity) : (__selperGoogleAnalyticsItem.quantity =
                    1, __selperContnet.quantity = 1, __selperItem.quantity = 1);
                "number" == typeof product.salePrice ? (__selperGoogleAnalyticsItem.price = product.salePrice, __selperContnet.item_price = product.salePrice, __selperItem.price = product.salePrice, __selperTotalSalePrice += product.salePrice) : "number" == typeof product.basePrice && (__selperGoogleAnalyticsItem.price = product.basePrice, __selperContnet.item_price = product.basePrice, __selperItem.price = product.basePrice, __selperTotalSalePrice += product.basePrice);
                "string" == typeof product.name &&
                    (__selperGoogleAnalyticsItem.name = product.name, __selperItem.name = product.name);
                "string" == typeof product.orderNo && (__selperProductOrderNo = product.orderNo);
                __selperGoogleAnalyticsItems.push(__selperGoogleAnalyticsItem);
                __selperContnets.push(__selperContnet);
                __selperItems.push(__selperItem)
            };
    </script>


    <script type="text/javascript" id="">
        ! function(f, c, d, e, g, a, b) {
            a = c.createElement(d);
            a.async = !0;
            a.src = e;
            b = c.getElementsByTagName(d)[0];
            b.parentNode.insertBefore(a, b)
        }(window, document, "script", "https://www.googletagmanager.com/gtag/js?id\x3d" + __selperGoogleAnalyticsMeasurementId[0]);
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments)
        }
        gtag("js", new Date);
    </script>

    <script type="text/javascript" id="">
        for (var i = 0; i < __selperGoogleAnalyticsMeasurementId.length; i++) gtag("config", __selperGoogleAnalyticsMeasurementId[i]);
        for (i = 0; i < __selperProducts.length; i++) {
            var __selperProduct = __selperProducts[i];
            "string" == typeof __selperSellerGoogleAnalyticsMeasurementIds[__selperProduct.id] && (__selperSellerGoogleAnalyticsMeasurementId = __selperSellerGoogleAnalyticsMeasurementIds[__selperProduct.id], gtag("config", __selperSellerGoogleAnalyticsMeasurementId))
        }
        switch (__selperEventType) {
            case "ViewContent":
                __hasSelperProductInformation && (gtag("event", "view_item", {
                    send_to: __selperGoogleAnalyticsMeasurementId,
                    value: __selperTotalSalePrice,
                    currency: "KRW",
                    items: __selperGoogleAnalyticsItems
                }), "" != __selperSellerGoogleAnalyticsMeasurementId && gtag("event", "view_item", {
                    send_to: __selperSellerGoogleAnalyticsMeasurementId,
                    value: __selperTotalSalePrice,
                    currency: "KRW",
                    items: __selperGoogleAnalyticsItems
                }));
                break;
            case "AddToCart":
                __hasSelperProductInformation && (gtag("event",
                    "add_to_cart", {
                        send_to: __selperGoogleAnalyticsMeasurementId,
                        value: __selperTotalSalePrice,
                        currency: "KRW",
                        items: __selperGoogleAnalyticsItems
                    }), "" != __selperSellerGoogleAnalyticsMeasurementId && gtag("event", "add_to_cart", {
                    send_to: __selperSellerGoogleAnalyticsMeasurementId,
                    value: __selperTotalSalePrice,
                    currency: "KRW",
                    items: __selperGoogleAnalyticsItems
                }));
                break;
            case "Purchase":
                __hasSelperProductInformation && (gtag("event", "purchase", {
                    send_to: __selperGoogleAnalyticsMeasurementId,
                    transaction_id: __selperProductOrderNo,
                    value: __selperTotalSalePrice,
                    currency: "KRW",
                    items: __selperGoogleAnalyticsItems
                }), "" != __selperSellerGoogleAnalyticsMeasurementId && gtag("event", "purchase", {
                    send_to: __selperSellerGoogleAnalyticsMeasurementId,
                    transaction_id: __selperProductOrderNo,
                    value: __selperTotalSalePrice,
                    currency: "KRW",
                    items: __selperGoogleAnalyticsItems
                }))
        };
    </script>


    <script type="text/javascript" id="">
        ! function(b, e, f, g, a, c, d) {
            b.fbq || (a = b.fbq = function() {
                a.callMethod ? a.callMethod.apply(a, arguments) : a.queue.push(arguments)
            }, b._fbq || (b._fbq = a), a.push = a, a.loaded = !0, a.version = "2.0", a.queue = [], c = e.createElement(f), c.async = !0, c.src = g, d = e.getElementsByTagName(f)[0], d.parentNode.insertBefore(c, d))
        }(window, document, "script", "https://connect.facebook.net/en_US/fbevents.js");
        for (var i = 0; i < __selperFacebookPixelId.length; i++) fbq("init", __selperFacebookPixelId[i]), fbq("trackSingle", __selperFacebookPixelId[i], "PageView");
        switch (__selperEventType) {
            case "ViewContent":
                if (__hasSelperProductInformation)
                    for (i = 0; i < __selperFacebookPixelId.length; i++) fbq("trackSingle", __selperFacebookPixelId[i], "ViewContent", {
                        value: __selperTotalSalePrice,
                        currency: "KRW",
                        contents: __selperContnets,
                        content_type: "PRODUCT"
                    });
                break;
            case "AddToCart":
                if (__hasSelperProductInformation)
                    for (i = 0; i < __selperFacebookPixelId.length; i++) fbq("trackSingle", __selperFacebookPixelId[i], "AddToCart", {
                        value: __selperTotalSalePrice,
                        currency: "KRW",
                        contents: __selperContnets,
                        content_type: "PRODUCT"
                    });
                break;
            case "Purchase":
                if (__hasSelperProductInformation)
                    for (i = 0; i < __selperFacebookPixelId.length; i++) fbq("trackSingle", __selperFacebookPixelId[i], "Purchase", {
                        value: __selperTotalSalePrice,
                        currency: "KRW",
                        contents: __selperContnets,
                        content_type: "PRODUCT"
                    })
        };
    </script>


    <script type="text/javascript" id="">
        ! function(b, d, c, e, a, f, g) {
            b.dmcself || (a = b.dmcself = function() {
                a.callDmcSelf ? a.callDmcSelf.apply(a, arguments) : a.queue.push(arguments)
            }, b.dmcself || (b._dmcself = a), a.push = a, a.loaded = !0, a.version = "0.1", a.queue = [], f = d.createElement(c), f.async = !0, f.src = e, g = d.getElementsByTagName(c)[0], g.parentNode.insertBefore(f, g))
        }(window, document, "script", "//dsp.dmcmedia.co.kr/selper/js/selperevt.js?ver\x3d0.1.4.1");

        function getSelperUrlVars() {
            var b = [];
            if (0 < window.location.href.indexOf("?"))
                for (var d = window.location.href.slice(window.location.href.indexOf("?") + 1).split("\x26"), c = 0; c < d.length; c++) {
                    var e = d[c].split("\x3d");
                    b[e[0]] = e[1]
                }
            return b
        }
        var __selperData = {};
        __selperData.selperAccountId = __selperAccountId;
        __selperData.selperFacebookPixelId = __selperFacebookPixelId;
        __selperData.selperGoogleAnalyticsMeasurementId = __selperGoogleAnalyticsMeasurementId;
        __selperData.selperSellerGoogleAnalyticsMeasurementId = __selperSellerGoogleAnalyticsMeasurementId;
        __selperData.linkUrl = encodeURI(window.location.href);
        __selperData.eventType = __selperEventType;
        __selperData.orderNo = __selperProductOrderNo;
        __selperData.orderTotalBasePrice = __selperTotalSalePrice;
        __selperData.orderTotalSalePrice = __selperTotalSalePrice;
        __selperData.selperProductTotalValue = __selperTotalSalePrice;
        __selperData.product = JSON.stringify(__selperProducts);
        __selperData.fbc = __getSelperCookie("_fbc");
        __selperData.fbp = __getSelperCookie("_fbp");
        __selperData.ga = __getSelperCookie("_ga");
        __selperData.gid = __getSelperCookie("_gid");
        var uri = __selperData.referrer = document.referrer;
        if (uri) {
            __selperData.referrer = uri;
            var link = document.createElement("a");
            link.setAttribute("href", uri);
            var pattern = /[\?&](?:q|query)=([^&#]*)/,
                query = link.search.match(pattern);
            if (query && 0 < query.length) {
                var keyword = query[1].replace(/\+/gi, "%20");
                keyword && (__selperData.keywordHost = link.hostname, __selperData.keyword = decodeURIComponent(keyword))
            }
        }
        var hrefUri = window.location.href;
        if (hrefUri) {
            __selperData.hrefUri = hrefUri;
            var hrefLink = document.createElement("a");
            hrefLink.setAttribute("href", hrefUri);
            var hrefPattern = /[\?&](?:search|keyword)=([^&#]*)/,
                hrefQuery = hrefLink.search.match(hrefPattern);
            if (hrefQuery && 0 < hrefQuery.length) {
                var hrefKeyword = hrefQuery[1].replace(/\+/gi, "%20");
                hrefKeyword && (__selperData.searchHost = hrefLink.hostname, __selperData.searchKeyword = decodeURIComponent(hrefKeyword))
            }
        }
        try {
            __selperData.adtracking = typeof window.adtracking;
            if ("object" == typeof window.adtracking) {
                var gaid = window.adtracking.getGaid();
                __selperData.gaid = gaid;
                var eventData = {};
                __selperData["adtracking.trackEvent"] = typeof window.adtracking.trackEvent
            }
            switch (__selperEventType) {
                case "ViewContent":
                case "AddToCart":
                case "Purchase":
                    dmcself("init", __selperAccountId), dmcself("track", "action", __selperData)
            }
        } catch (b) {
            __selperData.error = b, dmcself("init", __selperAccountId), dmcself("track", "action", __selperData), console.log("error: " +
                b)
        };
    </script>
    <script type="text/javascript" id="">
        (function() {
            try {
                var d = "UA-106764115-1",
                    h = "4",
                    a = null,
                    e = ga.getAll(),
                    f;
                var b = 0;
                for (f = e.length; b < f; b += 1)
                    if (e[b].get("trackingId") === d) {
                        a = e[b].get("clientId");
                        break
                    } a = encodeURI(a);
                d = "https://tag-deepad.lpoint.com/cookie?mid\x3d" + h + "\x26cid\x3d" + a;
                var g = document.getElementsByTagName("script")[0],
                    c = document.createElement("script");
                c.async = !0;
                c.type = "text/javascript";
                c.src = d;
                g.parentNode.insertBefore(c, g)
            } catch (k) {
                console.log("LPOINT DeepAD Cookie Sync Tag Error:::" + k)
            }
        })();
    </script>
</body>

</html>