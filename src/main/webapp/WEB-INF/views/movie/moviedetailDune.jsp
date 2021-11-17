<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/customer.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/moviedetail.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/css/materialize.min.css" />

<script src="<c:url value="/resources/js/moviedetail.js" />"></script>
<c:url var="root" value="/"/>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.96.1/js/materialize.min.js"></script>
<title>영화 - 상세정보</title>




<body>
<script>
$(document).ready(function(){
  $('.slider').slider();
});
</script>
<div class="slider" style="z-index: 1;">
		<ul class="slides" style="height: 600px;">
			<li>
				<div class="boxBg1">
					<img src="${pageContext.request.contextPath}/resources/images/stillcut/dune_1.jpg">
					<div class="caption center-align"></div>
				</div>	
			</li>
			<li>
				<div class="boxBg2">
					<img src="${pageContext.request.contextPath}/resources/images/stillcut/dune_2.jpg">
					<div class="caption center-align"></div>
				</div>	
			</li>
			<li>
				<div class="boxBg3">
					<img src="${pageContext.request.contextPath}/resources/images/stillcut/dune_3.jpg">
					<div class="caption center-align"></div>
				</div>	
			</li>
			<li>
				<div class="boxBg4">
					<img src="${pageContext.request.contextPath}/resources/images/stillcut/dune_4.jpg">
					<div class="caption center-align"></div>
				</div>	
			</li>
			<li>
				<div class="boxBg5">
					<img src="${pageContext.request.contextPath}/resources/images/stillcut/dune_5.jpg">
					<div class="caption center-align"></div>
				</div>	
			</li>
			<li>
				<div class="boxBg6">
					<img src="${pageContext.request.contextPath}/resources/images/stillcut/dune_6.jpg">
					<div class="caption center-align"></div>
				</div>	
			</li>
			<li>
				<div class="boxBg7">
					<img src="${pageContext.request.contextPath}/resources/images/stillcut/dune_7.jpg">
					<div class="caption center-align"></div>
				</div>	
			</li>
			<li>
				<div class="boxBg8">
					<img src="${pageContext.request.contextPath}/resources/images/stillcut/dune_8.jpg">
					<div class="caption center-align"></div>
				</div>	
			</li>
			<li>
				<div class="boxBg9">
					<img src="${pageContext.request.contextPath}/resources/images/stillcut/dune_9.jpg">
					<div class="caption center-align"></div>
				</div>	
			</li>
			<li>
				<div class="boxBg10">
					<img src="${pageContext.request.contextPath}/resources/images/stillcut/dune_10.jpg">
					<div class="caption center-align"></div>
				</div>	
			</li>
			
		</ul>
	</div>

	<!-- 로드 후 js작동! -->	
	<script src="<c:url value="/resources/js/main.js" />"></script>
	
	<div class="empty_space">
		
		
		
	</div>
	<div id="contents" class="contents_movie_detail">
		<div class="detail_top_wrap">
			<div class="poster_info">
				 <img src="${pageContext.request.contextPath}/resources/images/poster/dun.jpg"> 
			</div>
			<div class="tit_info">
				<img src="${pageContext.request.contextPath}/resources/images/icon/12_0.png"> 
				<strong>Dune</strong>
			</div>
			<ul class="detail_info1">
				<li class="sub_info1" style="cursor: pointer;">
					<em>관람객 평점</em>
						<strong class="txt_ic_score ty2">
							<em>평점</em>
							<strong>0</strong>
						</strong>
				</li>
				<li class="sub_info2">
				<em>
					예매율
					4
					위
				</em>
					<strong>
					17%
					</strong>
				</li>
				
			</ul>
			<ul class="detail_info2">
				<li class="sub_info1">
				<strong>장르</strong>
					<strong>
					<em>
					판타지
					, 액션
					/ 한국
					</em>
					<em>
					2021.10.20개봉
					</em>
					<em class="time_info">
					155
					분
					</em>
					</strong>
				</li>
				<li class="sub_info2">
				<em>감독</em>
				 	<strong class="line_type">
				 	<a href="#none">드니 빌뇌브</a>
				 	</strong>
				</li>
				<li class="sub_info3">
					<em>출연</em>
						<strong class="line_type">
						<a href="#none">티모시 샬라메</a>
						, 
						<a href="#none">레베카 퍼커슨</a>
						, 
						<a href="#none">오스카 아이삭</a>
						, 
						<a href="#none">제이슨 모모아</a>
						, 
						<a href="#none">조슈 브롤린</a>
						, 
						<a href="#none">젠데이아</a>
						, 
						<a href="#none">하비에르 바르뎀</a>
						</strong>
				
				</li>
			</ul>
			<div class="movie_detail_aside_menu">
			<ul>
				<li>
					<button type="button" class="btn_ic_share">
						<em>공유하기</em>
					</button>
					<div id="layerShare" class="layer_wrap layer_share"></div>
				</li>
				<li>
					<button type="button" id="mylikemovie" class="btn_ic_wish">
						<strong>좋아요</strong>
						<img src="${pageContext.request.contextPath}/resources/images/icon/heart_bdr_26_off.png"> 
						</button>
				</li>
				<li class="area_reserve">
				<a href="https://www.lottecinema.co.kr/NLCHS/ticketing?movieCd=18093&amp;movieName=유체이탈자" class="btn_col1 ty7 rnd">예매하기</a>
				</li>
			</ul>
		</div>
	</div>
			<ul class="tab_wrap_outer">
				<li class="active">
					<button type="button" class="tab_tit" style="width: 50%; left: 0%;">
					<span>영화정보</span>
					</button>>				
						<div class="tab_con">
							<h4 class="hidden">영화정보</h4>
							<div class="movie_tab_info1">
								<div class="left_con">
									<strong class="tit_info">시놉시스</strong>
											<div class="mCustomScrollbar _mCS_1 mCS-autoHide" data-mcs-theme="minimal-dark" style="position: relative; overflow: visible;">
												<div id="mCSB_1" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" style="max-height: none;" tabindex="0">
													<div id="mCSB_1_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr">
														<p class="txt_info">
															<span>
															<b> “듄을 지배하는 자가 우주를 지배한다!” </b>
															<br>
															<br>
															10191년, 아트레이데스 가문의 후계자인 폴(티모시 샬라메)은
															<br>
															시공을 초월한 존재이자 
															<br>
															전 우주를 구원할 예지된 자의 운명을 타고났다. 
															<br>
															그리고 어떤 계시처럼 매일 꿈에서
															<br>
															아라키스 행성에 있는 한 여인을 만난다. 
															<br>
															모래언덕을 뜻하는 '듄'이라 불리는 아라키스는
															<br>
															물 한 방울 없는 사막이지만 
															<br>
															우주에서 가장 비싼 물질인 신성한 환각제 스파이스의 유일한 생산지로<br>
															이를 차지하기 위한 전쟁이 치열하다. 
															<br>
															황제의 명령으로 폴과 아트레이데스 가문은
															<br>
															죽음이 기다리는 아라키스로 향하는데…
															<br>
															<br>
															위대한 자는 부름에 응답한다, 두려움에 맞서라, 이것은 위대한 시작이다!
															</span>
														</p>
													</div>
												</div>
											<div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: block;">
												<div class="mCSB_draggerContainer">
													<div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; display: block; height: 31px; max-height: 81px; top: 0px;">
														<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
													</div>
													<div class="mCSB_draggerRail"></div>
												</div>
											</div>
										</div>					
								</div>
								
						</div>
					</div>
					
				</li>
				<li class="active">
					<button type="button" class="tab_tit" style="width: 50%; left: 50%;">
						<span>평점 및 관람평 (3,021)</span>
					</button>
					<div class="tab_con">
						<h4 class="hidden">평점 및 관람평</h4>
							<div class="movi_score_box">
								<span class="txt_ic_score2 ty3">
									<em>총 평점</em>
									<strong>8</strong>
									<span>10</span>
								</span>
								<p class="txt_info">
									<span>영화 관람 후 관람평을 작성해주세요.
								
									</span>
								</p>
							</div>
						<div class="movi_review_box" id="movie_review_box">
							<div class="star_score_box ">
								<strong class="score_info">
								<em>10</em> 
								점
								</strong>
									<div class="star_info">
										<div class="star_rate">
											<button type="button" class="star on">
												<em>별1점</em>
											</button>
											<button type="button" class="star on">
												<em>별2점</em>
											</button>
											<button type="button" class="star on">
												<em>별3점</em>
											</button>
											<button type="button" class="star on">
												<em>별4점</em>
											</button>
											<button type="button" class="star on">
												<em>별5점</em>
											</button>
											<button type="button" class="star on">
												<em>별6점</em>
											</button>
											<button type="button" class="star on">
												<em>별7점</em>
											</button>
											<button type="button" class="star on">
												<em>별8점</em>
											</button><button type="button" class="star on">
												<em>별9점</em>
											</button>
											<button type="button" class="star on">
											<em>별10점</em>
											</button>
										</div>
									</div>
								</div>
								<div class="review_write_box">
									<textarea id="txtComment" placeholder="평점 및 영화 관람평을 작성해주세요.
									주제와 무관한 리뷰 또는 스포일러는 표시제한 또는 삭제될 수 있습니다." 
									title="관람평 작성">
									</textarea>
										<span class="byte_info">
											<strong class="byte">0</strong>
											/
											<em>220</em>
										</span>
								</div>
								<button type="submit" id="btnComment" class="btn_submit">관람평 작성</button>
						</div>
						<div class="movi_review_list">
							<h5 class="hidden">관람평 목록</h5>
								<div class="review_top">
									<div class="total_info">
									총 
									<em>3,021</em>
									건
									</div>
										<ul class="sort_list">
											<li id="reviewsortseq1" class="active">
												<button>최신순</button>
											</li>
											<li id="reviewsortseq3">
												<button>공감순</button>
											</li>
										</ul>
								</div>
										<ul class="review_con_list" id="review_con_list1"></ul>
										<ul class="review_con_list" id="review_con_list2">
											<li>
												<span class="img_info">
												<img src="${pageContext.request.contextPath}/resources/images/icon/angry.png" alt="">
												</span>
												<div class="top_info">
													<span class="name_info">이*찬</span>
													<span class="txt_ic_score ty2">
													<em>평점</em>
													<strong>1 </strong>
													</span>
													<span class="">
													</span>
												</div>
												<div class="review_info">마블같은 영화라고 생각하시고 보시면 진짜 큰코 다칩니다. 잠 미리 다 주무시고 들어가세요. 재밌는 부분이 없어서 젠다이아 나오는 부분에서 반가움에 웃음 지었습니다^^
												</div>
												<div class="btm_info">
												<span class="date_info">2021.11.18 </span>
												<button type="button" class="btn_ic_good" id="reviewid_2525249">
												<em>좋아요</em>
												<span id="recommandcount_2525249">0</span>
												</button>
												</div>
											</li>
											<li>
												<span class="img_info">
												<img src="${pageContext.request.contextPath}/resources/images/icon/angry.png" alt="">
												</span>
												<div class="top_info">
												<span class="name_info">장*호</span>
												<span class="txt_ic_score ty2">
												<em>평점</em>
												<strong>2 </strong>
												</span>
												<span class=""></span>
												</div>
												<div class="review_info">3시간짜리 예고편 </div>
												<div class="btm_info">
													<span class="date_info">2021.11.18 </span>
													<button type="button" class="btn_ic_good" id="reviewid_2525246">
													<em>좋아요</em>
													<span id="recommandcount_2525246">0</span>
													</button>
												</div>
											</li>
											<li>
											<span class="img_info">
												<img src="${pageContext.request.contextPath}/resources/images/icon/smile.png" alt="">
											</span><div class="top_info"><span class="name_info">김*희</span><span class="txt_ic_score ty2"><em>평점</em><strong>8 </strong></span><span class=""></span></div><div class="review_info">졸릴만 하면 음악이 웅장해지면서 나를 깨워줌 세계관을 자세하게 설명해주는데 다소 지루함 </div><div class="btm_info"><span class="date_info">2021.11.18 </span><button type="button" class="btn_ic_good" id="reviewid_2525243"><em>좋아요</em><span id="recommandcount_2525243">0</span></button></div></li><li><span class="img_info"><img src="../Content/images/customer/ic_survey_01.png" alt=""></span><div class="top_info"><span class="name_info">박*향</span><span class="txt_ic_score ty2"><em>평점</em><strong>10 </strong></span><span class=""></span></div><div class="review_info">사운드가 진짜 최고!!
