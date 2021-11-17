<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/css/materialize.min.css" />
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
            <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 
            <script src="https://code.jqeury.com/ui/1.12.1/jquery-ui.js"></script>
            <script>
                $(document).ready(function () {
                    $('.slider').slider();
                });
            </script>
        </head>
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
            <div id="contents" class="contents_movie_list">
                <h2 class="hidden">영화목록</h2>
                <div class="movie_screen_box">
                    <ul class="tab_btn_type1">
                        <li class="active">
                            <button type="button" onclick="javascript:location.href='index?formpath=movieManagement';">
                                <span class="now_span" style="color: black;">상영중인 영화 목록</span>
                            </button>
                        </li>
                    </ul>
					<div class="subject __underline" style="border-bottom: 1px solid #000;"></div>
					<br><br>
                    <ul class="movie_list type2" id="nowInfo">
                        <li class="screen_add_box">
                            <div class="movieBg1" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/1984.jpg');" onmouseover="movieOpacity(1);" onmouseout="moiveOpacityReset(1);">
                                <div class="movieBtn1">
                                    <button id="movieReserve_btn" style="display: none;" class="reserve_btn1" onclick="javascript:location.href='index?formpath=ticketing';">영화 정보 수정</button>
                                    <button id="movieDetail_btn" style="display: none;" class="detail_btn1">영화 정보 삭제</button>
                                </div>
                            </div>
                            <div class="btm_info">
                                <strong class="tit_info">1984 최동원</strong>
                                <span class="sub_info1">
                                    <span class="rate_info">예매율 <em>18.4%</em></span>
                                    <span class="star_info">7.2</span>
                                </span>
                            </div>
                        </li>
                        <li class="screen_add_box">
                            <div class="movieBg2" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/adams.jpg');" onmouseover="movieOpacity(2);" onmouseout="moiveOpacityReset(2);">
                                <div class="movieBtn2">
                                    <button id="movieReserve_btn" style="display: none;" class="reserve_btn2" onclick="javascript:location.href='index?formpath=ticketing';">영화 정보 수정</button>
                                    <button id="movieDetail_btn" style="display: none;" class="detail_btn2">영화 정보 삭제</button>
                                </div>
                            </div>
                            <div class="btm_info">
                                <strong class="tit_info">아담스 패밀리2</strong>
                                <span class="sub_info1">
                                    <span class="rate_info">예매율 <em>18.4%</em></span>
                                    <span class="star_info">7.2</span>
                                </span>
                            </div>
                        </li>
                        <li class="screen_add_box">
                            <div class="movieBg3"
                                style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/anne.jpg');" onmouseover="movieOpacity(3);" onmouseout="moiveOpacityReset(3);">
                                <div class="movieBtn3">
                                    <button id="movieReserve_btn" style="display: none;" class="reserve_btn3" onclick="javascript:location.href='index?formpath=ticketing';">영화 정보 수정</button>
                                    <button id="movieDetail_btn" style="display: none;" class="detail_btn3">영화 정보 삭제</button>
                                </div>
                            </div>
                            <div class="btm_info">
                                <strong class="tit_info">아네트</strong>
                                <span class="sub_info1">
                                    <span class="rate_info">예매율 <em>18.4%</em></span>
                                    <span class="star_info">7.2</span>
                                </span>
                            </div>
                        </li>
                        <li class="screen_add_box">
                            <div class="movieBg4" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/billy.jpg');" onmouseover="movieOpacity(4);" onmouseout="moiveOpacityReset(4);">
                                <div class="movieBtn4">
                                    <button id="movieReserve_btn" style="display: none;" class="reserve_btn4" onclick="javascript:location.href='index?formpath=ticketing';">영화 정보 수정</button>
                                    <button id="movieDetail_btn" style="display: none;" class="detail_btn4">영화 정보 삭제</button>
                                </div>
                            </div>
                            <div class="btm_info">
                                <strong class="tit_info">빌리 홀리데이</strong>
                                <span class="sub_info1">
                                    <span class="rate_info">예매율 <em>18.4%</em></span>
                                    <span class="star_info">7.2</span>
                                </span>
                            </div>
                        </li>
                        <li class="screen_add_box">
                            <div class="movieBg5" style="background-size:200px; border-radius:5px; background-image:url('${pageContext.request.contextPath}/resources/images/poster/dun.jpg');" onmouseover="movieOpacity(5);" onmouseout="moiveOpacityReset(5);">
                                <div class="movieBtn5">
                                    <button id="movieReserve_btn" style="display: none;" class="reserve_btn5" onclick="javascript:location.href='index?formpath=ticketing';">영화 정보 수정</button>
                                    <button id="movieDetail_btn" style="display: none;" class="detail_btn5">영화 정보 삭제</button>
                                </div>
                            </div>
                            <div class="btm_info">
                                <strong class="tit_info">듄</strong>
                                <span class="sub_info1">
                                    <span class="rate_info">예매율 <em>18.4%</em></span>
                                    <span class="star_info">7.2</span>
                                </span>
                            </div>
                        </li>
                </div>
                <br>
                <h2 class="hidden">영화정보 넣기</h2>
                <div class="movie_input_box">
                	<ul class="tab_btn_type1">
                        <li class="active">
                            <button type="button" onclick="javascript:location.href='index?formpath=movieManagement';">
                                <span class="now_span" style="color: black;">영화 정보 넣기</span>
                            </button>
                        </li>
                    </ul>
                    <div class="subject __underline" style="border-bottom: 1px solid #000;"></div><br>
                    	<div class= "input_field" style ="width: 60%">
							<label style="padding-right: 50px">영화 이름</label>
							<input type="text" placeholder="영화 이름을 입력하세요." maxlength="40" id="input-movie-name">
						<br>
							<label style="padding-right: 50px">영화 장르</label>
							<input type="text" placeholder="영화 장르를 입력하세요." maxlength="20" id="input-movie-genre">
						<br>
							<label style="padding-right: 50px">영화 감독</label>
							<input type="text" placeholder="영화 감독을 입력하세요." maxlength="10" id="input-movie-director">
						<br>
							<label style="padding-right: 50px">영화 연령</label>
							<input type="text" placeholder="영화 연령을 입력하세요." maxlength="20" id="input-movie-age">
						<br>
							<label style="padding-right: 50px">영화 국가</label>
							<input type="text" placeholder="영화 국가를 입력하세요." maxlength="20" id="input-movie-country">
						<br>
							<label style="padding-right: 50px">영화 시간</label>
							<input type="number" placeholder="영화 러닝 타임을 입력하세요." maxlength="20" id="input-movie-time">
						<br>
							<label style="padding-right: 38px">영화 출연자</label>
							<input type="text" placeholder="영화 출연자를 입력하세요." maxlength="20" id="input-movie-performer">
						<br>
							<label style="padding-right: 38px">영화 개봉일</label>
							<input type="date" placeholder="영화 개봉일을 선택하세요." id="input-movie-openDate">
						<br>
							<label style="padding-right: 38px">영화 상세 설명</label>
							<textarea rows="30" cols="60" name="contents"; style="min-height: 50px;" placeholder="영화 설명을 입력하세요." id="input-movie-explanation"></textarea>
						<br>
					</div>
					<input type="button" value="영화 등록" onclick="InputMovieInfo()" style=" width:200px; height:100px; margin: -400px 0 0 700px; background-color: gray; text-align : center; border-color: transparent; color: white; font-weight: bold; cursor:  pointer;">
            	</div>
        </body>
        
        <script src="<c:url value="/resources/js/movie.js" />"></script>

        </html>