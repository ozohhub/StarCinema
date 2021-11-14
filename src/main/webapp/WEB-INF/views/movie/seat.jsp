<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>롯지브이</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/movie.js"></script>
</head>
<body>
    <div id="PersonSeatContents"></div>
    <div id="contents" class="contents_full contents_reserve">

        <div class="wrap_reserve">
            <h2 class="hidden">예매하기</h2>
            <div id="PersonSeatHeader" class="section_step_tit">
                <ul style="padding-top: 700px;">
                    <li class="step01 prev" style="margin-left: 0"><a href="#reserveStep01"><strong class="tit"><span>01</span><br>상영시간</strong></a></li>
                    <li class="step02 active"><a href="#reserveStep02"><strong class="tit"><span>02</span><br>인원/좌석</strong></a></li>
                    <li class="step03"><a style="cursor: default;"><strong class="tit"><span>03</span><br>결제</strong></a></li>
                    <li><a style="cursor: default;"><strong class="tit"><span>04</span><br>결제완료</strong></a></li>
                </ul>
            </div>
            
            <div id="reserveStep01" class="section_step_con step01">
                <h3 class="hidden">상영시간</h3>
            </div>
            
            <div id="reserveStep02" class="section_step_con step02 active">
                <h3 class="hidden">인원/좌석</h3>

                <div class="article article_seat">
                    <div class="group_top">
                        <h4 class="tit">인원/좌석 선택</h4>
                        <p class="txt">인원은 최대 8명까지 선택 가능합니다.</p>
                    </div>
                    <div class="inner">

                        <div id="PersonSeatCount">
                            <div class="select_num_people_wrap">
                                <h5 class="hidden">인원선택</h5>
                                <div class="movie_infor">
                                    <h6 class="hidden">예매 정보</h6><span class="thm"><img src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202111/17885_103_1.jpg"></span>
                                    <div class="group_infor">
                                        <div class="bx_tit"><span class="ic_grade gr_12">관람가</span><strong>이터널스</strong></div>
                                        <dl>
                                            <dt>일시</dt>
                                            <dd class="sub_info1">21.11.14<em>(일)</em><span class="time">13:55 ~ 16:40</span></dd>
                                            <dt>영화관</dt>
                                            <dd class="sub_info1">서울대입구 · 1관 · 일반 </dd>
                                        </dl>
                                    </div>
                                </div>
                                <div class="count_people">
                                    <h6 class="hidden">인원선택</h6>
                                    <ul>
                                        <li id="person_10" data-code="10" data-peple="성인" data-count="0">
                                        	<strong class="tit">성인</strong>
                                        	<span class="bx_num">
                                        		<button class="btn_mins" onclick="minus_click(1);">감소</button>
                                                <div class="txt_num" id="num1">0</div>
                                                <button class="btn_plus" onclick="plus_click(1);">증가</button>
                                            </span>
										</li>
                                        <li id="person_20" data-code="20" data-peple="청소년" data-count="0">
                                        	<strong class="tit">청소년</strong>
                                        	<span class="bx_num">
                                        		<button class="btn_mins" onclick="minus_click(2);">감소</button>
                                                <div class="txt_num" id="num2">0</div>
                                                <button class="btn_plus" onclick="plus_click(2);">증가</button>
                                            </span>
                                        </li>
                                        <li id="person_12" data-code="12" data-peple="시니어" data-count="0">
                                        	<strong class="tit">시니어</strong><span class="bx_num">
                                        		<button class="btn_mins" onclick="minus_click(3);">감소</button>
                                                <div class="txt_num" id="num3">0</div>
                                                <button class="btn_plus" onclick="plus_click(3);">증가</button>
                                            </span>
                                        </li>
                                        <li id="person_11" data-code="11" data-peple="장애인" data-count="0">
                                        	<strong class="tit">장애인</strong>
                                        	<span class="bx_num">
                                        		<button class="btn_mins" onclick="minus_click(4);">감소</button>
                                                <div class="txt_num" id="num4">0</div>
                                                <button class="btn_plus" onclick="plus_click(4);">증가</button>
                                            </span>
                                    	</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                        <div class="select_seat_wrap">
                            <h5 class="hidden">좌석선택</h5>
                            <div class="top_txt_info">
                                <p id="ticketMessageInfo">인원을 선택하세요.</p>
                            </div>
                            <div id="PersonSeatSelect"> </div>

                            <div id="container" class="seat_wrap">
                                <article class="mseat_wrap">
                                    <div class="mseat_inner">

                                        <div class="mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" data-mcs-theme="minimal-dark" style="position: relative; overflow: visible;">
                                            <div id="mCSB_1" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" style="max-height: none;" tabindex="0">
                                                <div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                                    <div class="meat_door_pos" id="scrollWrap">
                                                        <div class="mseat_hidden">

                                                            <span class="title_screen1">SCREEN</span>

                                                            <div class="showMap">
                                                                <div class="floor_bx seatSet1"> <span class="floor_tit" style="display: none;">11F</span>
                                                                    <div class="seat_area" style="margin-top: 30px; width: 381.571px; height: 298.208px;">
                                                                    	<span class="seat_tit" style="left:-30px; top:0px">A</span>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:A1 일반석" class="sel  p0 grNum3" block-code="p0" data-seat="A1" seat-statuscode="0" seat-group="grNum3" seat-code="1A01" style="left: 21px; top: 0px;">
                                                                    		<span class=" f1" style="top: 0px;">1</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:A2 일반석" class="sel  p0 grNum3" block-code="p0" data-seat="A2" seat-statuscode="0" seat-group="grNum3" seat-code="1A02" style="left: 47px; top: 0px;">
                                                                    		<span class=" f1" style="top: 0px;">2</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:A3 일반석" class="sel  p0 grNum4" block-code="p0" data-seat="A3" seat-statuscode="0" seat-group="grNum4" seat-code="1A03" style="left: 87.2857px; top: 0px;">
                                                                    		<span class=" f1" style="top: 0px;">3</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:A4 일반석" class="sel  p0 grNum4" block-code="p0" data-seat="A4" seat-statuscode="0" seat-group="grNum4" seat-code="1A04" style="left: 113.286px; top: 0px;">
                                                                    		<span class=" f1" style="top: 0px;">4</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:A5 일반석" class="sel  p0 grNum4" block-code="p0" data-seat="A5" seat-statuscode="0" seat-group="grNum4" seat-code="1A05" style="left: 139.286px; top: 0px;">
                                                                    		<span class=" f1" style="top: 0px;">5</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:A6 일반석" class="sel  p0 grNum4" block-code="p0" data-seat="A6" seat-statuscode="0" seat-group="grNum4" seat-code="1A06" style="left: 165.286px; top: 0px;">
                                                                    		<span class=" f1" style="top: 0px;">6</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:A7 일반석" class="sel  p0 grNum4" block-code="p0" data-seat="A7" seat-statuscode="0" seat-group="grNum4" seat-code="1A07" style="left: 191.286px; top: 0px;">
                                                                    		<span class=" f1" style="top: 0px;">7</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:A8 일반석" class="sel  p0 grNum4" block-code="p0" data-seat="A8" seat-statuscode="0" seat-group="grNum4" seat-code="1A08" style="left: 217.286px; top: 0px;">
                                                                    		<span class=" f1" style="top: 0px;">8</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:A9 일반석" class="sel  p0 grNum4" block-code="p0" data-seat="A9" seat-statuscode="0" seat-group="grNum4" seat-code="1A09" style="left: 243.286px; top: 0px;">
                                                                    		<span class=" f1" style="top: 0px;">9</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:A10 일반석" class="sel  p0 grNum4" block-code="p0" data-seat="A10" seat-statuscode="0" seat-group="grNum4" seat-code="1A10" style="left: 269.286px; top: 0px;">
                                                                    		<span class=" f1" style="top: 0px;">10</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:A11 일반석" class="sel  p0 grNum4" block-code="p0" data-seat="A11" seat-statuscode="0" seat-group="grNum4" seat-code="1A11" style="left: 295.286px; top: 0px;">
                                                                    		<span class=" f1" style="top: 0px;">11</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:A12 일반석" class="sel  p0 grNum7" block-code="p0" data-seat="A12" seat-statuscode="0" seat-group="grNum7" seat-code="1A12" style="left: 335.571px; top: 0px;">
                                                                    		<span class=" f1" style="top: 0px;">12</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:A13 일반석" class="sel  p0 grNum7" block-code="p0" data-seat="A13" seat-statuscode="0" seat-group="grNum7" seat-code="1A13" style="left: 361.571px; top: 0px;">
                                                                    		<span class=" f1" style="top: 0px;">13</span>
                                                                    	</a>
                                                                    		<span class="seat_tit" style="left:-30px; top:25.291666666666668px">B</span>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:B1 일반석" class="sel  p0 grNum8" block-code="p0" data-seat="B1" seat-statuscode="0" seat-group="grNum8" seat-code="1B01" style="left: 21px; top: 25.2917px;">
                                                                    		<span class=" f1" style="top: 0px;">1</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:B2 일반석" class="sel  p0 grNum8" block-code="p0" data-seat="B2" seat-statuscode="0" seat-group="grNum8" seat-code="1B02" style="left: 47px; top: 25.2917px;">
                                                                    		<span class=" f1" style="top: 0px;">2</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:B3 일반석" class="sel  p0 grNum9" block-code="p0" data-seat="B3" seat-statuscode="0" seat-group="grNum9" seat-code="1B03" style="left: 87.2857px; top: 25.2917px;">
                                                                    		<span class=" f1" style="top: 0px;">3</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:B4 일반석" class="sel  p0 grNum9" block-code="p0" data-seat="B4" seat-statuscode="0" seat-group="grNum9" seat-code="1B04" style="left: 113.286px; top: 25.2917px;">
                                                                    		<span class=" f1" style="top: 0px;">4</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:B5 일반석" class="sel  p0 grNum9" block-code="p0" data-seat="B5" seat-statuscode="0" seat-group="grNum9" seat-code="1B05" style="left: 139.286px; top: 25.2917px;">
                                                                    		<span class=" f1" style="top: 0px;">5</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:B6 일반석" class="sel  p0 grNum9" block-code="p0" data-seat="B6" seat-statuscode="0" seat-group="grNum9" seat-code="1B06" style="left: 165.286px; top: 25.2917px;">
                                                                    		<span class=" f1" style="top: 0px;">6</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:B7 일반석" class="sel  p0 grNum9" block-code="p0" data-seat="B7" seat-statuscode="0" seat-group="grNum9" seat-code="1B07" style="left: 191.286px; top: 25.2917px;">
                                                                    		<span class=" f1" style="top: 0px;">7</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:B8 일반석" class="sel  p0 grNum9" block-code="p0" data-seat="B8" seat-statuscode="0" seat-group="grNum9" seat-code="1B08" style="left: 217.286px; top: 25.2917px;">
                                                                    		<span class=" f1" style="top: 0px;">8</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:B9 일반석" class="sel  p0 grNum9" block-code="p0" data-seat="B9" seat-statuscode="0" seat-group="grNum9" seat-code="1B09" style="left: 243.286px; top: 25.2917px;">
                                                                    		<span class=" f1" style="top: 0px;">9</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:B10 일반석" class="sel  p0 grNum9" block-code="p0" data-seat="B10" seat-statuscode="0" seat-group="grNum9" seat-code="1B10" style="left: 269.286px; top: 25.2917px;">
                                                                    		<span class=" f1" style="top: 0px;">10</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:B11 일반석" class="sel  p0 grNum9" block-code="p0" data-seat="B11" seat-statuscode="0" seat-group="grNum9" seat-code="1B11" style="left: 295.286px; top: 25.2917px;">
                                                                    		<span class=" f1" style="top: 0px;">11</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:B12 일반석" class="sel  p0 grNum10" block-code="p0" data-seat="B12" seat-statuscode="0" seat-group="grNum10" seat-code="1B12" style="left: 335.571px; top: 25.2917px;">
                                                                    		<span class=" f1" style="top: 0px;">12</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:B13 일반석" class="sel  p0 grNum10" block-code="p0" data-seat="B13" seat-statuscode="0" seat-group="grNum10" seat-code="1B13" style="left: 361.571px; top: 25.2917px;">
                                                                    		<span class=" f1" style="top: 0px;">13</span>
                                                                    	</a>
                                                                    	<span class="seat_tit" style="left:-30px; top:50.583333333333336px">C</span>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:C1 일반석" class="sel  p0 grNum11" block-code="p0" data-seat="C1" seat-statuscode="0" seat-group="grNum11" seat-code="1C01" style="left: 21px; top: 50.5833px;">
                                                                    		<span class=" f1" style="top: 0px;">1</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:C2 일반석" class="sel  p0 grNum11" block-code="p0" data-seat="C2" seat-statuscode="0" seat-group="grNum11" seat-code="1C02" style="left: 47px; top: 50.5833px;">
                                                                    		<span class=" f1" style="top: 0px;">2</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:C3 일반석" class="sel  p0 grNum12" block-code="p0" data-seat="C3" seat-statuscode="0" seat-group="grNum12" seat-code="1C03" style="left: 87.2857px; top: 50.5833px;">
                                                                    		<span class=" f1" style="top: 0px;">3</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:C4 일반석" class="sel  p0 grNum12" block-code="p0" data-seat="C4" seat-statuscode="0" seat-group="grNum12" seat-code="1C04" style="left: 113.286px; top: 50.5833px;">
                                                                    		<span class=" f1" style="top: 0px;">4</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:C5 일반석" class="sel  p0 grNum12" block-code="p0" data-seat="C5" seat-statuscode="0" seat-group="grNum12" seat-code="1C05" style="left: 139.286px; top: 50.5833px;">
                                                                    		<span class=" f1" style="top: 0px;">5</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:C6 일반석" class="sel  p0 grNum12" block-code="p0" data-seat="C6" seat-statuscode="0" seat-group="grNum12" seat-code="1C06" style="left: 165.286px; top: 50.5833px;">
                                                                    		<span class=" f1" style="top: 0px;">6</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:C7 일반석" class="sel  p0 grNum12" block-code="p0" data-seat="C7" seat-statuscode="0" seat-group="grNum12" seat-code="1C07" style="left: 191.286px; top: 50.5833px;">
                                                                    		<span class=" f1" style="top: 0px;">7</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:C8 일반석" class="sel  p0 grNum12" block-code="p0" data-seat="C8" seat-statuscode="0" seat-group="grNum12" seat-code="1C08" style="left: 217.286px; top: 50.5833px;">
                                                                    		<span class=" f1" style="top: 0px;">8</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:C9 일반석" class="sel  p0 grNum12" block-code="p0" data-seat="C9" seat-statuscode="0" seat-group="grNum12" seat-code="1C09" style="left: 243.286px; top: 50.5833px;">
                                                                    		<span class=" f1" style="top: 0px;">9</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:C10 일반석" class="sel  p0 grNum12" block-code="p0" data-seat="C10" seat-statuscode="0" seat-group="grNum12" seat-code="1C10" style="left: 269.286px; top: 50.5833px;">
                                                                    		<span class=" f1" style="top: 0px;">10</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:C11 일반석" class="sel  p0 grNum12" block-code="p0" data-seat="C11" seat-statuscode="0" seat-group="grNum12" seat-code="1C11" style="left: 295.286px; top: 50.5833px;">
                                                                    		<span class=" f1" style="top: 0px;">11</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:C12 일반석" class="sel  p0 grNum13" block-code="p0" data-seat="C12" seat-statuscode="0" seat-group="grNum13" seat-code="1C12" style="left: 335.571px; top: 50.5833px;">
                                                                    		<span class=" f1" style="top: 0px;">12</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:C13 일반석" class="sel  p0 grNum13" block-code="p0" data-seat="C13" seat-statuscode="0" seat-group="grNum13" seat-code="1C13" style="left: 361.571px; top: 50.5833px;">
                                                                    		<span class=" f1" style="top: 0px;">13</span>
                                                                    	</a>
                                                                    	<span class="seat_tit" style="left:-30px; top:75.875px">D</span>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:D2 일반석" class="sel  p0 grNum14" block-code="p0" data-seat="D2" seat-statuscode="0" seat-group="grNum14" seat-code="1D02" style="left: 47px; top: 75.875px;">
                                                                    		<span class=" f1" style="top: 0px;">2</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:D3 일반석" class="sel  p0 grNum15" block-code="p0" data-seat="D3" seat-statuscode="0" seat-group="grNum15" seat-code="1D03" style="left: 87.2857px; top: 75.875px;">
                                                                    		<span class=" f1" style="top: 0px;">3</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:D4 일반석" class="sel  p0 grNum15" block-code="p0" data-seat="D4" seat-statuscode="0" seat-group="grNum15" seat-code="1D04" style="left: 113.286px; top: 75.875px;">
                                                                    		<span class=" f1" style="top: 0px;">4</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:D5 일반석" class="sel  p0 grNum15" block-code="p0" data-seat="D5" seat-statuscode="0" seat-group="grNum15" seat-code="1D05" style="left: 139.286px; top: 75.875px;">
                                                                    		<span class=" f1" style="top: 0px;">5</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:D6 일반석" class="sel  p0 grNum15" block-code="p0" data-seat="D6" seat-statuscode="0" seat-group="grNum15" seat-code="1D06" style="left: 165.286px; top: 75.875px;">
                                                                    		<span class=" f1" style="top: 0px;">6</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:D7 일반석" class="sel  p0 grNum15" block-code="p0" data-seat="D7" seat-statuscode="0" seat-group="grNum15" seat-code="1D07" style="left: 191.286px; top: 75.875px;">
                                                                    		<span class=" f1" style="top: 0px;">7</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:D8 일반석" class="sel  p0 grNum15" block-code="p0" data-seat="D8" seat-statuscode="0" seat-group="grNum15" seat-code="1D08" style="left: 217.286px; top: 75.875px;">
                                                                    		<span class=" f1" style="top: 0px;">8</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:D9 일반석" class="sel  p0 grNum15" block-code="p0" data-seat="D9" seat-statuscode="0" seat-group="grNum15" seat-code="1D09" style="left: 243.286px; top: 75.875px;">
                                                                    		<span class=" f1" style="top: 0px;">9</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:D10 일반석" class="sel  p0 grNum15" block-code="p0" data-seat="D10" seat-statuscode="0" seat-group="grNum15" seat-code="1D10" style="left: 269.286px; top: 75.875px;">
                                                                    		<span class=" f1" style="top: 0px;">10</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:D11 일반석" class="sel  p0 grNum15" block-code="p0" data-seat="D11" seat-statuscode="0" seat-group="grNum15" seat-code="1D11" style="left: 295.286px; top: 75.875px;">
                                                                    		<span class=" f1" style="top: 0px;">11</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:D12 일반석" class="sel  p0 grNum16" block-code="p0" data-seat="D12" seat-statuscode="50" seat-group="grNum16" seat-code="1D12" style="left: 335.571px; top: 75.875px;">
                                                                    		<span class=" f1" style="top: 0px;">12</span>
                                                                    	</a>
                                                                    	<span class="seat_tit" style="left:-30px; top:101.16666666666667px">E</span>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:E1 일반석" class="sel  p0 grNum17" block-code="p0" data-seat="E1" seat-statuscode="0" seat-group="grNum17" seat-code="1E01" style="left: 21px; top: 101.167px;">
                                                                    		<span class=" f1" style="top: 0px;">1</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:E2 일반석" class="sel  p0 grNum17" block-code="p0" data-seat="E2" seat-statuscode="0" seat-group="grNum17" seat-code="1E02" style="left: 47px; top: 101.167px;">
                                                                    		<span class=" f1" style="top: 0px;">2</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:E3 일반석" class="sel  p0 grNum18" block-code="p0" data-seat="E3" seat-statuscode="0" seat-group="grNum18" seat-code="1E03" style="left: 87.2857px; top: 101.167px;">
                                                                    		<span class=" f1" style="top: 0px;">3</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:E4 일반석" class="sel  p0 grNum18" block-code="p0" data-seat="E4" seat-statuscode="0" seat-group="grNum18" seat-code="1E04" style="left: 113.286px; top: 101.167px;">
                                                                    		<span class=" f1" style="top: 0px;">4</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:E5 일반석" class="sel  p0 grNum19" block-code="p0" data-seat="E5" seat-statuscode="50" seat-group="grNum19" seat-code="1E05" style="left: 139.286px; top: 101.167px;">
                                                                    		<span class=" f1" style="top: 0px;">5</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:E6 일반석" class="sel  p0 grNum19" block-code="p0" data-seat="E6" seat-statuscode="50" seat-group="grNum19" seat-code="1E06" style="left: 165.286px; top: 101.167px;">
                                                                    		<span class=" f1" style="top: 0px;">6</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:E7 일반석" class="sel  p0 grNum20" block-code="p0" data-seat="E7" seat-statuscode="0" seat-group="grNum20" seat-code="1E07" style="left: 191.286px; top: 101.167px;">
                                                                    		<span class=" f1" style="top: 0px;">7</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:E8 일반석" class="sel  p0 grNum20" block-code="p0" data-seat="E8" seat-statuscode="0" seat-group="grNum20" seat-code="1E08" style="left: 217.286px; top: 101.167px;">
                                                                    		<span class=" f1" style="top: 0px;">8</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:E9 일반석" class="sel  p0 grNum20" block-code="p0" data-seat="E9" seat-statuscode="0" seat-group="grNum20" seat-code="1E09" style="left: 243.286px; top: 101.167px;">
                                                                    		<span class=" f1" style="top: 0px;">9</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:E10 일반석" class="sel  p0 grNum20" block-code="p0" data-seat="E10" seat-statuscode="0" seat-group="grNum20" seat-code="1E10" style="left: 269.286px; top: 101.167px;">
                                                                    		<span class=" f1" style="top: 0px;">10</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:E11 일반석" class="sel  p0 grNum20" block-code="p0" data-seat="E11" seat-statuscode="0" seat-group="grNum20" seat-code="1E11" style="left: 295.286px; top: 101.167px;">
                                                                    		<span class=" f1" style="top: 0px;">11</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:E12 일반석" class="sel  p0 grNum21" block-code="p0" data-seat="E12" seat-statuscode="50" seat-group="grNum21" seat-code="1E12" style="left: 335.571px; top: 101.167px;">
                                                                    		<span class="f1" style="top: 0px;">12</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:E13 일반석" class="sel  p0 grNum22" block-code="p0" data-seat="E13" seat-statuscode="0" seat-group="grNum22" seat-code="1E13" style="left: 361.571px; top: 101.167px;">
                                                                    		<span class=" f1" style="top: 0px;">13</span>
                                                                    	</a>
                                                                    	<span class="seat_tit" style="left:-30px; top:126.45833333333333px">F</span>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:F1 일반석" class="sel  p0 grNum23" block-code="p0" data-seat="F1" seat-statuscode="0" seat-group="grNum23" seat-code="1F01" style="left: 21px; top: 126.458px;">
                                                                    		<span class=" f1" style="top: 0px;">1</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:F2 일반석" class="sel  p0 grNum23" block-code="p0" data-seat="F2" seat-statuscode="0" seat-group="grNum23" seat-code="1F02" style="left: 47px; top: 126.458px;">
                                                                    		<span class=" f1" style="top: 0px;">2</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:F3 일반석" class="sel  p0 grNum24" block-code="p0" data-seat="F3" seat-statuscode="0" seat-group="grNum24" seat-code="1F03" style="left: 87.2857px; top: 126.458px;">
                                                                    		<span class="f1" style="top: 0px;">3</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:F4 일반석" class="sel  p0 grNum25" block-code="p0" data-seat="F4" seat-statuscode="50" seat-group="grNum25" seat-code="1F04" style="left: 113.286px; top: 126.458px;">
                                                                    		<span class="f1" style="top: 0px;">4</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:F5 일반석" class="sel  p0 grNum25" block-code="p0" data-seat="F5" seat-statuscode="50" seat-group="grNum25" seat-code="1F05" style="left: 139.286px; top: 126.458px;">
                                                                    		<span class="f1" style="top: 0px;">5</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:F6 일반석" class="sel  p0 grNum25" block-code="p0" data-seat="F6" seat-statuscode="50" seat-group="grNum25" seat-code="1F06" style="left: 165.286px; top: 126.458px;">
                                                                    		<span class="f1" style="top: 0px;">6</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:F7 일반석" class="sel  p0 grNum25" block-code="p0" data-seat="F7" seat-statuscode="50" seat-group="grNum25" seat-code="1F07" style="left: 191.286px; top: 126.458px;">
                                                                    		<span class="f1" style="top: 0px;">7</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:F8 일반석" class="sel  p0 grNum25" block-code="p0" data-seat="F8" seat-statuscode="50" seat-group="grNum25" seat-code="1F08" style="left: 217.286px; top: 126.458px;">
                                                                    		<span class="f1" style="top: 0px;">8</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:F9 일반석" class="sel  p0 grNum25" block-code="p0" data-seat="F9" seat-statuscode="50" seat-group="grNum25" seat-code="1F09" style="left: 243.286px; top: 126.458px;">
                                                                    		<span class="f1" style="top: 0px;">9</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:F10 일반석" class="sel  p0 grNum25" block-code="p0" data-seat="F10" seat-statuscode="50" seat-group="grNum25" seat-code="1F10" style="left: 269.286px; top: 126.458px;">
                                                                    		<span class="f1" style="top: 0px;">10</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:F11 일반석" class="sel  p0 grNum25" block-code="p0" data-seat="F11" seat-statuscode="50" seat-group="grNum25" seat-code="1F11" style="left: 295.286px; top: 126.458px;">
                                                                    		<span class="f1" style="top: 0px;">11</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:F12 일반석" class="sel  p0 grNum27" block-code="p0" data-seat="F12" seat-statuscode="0" seat-group="grNum27" seat-code="1F12" style="left: 335.571px; top: 126.458px;">
                                                                    		<span class=" f1" style="top: 0px;">12</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:F13 일반석" class="sel  p0 grNum27" block-code="p0" data-seat="F13" seat-statuscode="0" seat-group="grNum27" seat-code="1F13" style="left: 361.571px; top: 126.458px;">
                                                                    		<span class=" f1" style="top: 0px;">13</span>
                                                                    	</a>
                                                                    	<span class="seat_tit" style="left:-30px; top:151.75px">G</span>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:G1 일반석" class="sel  p0 grNum28" block-code="p0" data-seat="G1" seat-statuscode="0" seat-group="grNum28" seat-code="1G01" style="left: 21px; top: 151.75px;">
                                                                    		<span class=" f1" style="top: 0px;">1</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:G2 일반석" class="sel  p0 grNum28" block-code="p0" data-seat="G2" seat-statuscode="0" seat-group="grNum28" seat-code="1G02" style="left: 47px; top: 151.75px;">
                                                                    		<span class=" f1" style="top: 0px;">2</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:G3 일반석" class="sel  p0 grNum29" block-code="p0" data-seat="G3" seat-statuscode="0" seat-group="grNum29" seat-code="1G03" style="left: 87.2857px; top: 151.75px;">
                                                                    		<span class=" f1" style="top: 0px;">3</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:G4 일반석" class="sel  p0 grNum30" block-code="p0" data-seat="G4" seat-statuscode="28" seat-group="grNum30" seat-code="1G04" style="left: 113.286px; top: 151.75px;">
                                                                    		<span class="f1 blind" style="top: 0px;">4</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:G5 일반석" class="sel  p0 grNum30" block-code="p0" data-seat="G5" seat-statuscode="28" seat-group="grNum30" seat-code="1G05" style="left: 139.286px; top: 151.75px;">
                                                                    		<span class="f1 blind" style="top: 0px;">5</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:G6 일반석" class="sel  p0 grNum30" block-code="p0" data-seat="G6" seat-statuscode="28" seat-group="grNum30" seat-code="1G06" style="left: 165.286px; top: 151.75px;">
                                                                    		<span class="f1 blind" style="top: 0px;">6</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:G7 일반석" class="sel  p0 grNum30" block-code="p0" data-seat="G7" seat-statuscode="50" seat-group="grNum30" seat-code="1G07" style="left: 191.286px; top: 151.75px;">
                                                                    		<span class="f1 blind" style="top: 0px;">7</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:G8 일반석" class="sel  p0 grNum30" block-code="p0" data-seat="G8" seat-statuscode="50" seat-group="grNum30" seat-code="1G08" style="left: 217.286px; top: 151.75px;">
                                                                    		<span class="f1 blind" style="top: 0px;">8</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:G9 일반석" class="sel  p0 grNum30" block-code="p0" data-seat="G9" seat-statuscode="50" seat-group="grNum30" seat-code="1G09" style="left: 243.286px; top: 151.75px;">
                                                                    		<span class="f1 blind" style="top: 0px;">9</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:G10 일반석" class="sel  p0 grNum30" block-code="p0" data-seat="G10" seat-statuscode="50" seat-group="grNum30" seat-code="1G10" style="left: 269.286px; top: 151.75px;">
                                                                    		<span class="f1 blind" style="top: 0px;">10</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:G11 일반석" class="sel  p0 grNum30" block-code="p0" data-seat="G11" seat-statuscode="50" seat-group="grNum30" seat-code="1G11" style="left: 295.286px; top: 151.75px;">
                                                                    		<span class="f1 blind" style="top: 0px;">11</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:G12 일반석" class="sel  p0 grNum32" block-code="p0" data-seat="G12" seat-statuscode="0" seat-group="grNum32" seat-code="1G12" style="left: 335.571px; top: 151.75px;">
                                                                    		<span class=" f1" style="top: 0px;">12</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:G13 일반석" class="sel  p0 grNum32" block-code="p0" data-seat="G13" seat-statuscode="0" seat-group="grNum32" seat-code="1G13" style="left: 361.571px; top: 151.75px;">
                                                                    		<span class=" f1" style="top: 0px;">13</span>
                                                                    	</a>
                                                                    	<span class="seat_tit" style="left:-30px; top:177.04166666666666px">H</span>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:H1 일반석" class="sel  p0 grNum33" block-code="p0" data-seat="H1" seat-statuscode="0" seat-group="grNum33" seat-code="1H01" style="left: 21px; top: 177.042px;">
                                                                    		<span class=" f1" style="top: 0px;">1</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:H2 일반석" class="sel  p0 grNum33" block-code="p0" data-seat="H2" seat-statuscode="0" seat-group="grNum33" seat-code="1H02" style="left: 47px; top: 177.042px;">
                                                                    		<span class=" f1" style="top: 0px;">2</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:H3 일반석" class="sel  p0 grNum34" block-code="p0" data-seat="H3" seat-statuscode="50" seat-group="grNum34" seat-code="1H03" style="left: 87.2857px; top: 177.042px;">
                                                                    		<span class="f1" style="top: 0px;">3</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:H4 일반석" class="sel  p0 grNum34" block-code="p0" data-seat="H4" seat-statuscode="50" seat-group="grNum34" seat-code="1H04" style="left: 113.286px; top: 177.042px;">
                                                                    		<span class="f1 " style="top: 0px;">4</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:H5 일반석" class="sel  p0 grNum34" block-code="p0" data-seat="H5" seat-statuscode="50" seat-group="grNum34" seat-code="1H05" style="left: 139.286px; top: 177.042px;">
                                                                    		<span class="f1" style="top: 0px;">5</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:H6 일반석" class="sel  p0 grNum34" block-code="p0" data-seat="H6" seat-statuscode="50" seat-group="grNum34" seat-code="1H06" style="left: 165.286px; top: 177.042px;">
                                                                    		<span class="f1" style="top: 0px;">6</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:H7 일반석" class="sel  p0 grNum34" block-code="p0" data-seat="H7" seat-statuscode="50" seat-group="grNum34" seat-code="1H07" style="left: 191.286px; top: 177.042px;">
                                                                    		<span class="f1" style="top: 0px;">7</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:H8 일반석" class="sel  p0 grNum34" block-code="p0" data-seat="H8" seat-statuscode="50" seat-group="grNum34" seat-code="1H08" style="left: 217.286px; top: 177.042px;">
                                                                    		<span class="f1" style="top: 0px;">8</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:H9 일반석" class="sel  p0 grNum34" block-code="p0" data-seat="H9" seat-statuscode="50" seat-group="grNum34" seat-code="1H09" style="left: 243.286px; top: 177.042px;">
                                                                    		<span class="f1" style="top: 0px;">9</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:H10 일반석" class="sel  p0 grNum34" block-code="p0" data-seat="H10" seat-statuscode="50" seat-group="grNum34" seat-code="1H10" style="left: 269.286px; top: 177.042px;">
                                                                    		<span class="f1" style="top: 0px;">10</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:H11 일반석" class="sel  p0 grNum34" block-code="p0" data-seat="H11" seat-statuscode="50" seat-group="grNum34" seat-code="1H11" style="left: 295.286px; top: 177.042px;">
                                                                    		<span class="f1" style="top: 0px;">11</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:H12 일반석" class="sel  p0 grNum35" block-code="p0" data-seat="H12" seat-statuscode="50" seat-group="grNum35" seat-code="1H12" style="left: 335.571px; top: 177.042px;">
                                                                    		<span class="f1" style="top: 0px;">12</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:H13 일반석" class="sel  p0 grNum35" block-code="p0" data-seat="H13" seat-statuscode="50" seat-group="grNum35" seat-code="1H13" style="left: 361.571px; top: 177.042px;">
                                                                    		<span class="f1" style="top: 0px;">13</span>
                                                                    	</a>
                                                                    	<span class="seat_tit" style="left:-30px; top:202.33333333333334px">I</span>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:I1 일반석" class="sel  p0 grNum36" block-code="p0" data-seat="I1" seat-statuscode="0" seat-group="grNum36" seat-code="1I01" style="left: 21px; top: 202.333px;">
                                                                    		<span class=" f1" style="top: 0px;">1</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:I2 일반석" class="sel  p0 grNum36" block-code="p0" data-seat="I2" seat-statuscode="0" seat-group="grNum36" seat-code="1I02" style="left: 47px; top: 202.333px;">
                                                                    		<span class=" f1" style="top: 0px;">2</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:I3 일반석" class="sel  p0 grNum37" block-code="p0" data-seat="I3" seat-statuscode="0" seat-group="grNum37" seat-code="1I03" style="left: 87.2857px; top: 202.333px;">
                                                                    		<span class=" f1" style="top: 0px;">3</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:I4 일반석" class="sel  p0 grNum38" block-code="p0" data-seat="I4" seat-statuscode="50" seat-group="grNum38" seat-code="1I04" style="left: 113.286px; top: 202.333px;">
                                                                    		<span class="f1" style="top: 0px;">4</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:I5 일반석" class="sel  p0 grNum38" block-code="p0" data-seat="I5" seat-statuscode="50" seat-group="grNum38" seat-code="1I05" style="left: 139.286px; top: 202.333px;">
                                                                    		<span class="f1" style="top: 0px;">5</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:I6 일반석" class="sel  p0 grNum38" block-code="p0" data-seat="I6" seat-statuscode="50" seat-group="grNum38" seat-code="1I06" style="left: 165.286px; top: 202.333px;">
                                                                    		<span class="f1" style="top: 0px;">6</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:I7 일반석" class="sel  p0 grNum38" block-code="p0" data-seat="I7" seat-statuscode="50" seat-group="grNum38" seat-code="1I07" style="left: 191.286px; top: 202.333px;">
                                                                    		<span class="f1" style="top: 0px;">7</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:I8 일반석" class="sel  p0 grNum38" block-code="p0" data-seat="I8" seat-statuscode="50" seat-group="grNum38" seat-code="1I08" style="left: 217.286px; top: 202.333px;">
                                                                    		<span class="f1" style="top: 0px;">8</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:I9 일반석" class="sel  p0 grNum38" block-code="p0" data-seat="I9" seat-statuscode="50" seat-group="grNum38" seat-code="1I09" style="left: 243.286px; top: 202.333px;">
                                                                    		<span class="f1" style="top: 0px;">9</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:I10 일반석" class="sel  p0 grNum38" block-code="p0" data-seat="I10" seat-statuscode="50" seat-group="grNum38" seat-code="1I10" style="left: 269.286px; top: 202.333px;">
                                                                    		<span class="f1" style="top: 0px;">10</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:I11 일반석" class="sel  p0 grNum39" block-code="p0" data-seat="I11" seat-statuscode="0" seat-group="grNum39" seat-code="1I11" style="left: 295.286px; top: 202.333px;">
                                                                    		<span class=" f1" style="top: 0px;">11</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:I12 일반석" class="sel  p0 grNum40" block-code="p0" data-seat="I12" seat-statuscode="0" seat-group="grNum40" seat-code="1I12" style="left: 335.571px; top: 202.333px;">
                                                                    		<span class=" f1" style="top: 0px;">12</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:I13 일반석" class="sel  p0 grNum40" block-code="p0" data-seat="I13" seat-statuscode="0" seat-group="grNum40" seat-code="1I13" style="left: 361.571px; top: 202.333px;">
                                                                    		<span class=" f1" style="top: 0px;">13</span>
                                                                    	</a>
                                                                    	<span class="seat_tit" style="left:-30px; top:227.625px">J</span>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:J1 일반석" class="sel  p0 grNum41" block-code="p0" data-seat="J1" seat-statuscode="50" seat-group="grNum41" seat-code="1J01" style="left: 21px; top: 227.625px;">
                                                                    		<span class="f1 blind" style="top: 0px;">1</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:J2 일반석" class="sel  p0 grNum41" block-code="p0" data-seat="J2" seat-statuscode="50" seat-group="grNum41" seat-code="1J02" style="left: 47px; top: 227.625px;">
                                                                    		<span class="f1" style="top: 0px;">2</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:J3 일반석" class="sel  p0 grNum42" block-code="p0" data-seat="J3" seat-statuscode="50" seat-group="grNum42" seat-code="1J03" style="left: 87.2857px; top: 227.625px;">
                                                                    		<span class="f1" style="top: 0px;">3</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:J4 일반석" class="sel  p0 grNum42" block-code="p0" data-seat="J4" seat-statuscode="50" seat-group="grNum42" seat-code="1J04" style="left: 113.286px; top: 227.625px;">
                                                                    		<span class="f1" style="top: 0px;">4</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:J5 일반석" class="sel  p0 grNum42" block-code="p0" data-seat="J5" seat-statuscode="50" seat-group="grNum42" seat-code="1J05" style="left: 139.286px; top: 227.625px;">
                                                                    		<span class="f1" style="top: 0px;">5</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:J6 일반석" class="sel  p0 grNum42" block-code="p0" data-seat="J6" seat-statuscode="50" seat-group="grNum42" seat-code="1J06" style="left: 165.286px; top: 227.625px;">
                                                                    		<span class="f1" style="top: 0px;">6</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:J7 일반석" class="sel  p0 grNum42" block-code="p0" data-seat="J7" seat-statuscode="50" seat-group="grNum42" seat-code="1J07" style="left: 191.286px; top: 227.625px;">
                                                                    		<span class="f1" style="top: 0px;">7</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:J8 일반석" class="sel  p0 grNum42" block-code="p0" data-seat="J8" seat-statuscode="50" seat-group="grNum42" seat-code="1J08" style="left: 217.286px; top: 227.625px;">
                                                                    		<span class="f1" style="top: 0px;">8</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:J9 일반석" class="sel  p0 grNum43" block-code="p0" data-seat="J9" seat-statuscode="0" seat-group="grNum43" seat-code="1J09" style="left: 243.286px; top: 227.625px;">
                                                                    		<span class=" f1" style="top: 0px;">9</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:J10 일반석" class="sel  p0 grNum44" block-code="p0" data-seat="J10" seat-statuscode="50" seat-group="grNum44" seat-code="1J10" style="left: 269.286px; top: 227.625px;">
                                                                    		<span class="f1" style="top: 0px;">10</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:J11 일반석" class="sel  p0 grNum44" block-code="p0" data-seat="J11" seat-statuscode="50" seat-group="grNum44" seat-code="1J11" style="left: 295.286px; top: 227.625px;">
                                                                    		<span class="f1" style="top: 0px;">11</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:J12 일반석" class="sel  p0 grNum46" block-code="p0" data-seat="J12" seat-statuscode="0" seat-group="grNum46" seat-code="1J12" style="left: 335.571px; top: 227.625px;">
                                                                    		<span class=" f1" style="top: 0px;">12</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:J13 일반석" class="sel  p0 grNum46" block-code="p0" data-seat="J13" seat-statuscode="0" seat-group="grNum46" seat-code="1J13" style="left: 361.571px; top: 227.625px;">
                                                                    		<span class=" f1" style="top: 0px;">13</span>
                                                                    	</a>
                                                                    	<span class="seat_tit" style="left:-30px; top:252.91666666666666px">K</span>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:K2 일반석" class="sel  p0 grNum47" block-code="p0" data-seat="K2" seat-statuscode="0" seat-group="grNum47" seat-code="1K02" style="left: 47px; top: 252.917px;">
                                                                    		<span class=" f1" style="top: 0px;">2</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:K12 일반석" class="sel  p0 grNum48" block-code="p0" data-seat="K12" seat-statuscode="50" seat-group="grNum48" seat-code="1K12" style="left: 335.571px; top: 252.917px;">
                                                                    		<span class="f1" style="top: 0px;">12</span>
                                                                    	</a>
                                                                    	<span class="seat_tit" style="left:-30px; top:278.2083333333333px">L</span>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:L1 일반석" class="sel  p0 grNum49" block-code="p0" data-seat="L1" seat-statuscode="0" seat-group="grNum49" seat-code="1L01" style="left: 21px; top: 278.208px;">
                                                                    		<span class=" f1" style="top: 0px;">1</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:L2 일반석" class="sel  p0 grNum49" block-code="p0" data-seat="L2" seat-statuscode="0" seat-group="grNum49" seat-code="1L02" style="left: 47px; top: 278.208px;">
                                                                    		<span class=" f1" style="top: 0px;">2</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:L12 일반석" class="sel  p0 grNum48" block-code="p0" data-seat="L12" seat-statuscode="50" seat-group="grNum48" seat-code="1L12" style="left: 335.571px; top: 278.208px;">
                                                                    		<span class="f1" style="top: 0px;">12</span>
                                                                    	</a>
                                                                    	<a href="javascript:void(0);" alt="좌석 번호:L13 일반석" class="sel  p0 grNum48" block-code="p0" data-seat="L13" seat-statuscode="50" seat-group="grNum48" seat-code="1L13" style="left: 361.571px; top: 278.208px;">
                                                                    		<span class="f1" style="top: 0px;">13</span>
                                                                    	</a>
                                                                    	</div>
                                                                    	<span data-y="-24px" data-x="381px" class="w_center" style="top: -24px; left: 775px;">상영관 출입문 입니다.</span>
                                                                </div>
                                                            </div>

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

                                    <div class="seat_btm_box">

                                        <div class="seat_type_box">
                                            <div class="top_info">
                                                <span class="seat_type1">선택좌석</span>
                                                <span class="seat_type2">선택가능</span>
                                                <span class="seat_type3">예매완료</span>
                                                <span class="seat_type4">선택불가</span>
                                                <span class="seat_type5">출입문</span>
                                            </div>
                                        </div>


                                        <div class="notice_box" style="display:none;">
                                            <h6 class="tit_info">이용안내</h6>
                                            <ul class="list_txt ty3">
                                                <li>12세 미만의 고객님(영,유아 포함)은 부모님 또는 보호자를 동반하여도 관람이 불가합니다.</li>
                                                <li>영화 관람 시, 신분증을 지참하여 주시기 바랍니다.</li>
                                            </ul>
                                        </div>

                                    </div>
                                </article>
                            </div>
                        </div>
                        
                        <div id="PersonSeatSummery">
                            <div class="select_seat_result">
                                <div class="group_lft">
                                    <dl class="total_price">
                                        <dt>총 합계</dt>
                                        <dd><strong>0</strong>원</dd>
                                    </dl>
                                </div>
                                <div class="group_rgt"><a href="#" class="btn_col1" id="link_rpay">결제하기</a></div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>

            <div id="reserveStep03" class="section_step_con step03 ">
                <h3 class="hidden">결제</h3>
            </div>

            <div id="reserveStep04" class="section_step_con step04 ">
                <h3 class="hidden">결제완료</h3>
            </div>

        </div>

    </div>

    <script src="https://www.lottecinema.co.kr/NLCHS/Scripts/Dist/TicketingPersonSeat.bundle.js?v=202111141208"></script>

    <script src="https://www.lottecinema.co.kr/NLCHS/Scripts/Dist/Pagination.bundle.js?v=202111141208"></script>
    <script src="https://www.lottecinema.co.kr/NLCHS/Scripts/Dist/LayoutTopOfTop.bundle.js"></script>
    <script src="https://www.lottecinema.co.kr/NLCHS/Scripts/Dist/LayoutSkipNav.bundle.js?v=202111141208"></script>
    <script src="https://www.lottecinema.co.kr/NLCHS/Scripts/Dist/LayoutHeaderMenu.bundle.js?v=202111141208"></script>
    <script src="https://www.lottecinema.co.kr/NLCHS/Scripts/Dist/LayoutBanner.bundle.js?v=202111141208"></script>
    <script src="https://www.lottecinema.co.kr/NLCHS/Scripts/Dist/LayoutFooter.bundle.js?v=202111141208"></script>

    <script src="https://www.lottecinema.co.kr/NLCHS/Scripts/Dist/LayoutBannerReserve.bundle.js?v=202111141208"></script>

    <iframe title="교차프레임" src="https://www.lottecinema.co.kr/NLCHS/crossd_iframe.html" style="position: absolute; width: 1px; height: 1px; left: -9999px;"></iframe><iframe title="교차프레임" src="https://www.lottecinema.co.kr/NLCHS/crossd_iframe.html" style="position: absolute; width: 1px; height: 1px; left: -9999px;"></iframe><iframe title="교차프레임" src="https://event.lottecinema.co.kr/NLCHS/crossd_iframe.html" style="position: absolute; width: 1px; height: 1px; left: -9999px;"></iframe><iframe title="교차프레임" src="https://event.lottecinema.co.kr/NLCHS/crossd_iframe.html" style="position: absolute; width: 1px; height: 1px; left: -9999px;"></iframe>
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
        if ("https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView" == pathname) {
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
        } else if ("https://www.lottecinema.co.kr/NLCHS/ticketing" == pathname) "string" == typeof params.movieCd && (movieId = params.movieCd, __selperEventType = "AddToCart", __selperProducts.push({
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
        else if ("https://www.lottecinema.co.kr/NLCHS/Ticketing/PaymentResult" == pathname || "https://www.lottecinema.co.kr/NLCHS/ticketing/paymentresult" == pathname.toLowerCase()) {
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