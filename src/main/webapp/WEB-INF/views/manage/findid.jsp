<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="root" value="/" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Expires" content="-1" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <title>아이디 찾기</title>


    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/findid.css" />
	<script src="<c:url value="/resources/js/findid.js" />"></script>
</head>
<body id="KOR" data-device="0" oncontextmenu="return false" onselectstart="return false" ondragstart="return false">
    <!-- header -->
    <div id="mast-head">
        <div class="container">
            <a href="${root }">
            	<img src="${pageContext.request.contextPath}/resources/images/lot.png" style="width: 300px; height: 105px;"/>
            </a>
        </div>
    </div>
    <!-- //header -->


    <!-- mast body -->
    <div id="mast-body">
        <div class="container">
            <!-- toparea -->
            <div class="toparea">
                <h2 class="title">아이디 찾기</h2><!-- 아이디 찾기 -->
                <div class="headline">
                    <!-- 등록된 회원정보로<br>아이디를 찾으실 수 있습니다. -->
                    등록된 회원정보로<br>아이디를 찾으실 수 있습니다.
                </div>
            </div>
            <!-- //toparea -->

            <!-- contents -->
            <div class="contents">
                <!-- section : 아이디찾기 -->
                <div class="section __half __find ui-radio-accodion" id="resident">
                    <div class="subject __underline"></div>
                    <!-- 이메일 주소로 찾기 -->
                    <div class="row">
                        <div class="col-md">
                            <!-- 선택 -->
                            <div class="ui-radio">
                                <input type="radio" id="find-way-email" name="member-find-way" data-id="section-find-emailid" data-code="2" data-trigger="#section-find-emailid" checked="checked">
                                <label for="find-way-email">이메일주소로 찾기 </label><!-- 이메일 주소로 찾기 -->
                            </div>
                            <!-- 펼침 -->
                            <div id="section-find-emailid" class="inner-content active">
                                <!-- 이름 -->
                                <div class="row">
                                    <div class="col-md">
                                        <label for="find-email-user-name">이름</label><!-- 이름 -->
                                    </div>
                                    <div class="col-md">
                                        <div class="form-wrap __normal">
                                            <div class="ui-input">
                                                <input type="text" id="find-email-user-name" data-type="cstNm" maxlength="20">
                                                <span class="placeholder">한글 또는 영문으로 입력해주세요.</span><!-- 한글 또는 영문으로 입력해주세요. -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 이메일 주소 -->
                                <div class="row">
                                    <div class="col-md">
                                        <label for="find-email-user-email">이메일 주소 </label><!-- 이메일 주소 -->
                                    </div>
                                    <div class="col-md">
                                        <div class="form-wrap __normal">
                                            <div class="ui-input">
                                                <input type="email" id="find-email-user-email" data-type="elcAdd" maxlength="50">
                                                <span class="placeholder">이메일주소를 입력해주세요.</span><!-- 이메일 주소를 입력해주세요. -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- //펼침 -->
                        </div>
                    </div>
                </div>

                <!-- //section -->

                <!-- btn -->
                <div class="btn-area __center">
                    <button type="button" class="ui-button __square-large __black" onclick="fnClose();">취소 </button>
                    <button type="button" class="ui-button __square-large __point-color" onclick="fnCheck();">다음 </button>
                </div>
            </div>
            <!-- //contents -->
        </div>
    </div>


    <form name="formBack" action="mbrJoinS0101" id="formBack" method="post">
    </form>
    <form name="formNext" action="/exView/manage/fdPassword_04_001" id="formNext" method="post">
        <input type="hidden" name="onlId" id="onlId">
        <input type="hidden" name="onlIdList" id="onlIdList" value="">
        <input type="hidden" name="frnYn" id="frnYn" value="ko">
        <input type="hidden" name="typeCode" value="" id="typeCode">
    </form>
    <form name="formError" action="/exView/manage/fdPassword_05_002" id="formError" method="post">
        <input type="hidden" name="errorTypeCode" value="002">
    </form>
    </script>


    <!-- Footer -->
    <div id="mast-foot">
        <div class="container">
            <div class="utility">
                <div class="item"><a href="http://www.lottemembers.com/">회사소개
                        <!-- 회사소개 --></a></div>
                <div class="item"><a href="https://m.lpoint.com/app/center/LWDE100100.do">고객센터
                        <!-- 고객센터 --></a></div>
                <div class="item"><a href="https://m.lpoint.com/app/center/LWDD100100.do">이용약관
                        <!-- 이용약관 --></a></div>
                <div class="item"><a href="https://m.lpoint.com/app/center/LWDD100100.do?popup=4"><em class="__point-color">개인정보처리방침
                            <!-- 개인정보처리방침 --></em></a></div>
            </div>
            <div class="com-address">
                <address>
                    <span>서울시 중구 통일로 2길 16 AIA타워 14층
                        <!-- 서울시 중구 통일로 2길 16 AIA타워 14층 --></span>
                    <span>회사명 롯데멤버스(주)
                        <!-- 회사명 롯데멤버스(주) --></span>
                    <span>대표이사 전형식
                        <!-- 대표이사 강승하 --></span>
                    <span>사업자등록번호 104-86-58491
                        <!-- 사업자등록번호 104-86-58491 --></span>
                    <span>고객센터 1899-8900
                        <!-- 고객센터 1899-8900 --></span>
                </address>
            </div>
            <div class="copyright">© LOTTE MEMBERS CO.,LTD.</div>
            <div class="friendly">
                <div class="site-linker">
                    <button type="button" role="button" class="">Service Site
                        <!-- Service Site --></button>
                    <ul>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="https://www.lpoint.com">L.POINT
                                <!-- L.POINT --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="https://www.lpay.com">L.pay
                                <!-- L.pay --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="https://www.lime-in.co.kr">라임
                                <!-- 라임 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="https://partners.lpoint.com">L.POINT 파트너스
                                <!-- L.POINT 파트너스 --></a></li>
                    </ul>
                </div>
                <div class="site-linker">
                    <button type="button" role="button">Family Site
                        <!-- Family Site --></button>
                    <ul>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.lotte.co.kr">롯데그룹
                                <!-- 롯데그룹 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.lottetown.com">롯데타운
                                <!-- 롯데타운 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.lotte.com/">롯데닷컴
                                <!-- 롯데닷컴 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.lottemart.com/">롯데마트
                                <!-- 롯데마트 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.vic-market.com/vicmarket/main.do">롯데빅마켓
                                <!-- 롯데빅마켓 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.toysrus.co.kr/to/main.do">토이저러스
                                <!-- 토이저러스 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.lottesuper.co.kr/">롯데슈퍼
                                <!-- 롯데슈퍼 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.lotteimall.com/main/Index.jsp">롯데홈쇼핑
                                <!-- 롯데홈쇼핑 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.7-eleven.co.kr/">바이더웨이
                                <!-- 바이더웨이 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.7-eleven.co.kr/">세븐일레븐
                                <!-- 세븐일레븐 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.himart.co.kr/">하이마트
                                <!-- 하이마트 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.fujifilm.co.kr/">한국후지필름
                                <!-- 한국후지필름 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.lohbs.co.kr/main.do">LOHB's
                                <!-- LOHB's --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.ellotte.com/">롯데백화점
                                <!-- 롯데백화점 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://kr.lottedfs.com/main">롯데면세점
                                <!-- 롯데면세점 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.lottefitin.com">롯데피트인
                                <!-- 롯데피트인 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://gimpoairport.lottemall.co.kr">롯데몰 김포공항점
                                <!-- 롯데몰 김포공항점 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.lwt.co.kr">롯데월드몰
                                <!-- 롯데월드몰 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://store.lotteshopping.com/handler/Main-Start?subBrchCd=021&amp;gubun=2">롯데영플라자
                                <!-- 롯데영플라자 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://store.lotteshopping.com/handler/Main-Start?subBrchCd=057">롯데아울렛
                                <!-- 롯데아울렛 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://store.lotteshopping.com/handler/Main-Start?subBrchCd=054&amp;gubun=1">롯데프리미엄아울렛
                                <!-- 롯데프리미엄아울렛 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.mujikorea.net/">무인양품
                                <!-- 무인양품 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.uniqlo.kr/">유니클로
                                <!-- 유니클로 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.lotteria.com/">롯데리아
                                <!-- 롯데리아 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.angelinus.co.kr/">엔제리너스커피
                                <!-- 엔제리너스커피 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.tgif.co.kr/">T.G.I FRIDAY'S
                                <!-- T.G.I FRIDAY'S --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.natuur.co.kr/">나뚜루POP
                                <!-- 나뚜루POP --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.krispykreme.co.kr/">크리스피크림도넛
                                <!-- 크리스피크림도넛 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.boulangerie.co.kr/">보네스뻬
                                <!-- 보네스뻬 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.lottecinema.co.kr/">롯데시네마
                                <!-- 롯데시네마 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.lotteworld.com/">롯데월드 어드벤처
                                <!-- 롯데월드 어드벤처 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.lotteworld.com/aquarium/index.asp">롯데월드 아쿠아리움
                                <!-- 롯데월드 아쿠아리움 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.lotteworld.com/waterpark/index.asp">롯데 워터파크
                                <!-- 롯데 워터파크 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.giantsclub.com/">롯데자이언츠
                                <!-- 롯데자이언츠 --></a></li>
                        <li><a target="_blank" onclick="return fnWindowOpen(this.href);" title="새 창" href="http://www.lottejtb.com/">롯데제이티비
                                <!-- 롯데제이티비 --></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</body>

</html>