영화속 분위기랑 저렇게 까지 표현 가능한게 놀랐습니다. </div><div class="btm_info"><span class="date_info">2021.11.18 </span><button type="button" class="btn_ic_good" id="reviewid_2525223"><em>좋아요</em><span id="recommandcount_2525223">0</span></button></div></li><li><span class="img_info"><img src="../Content/images/customer/ic_survey_01.png" alt=""></span><div class="top_info"><span class="name_info">조*영</span><span class="txt_ic_score ty2"><em>평점</em><strong>10 </strong></span><span class=""></span></div><div class="review_info">영상과 음악이 좋았습니다 다음 편도 기대되네요 </div><div class="btm_info"><span class="date_info">2021.11.18 </span><button type="button" class="btn_ic_good" id="reviewid_2525215"><em>좋아요</em><span id="recommandcount_2525215">0</span></button></div></li><li><span class="img_info"><img src="../Content/images/customer/ic_survey_02.png" alt=""></span><div class="top_info"><span class="name_info">이*희</span><span class="txt_ic_score ty2"><em>평점</em><strong>8 </strong></span><span class=""></span></div><div class="review_info">다음편이 꼭 나왔으면 좋겠다. </div><div class="btm_info"><span class="date_info">2021.11.17 </span><button type="button" class="btn_ic_good" id="reviewid_2525202"><em>좋아요</em><span id="recommandcount_2525202">0</span></button></div></li><li><span class="img_info"><img src="../Content/images/customer/ic_survey_01.png" alt=""></span><div class="top_info"><span class="name_info">최*배</span><span class="txt_ic_score ty2"><em>평점</em><strong>10 </strong></span><span class=""></span></div><div class="review_info">재밋어요 2편이 더기대되요 </div><div class="btm_info"><span class="date_info">2021.11.17 </span><button type="button" class="btn_ic_good" id="reviewid_2525187"><em>좋아요</em><span id="recommandcount_2525187">0</span></button></div></li><li><span class="img_info"><img src="../Content/images/customer/ic_survey_01.png" alt=""></span><div class="top_info"><span class="name_info">남0911</span><span class="txt_ic_score ty2"><em>평점</em><strong>10 </strong></span><span class=""></span></div><div class="review_info">꿀잼입니다 꼭 보세요  </div><div class="btm_info"><span class="date_info">2021.11.17 </span><button type="button" class="btn_ic_good" id="reviewid_2525183"><em>좋아요</em><span id="recommandcount_2525183">0</span></button></div></li><li><span class="img_info"><img src="../Content/images/customer/ic_survey_01.png" alt=""></span><div class="top_info"><span class="name_info">이*지</span><span class="txt_ic_score ty2"><em>평점</em><strong>10 </strong></span><span class=""></span></div><div class="review_info">올해 본 최고 
영상 음악 영화
소년에서 영웅으로 성장하는 티모시의 매력이 돋보였다. 원작을 읽고 싶다 </div><div class="btm_info"><span class="date_info">2021.11.17 
</span><button type="button" class="btn_ic_good" id="reviewid_2525179"><em>좋아요</em><span id="recommandcount_2525179">0</span>
</button>
</div>
</li>
</ul>
					</div>
				</div>
			</li>
			</ul>
		
		
	</div>
	
		
		

	
</body>