<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>롯지브이</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />
</head>
<body>
	<div id="contents" class="contents_customer">
		<div class="title_top">
			<h2 class="tit">회원관리</h2>
		</div>
			<ul class="tab_wrap outer">
				<li class="active">
					<div class="tab_con ty2">
						<h3 class="hidden">FAQ</h3>
						<fieldset class="search_wrap ty2">
							<legend>영화관 FAQ 검색하기</legend>
							<input type="text" placeholder="검색어를 입력해주세요." id="searchKeyword" title="검색어를 입력해주세요">
							<button type="button" class="btn_col2">검색</button>
						</fieldset>
						<table class="tb_acc_wrap" summary="FAQ 표입니다. 구분, 질문 순서로 행이 구성되어 있습니다.">
							<caption>FAQ</caption>
							<colgroup>
								<col style="width: 20%;">
								<col style="width: auto;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col" id="thead0">구분</th>
									<th scope="col" id="thead1">질문</th>
								</tr>
							</thead>
							<tbody id="tab">
								<tr class="acc_head" aria-expanded="false" role="button" id="tr_180">
									<td id="row0" headers="thead0"> 영화관 이용 </td>
									<td headers="thead1 row0" class="text_l">
										<a href="#none" class="ic_q" title="열기"><strong class="txt_qna q"><span>질문</span></strong>영화 경품(굿즈) 수량 확인은 어떻게 하나요?</a>
									</td>
								</tr>
								<tr class="acc_body" role="region" id="tr2_180">
									<td colspan="2" headers="thead1 row0">
										<div class="ic_a">
											<strong class="txt_qna a"><span>답변</span></strong>
											<div>
												<p><span style="FONT-SIZE: 15px; FONT-FAMILY: &quot;Noto Sans KR&quot;, Roboto, dotum, sans-serif; WHITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FLOAT: none; FONT-WEIGHT: 400; COLOR: rgb(0,0,0); FONT-STYLE: normal; TEXT-ALIGN: left; ORPHANS: 2; WIDOWS: 2; DISPLAY: inline !important; LETTER-SPACING: 0px; BACKGROUND-COLOR: rgb(248,248,248); TEXT-INDENT: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial"><font size="1" face="맑은 고딕">■ 영화 경품(굿즈) 수량 확인 방법 </font></span></p>
												<p><span style="FONT-SIZE: 15px; FONT-FAMILY: &quot;Noto Sans KR&quot;, Roboto, dotum, sans-serif; WHITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FLOAT: none; FONT-WEIGHT: 400; COLOR: rgb(0,0,0); FONT-STYLE: normal; TEXT-ALIGN: left; ORPHANS: 2; WIDOWS: 2; DISPLAY: inline !important; LETTER-SPACING: 0px; BACKGROUND-COLOR: rgb(248,248,248); TEXT-INDENT: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial"><font size="1" face="맑은 고딕"></font></span>&nbsp;</p>
												<p><span style="FONT-SIZE: 15px; FONT-FAMILY: &quot;Noto Sans KR&quot;, Roboto, dotum, sans-serif; WHITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FLOAT: none; FONT-WEIGHT: 400; COLOR: rgb(0,0,0); FONT-STYLE: normal; TEXT-ALIGN: left; ORPHANS: 2; WIDOWS: 2; DISPLAY: inline !important; LETTER-SPACING: 0px; BACKGROUND-COLOR: rgb(248,248,248); TEXT-INDENT: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial"><font size="1" face="맑은 고딕">· 각 영화 경품(굿즈) 증정&nbsp;이벤트 페이지 하단 [잔여수량확인] 탭을 통해 확인 가능합니다.</font></span></p>
												<p><span style="FONT-SIZE: 15px; FONT-FAMILY: &quot;Noto Sans KR&quot;, Roboto, dotum, sans-serif; WHITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FLOAT: none; FONT-WEIGHT: 400; COLOR: rgb(0,0,0); FONT-STYLE: normal; TEXT-ALIGN: left; ORPHANS: 2; WIDOWS: 2; DISPLAY: inline !important; LETTER-SPACING: 0px; BACKGROUND-COLOR: rgb(248,248,248); TEXT-INDENT: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial"><font size="1" face="맑은 고딕">- [홈페이지/모바일] &gt; [이벤트] &gt; [영화] &gt; 이벤트페이지 클릭 후 하단의 [잔여수량확인] 탭 확인</font></span></p>
												<p><span style="FONT-SIZE: 15px; FONT-FAMILY: &quot;Noto Sans KR&quot;, Roboto, dotum, sans-serif; WHITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FLOAT: none; FONT-WEIGHT: 400; COLOR: rgb(0,0,0); FONT-STYLE: normal; TEXT-ALIGN: left; ORPHANS: 2; WIDOWS: 2; DISPLAY: inline !important; LETTER-SPACING: 0px; BACKGROUND-COLOR: rgb(248,248,248); TEXT-INDENT: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial"><font size="1" face="맑은 고딕">· 영화 경품(굿즈) 증정 이벤트를 진행하는 영화관에 한해 조회가 가능합니다. </font></span></p>
												<p><span style="FONT-SIZE: 15px; FONT-FAMILY: &quot;Noto Sans KR&quot;, Roboto, dotum, sans-serif; WHITE-SPACE: normal; WORD-SPACING: 0px; TEXT-TRANSFORM: none; FLOAT: none; FONT-WEIGHT: 400; COLOR: rgb(0,0,0); FONT-STYLE: normal; TEXT-ALIGN: left; ORPHANS: 2; WIDOWS: 2; DISPLAY: inline !important; LETTER-SPACING: 0px; BACKGROUND-COLOR: rgb(248,248,248); TEXT-INDENT: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial"><font size="1" face="맑은 고딕">· 이벤트 페이지를 통해 확인한 영화 경품(굿즈) 잔여수량은 현장 방문시점과 상이할 수 있습니다.</font>&nbsp;</span></p>
											</div>
										</div>
									</td>
								</tr>
								<tr class="acc_head" aria-expanded="false" role="button" id="tr_150">
									<td id="row0" headers="thead0"> 영화관 이용 </td>
									<td headers="thead1 row0" class="text_l"><a href="#none" class="ic_q" title="열기"><strong class="txt_qna q"><span>질문</span></strong>카드로 결제할 경우 환불은 언제 되나요?</a></td>
								</tr>
								<tr class="acc_body" role="region" id="tr2_150">
									<td colspan="2" headers="thead1 row0">
										<div class="ic_a"><strong class="txt_qna a"><span>답변</span></strong>
											<div>■ 환불안내<br>&nbsp;<br>ㆍ 신용카드<br>&nbsp;- 결제 후 3일 이내 취소시 승인취소 가능합니다.<br>&nbsp;<font color="#ff0000">- 3일 이후 예매 취소 시 영업일 기준 3일 ~7일 이내 카드사에서 환불됩니다.</font><br>&nbsp;<br>ㆍ 체크카드<br>&nbsp;- 결제 후 3일 이내 취소 시 당일 카드사에서 환불 처리됩니다.<br>&nbsp;<font color="#ff0000">- 3일 이후 예매 취소 시 카드사에 따라 3일 ~ 10일 이내 카드사에서 환불됩니다.<br></font>&nbsp;<br>ㆍ 휴대폰 결제<br>&nbsp;<font color="#ff0000">- 결제 일자 기준 당월(1일~말일까지) 취소만 가능합니다.<br></font>&nbsp;- 익월 취소의 경우 롯데시네마 고객센터(1544-8855)로 문의 주시기 바랍니다.<br><br>ㆍ카카오페이 간편결제<br>&nbsp;- 카카오페이머니를 사용하신 경우 카카오페이머니 잔액으로 원복됩니다.<br>&nbsp;- 카드 결제를 한 경우 카드사 정책에 따라 승인취소가 진행되며,<br>&nbsp;&nbsp;&nbsp; 3일 이후 매입 취소 시 영업일 기준 3~10일 소요됩니다. <br><br>ㆍ페이코 간편결제<br>&nbsp; - PAYCO 쿠폰/포인트를 사용하신 경우 각각의 쿠폰/포인트로 원복됩니다.&nbsp;<br>&nbsp; - 카드 결제 금액은 카드사 정책에 따라 승인취소가 진행되며,<br>&nbsp;&nbsp;&nbsp; 3일 이후 매입취소 시 영업일 기준 3~10일 소요됩니다.</div>
										</div>
									</td>
								</tr>
								<tr class="acc_head" aria-expanded="false" role="button" id="tr_141">
									<td id="row0" headers="thead0"> 영화관 이용 </td>
									<td headers="thead1 row0" class="text_l"><a href="#none" class="ic_q" title="열기"><strong class="txt_qna q"><span>질문</span></strong>국가유공자 할인은 어떻게 받나요?</a></td>
								</tr>
								<tr class="acc_body" role="region" id="tr2_141">
									<td colspan="2" headers="thead1 row0">
										<div class="ic_a"><strong class="txt_qna a"><span>답변</span></strong>
										<div>
											<p class="MsoListParagraph" style="MARGIN: 0cm 0cm 0pt 38pt; TEXT-INDENT: -18pt; mso-para-margin-left: 0gd; mso-list: l0 level1 lfo1"><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">국가유공자임을</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">증명할</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">수</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">있는</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><font color="#000000"><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font color="#000000" face="맑은 고딕">국가유공자증</font></span><span><font color="#000000">, <font face="맑은 고딕">국가유공자</font> <font face="맑은 고딕">유족증</font></font> </span></font></p>
											<p class="MsoListParagraph" style="MARGIN: 0cm 0cm 0pt 38pt; TEXT-INDENT: -18pt; mso-para-margin-left: 0gd; mso-list: l0 level1 lfo1"><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"></span><font color="#000000"><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">소지자</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">본인에</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">한해 </font></span><span><font face="맑은 고딕">일반</font> 2D </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">영화</font></span><span lang="EN-US" style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> 5</span></font><font color="#000000"><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">천원</font></span><span lang="EN-US" style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt">, </span><font color="#000000"><span>3D <font face="맑은 고딕">영화</font> 8<font face="맑은 고딕">천원</font></span></font><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">관람이</font></span></font><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">가능합니다</font></span><span lang="EN-US" style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt">.</span></p>
											<p class="MsoListParagraph" style="MARGIN: 0cm 0cm 0pt 38pt; TEXT-INDENT: -18pt; mso-para-margin-left: 0gd; mso-list: l0 level1 lfo1"><span lang="EN-US" style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"></span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕"></font></span>&nbsp;</p>
											<p class="MsoListParagraph" style="MARGIN: 0cm 0cm 0pt 38pt; TEXT-INDENT: -18pt; mso-para-margin-left: 0gd; mso-list: l0 level1 lfo1"><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">국가유공자</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">할인의</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">경우</font></span><span lang="EN-US" style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt">, </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">온라인</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">예매</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">시에는</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">할인</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">적용이</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">불가하며</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">영화관</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">현장에서</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span></p>
											<p class="MsoListParagraph" style="MARGIN: 0cm 0cm 0pt 38pt; TEXT-INDENT: -18pt; mso-para-margin-left: 0gd; mso-list: l0 level1 lfo1"><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">예매할</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">시에만</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">할인</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">가능합니다</font></span><span lang="EN-US" style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt">. </span></p>
											<p class="MsoListParagraph" style="MARGIN: 0cm 0cm 0pt 38pt; TEXT-INDENT: -18pt; mso-para-margin-left: 0gd; mso-list: l0 level1 lfo1"><span lang="EN-US" style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"></span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕"></font></span>&nbsp;</p>
											<p class="MsoListParagraph" style="MARGIN: 0cm 0cm 0pt 38pt; TEXT-INDENT: -18pt; mso-para-margin-left: 0gd; mso-list: l0 level1 lfo1"><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">또한</font></span><span lang="EN-US" style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt">, </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">국가유공상이자는</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">장애인석을</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">이용하실</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">수</font></span><span style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"> </span><span style="FONT-SIZE: 11.5pt; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt"><font face="맑은 고딕">있습니다</font></span><span lang="EN-US" style="FONT-SIZE: 11.5pt; FONT-FAMILY: &quot;Arial&quot;,sans-serif; BACKGROUND: #f8f8f8; COLOR: black; LETTER-SPACING: -0.25pt">.<!--?xml:namespace prefix = "o" ns = "urn:schemas-microsoft-com:office:office" /--><o:p></o:p></span></p>
										</div>
										</div>
									</td>
								</tr>
								<tr class="acc_head" aria-expanded="false" role="button" id="tr_79">
									<td id="row0" headers="thead0"> 영화관 이용 </td>
									<td headers="thead1 row0" class="text_l"><a href="#none" class="ic_q" title="열기"><strong class="txt_qna q"><span>질문</span></strong>SWEET SPOT이 무엇인가요?</a></td>
								</tr>
								<tr class="acc_body" role="region" id="tr2_79">
									<td colspan="2" headers="thead1 row0">
									<div class="ic_a"><strong class="txt_qna a"><span>답변</span></strong>
										<div>
											<p>SWEET SPOT이란, 스크린 가운데에서 상영관 뒤 벽까지 직선 거리의 2/3 지점으로, 롯데시네마가 추천하는 최적의 화면과 사운드를 즐길 수 있는 좌석입니다.</p>
											<p><font color="#ff0000">별도의 추가 요금은 없습니다.</font></p>
										</div>
									</div>
									</td>
								</tr>
								<tr class="acc_head" aria-expanded="false" role="button" id="tr_78">
									<td id="row0" headers="thead0"> 영화관 이용 </td>
									<td headers="thead1 row0" class="text_l"><a href="#none" class="ic_q" title="열기"><strong class="txt_qna q"><span>질문</span></strong>분실물을 찾고 싶어요.</a></td>
								</tr>
								<tr class="acc_body" role="region" id="tr2_78">
									<td colspan="2" headers="thead1 row0">
										<div class="ic_a"><strong class="txt_qna a"><span>답변</span></strong>
											<div>영화관을 이용하시다가 소지물품을 분실하신 경우에는 롯데시네마 통합콜센터 1544-8855로 연락하시어 확인 하시거나, 롯데시네마 홈페이지 고객센터 - 분실물안내에서 분실물 접수 혹은 확인을 하실 수 있습니다.</div>
										</div>
									</td>
								</tr>
								<tr class="acc_head" aria-expanded="false" role="button" id="tr_77">
									<td id="row0" headers="thead0"> 영화관 이용 </td>
									<td headers="thead1 row0" class="text_l"><a href="#none" class="ic_q" title="열기"><strong class="txt_qna q"><span>질문</span></strong>단체 관람의 경우 할인 혜택이 어떻게 되나요?</a></td>
								</tr>
								<tr class="acc_body" role="region" id="tr2_77">
									<td colspan="2" headers="thead1 row0">
										<div class="ic_a"><strong class="txt_qna a"><span>답변</span></strong>
											<div>
												<p>단체 관람의 경우, 20명 이상 티켓 구매 시 1인당 1,000원씩 할인 혜택을 받으실 수 있습니다. </p>
												<p>단체 관람과 관련하여 문의가 있으실 경우 롯데시네마 통합콜센터 1544-8855로 연락하시거나 롯데시네마 [홈페이지] → [고객센터] → [단체관람/대관문의]로 내용 접수해주시기 바랍니다.</p>
												<p>※ 조조, 심야, 문화의 날, 공휴일, 주말 등 일부는 제외될 수 있습니다.<br>※ 영화관 별로 단체 관람 대상 인원수 및 할인 혜택에 일부 차이가 있을 수 있습니다.</p>
											</div>
										</div>
									</td>
								</tr>
								<tr class="acc_head" aria-expanded="false" role="button" id="tr_76">
									<td id="row0" headers="thead0"> 영화관 이용 </td>
									<td headers="thead1 row0" class="text_l"><a href="#none" class="ic_q" title="열기"><strong class="txt_qna q"><span>질문</span></strong>장애인 할인 혜택에 대해 알려 주세요.</a></td>
								</tr>
								<tr class="acc_body" role="region" id="tr2_76">
									<td colspan="2" headers="thead1 row0">
										<div class="ic_a"><strong class="txt_qna a"><span>답변</span></strong>
										<div>
											<p>'일반 2D 영화 : 5,000원 관람, 3D 영화 : 8,000원 관람이 가능합니다.</p>
											<p>온라인으로 예매를 하셨더라도, 티켓 발권을 위해 복지카드를 가지고 영화관 인포메이션 데스크를 방문해주셔야 합니다.<br>(중증 : 동반 1인 포함 할인 가능/&nbsp;경증 : 본인만 할인 가능)</p>
										</div>
										</div>
									</td>
								</tr>
								<tr class="acc_head" aria-expanded="false" role="button" id="tr_75">
									<td id="row0" headers="thead0"> 영화관 이용 </td>
									<td headers="thead1 row0" class="text_l"><a href="#none" class="ic_q" title="열기"><strong class="txt_qna q"><span>질문</span></strong>시니어 할인 혜택에 대해 알려 주세요.</a></td>
								</tr>
								<tr class="acc_body" role="region" id="tr2_75">
									<td colspan="2" headers="thead1 row0">
										<div class="ic_a"><strong class="txt_qna a"><span>답변</span></strong>
											<div>
												<p>만 65세 이상의 시니어 고객님들에게 할인 혜택을 제공하고 있습니다.<br>-일반 2D 영화 : 7,000원<br>-3D 영화 : 9,000원<br><font color="#ff0000">티켓발권을 위해 본인의 신분증(만 65세 이상)을 가지고 영화관 인포메이션 데스크를 방문해주셔야 합니다. 타인의 신분증 제시 시 입장에 제한이 있을 수 있으므로, 반드시 입장하시는 당사자 본인의 신분증을 지참해주시기 바랍니다. (온라인 예매 시에도 동일 정책 적용)</font></p>
											</div>
										</div>
									</td>
								</tr>
								<tr class="acc_head" aria-expanded="false" role="button" id="tr_39">
									<td id="row0" headers="thead0"> 영화관 이용 </td>
									<td headers="thead1 row0" class="text_l"><a href="#none" class="ic_q" title="열기"><strong class="txt_qna q"><span>질문</span></strong>결제(예매) 및 취소 규정 안내</a></td>
								</tr>
								<tr class="acc_body" role="region" id="tr2_39">
									<td colspan="2" headers="thead1 row0">
										<div class="ic_a"><strong class="txt_qna a"><span>답변</span></strong>
											<div>
												<p>■ 예매 시<br>ㆍ 홈페이지 예매 시 → 영화 시작시간 20분 전까지 예매 가능합니다.<br>ㆍ 모바일 앱/웹 예매 시 → 영화 시작시간까지 예매 가능합니다.<br>ㆍ 현장 →&nbsp; 영화 시작시간까지 예매 가능합니다.</p>
												<p>■ 취소 시<br>ㆍ 홈페이지 취소 시 → 영화 시작시간 20분 전까지 취소 가능합니다.<br>ㆍ 모바일 앱/웹 예매 시 → 영화 시작시간 20분 전까지 취소 가능합니다.<br>ㆍ 현장 →&nbsp; 영화 시작시간 직전까지 취소 가능합니다.</p>
												<p>※ 무대인사가 포함된 영화의 경우 행사의 원활한 진행을 위해 상영시간 24시간 이전부터는 취소가 불가합니다.</p>
											</div>
										</div>
									</td>
								</tr>
								<tr class="acc_head" aria-expanded="false" role="button" id="tr_35">
									<td id="row0" headers="thead0"> 영화관 이용 </td>
									<td headers="thead1 row0" class="text_l"><a href="#none" class="ic_q" title="열기"><strong class="txt_qna q"><span>질문</span></strong>관람등급 안내</a></td>
								</tr>
								<tr class="acc_body" role="region" id="tr2_35">
									<td colspan="2" headers="thead1 row0">
										<div class="ic_a"><strong class="txt_qna a"><span>답변</span></strong>
											<div>
												<p>롯데시네마는 영화 및 비디오 진흥에 관한 법률(이하 영비법)을 준수합니다.</p>
												<p>■ 등급 기준<br>ㆍ 전체 관람가 : 모든 연령의 관람객이 관람할 수 있는 영화<br>ㆍ 12세 관람가 : 만 12세 미만의 관람객은 관람할 수 없는 영화(보호자 동반 시 12세 미만 관람가)<br>ㆍ 15세 관람가 : 만 15세 미만의 관람객은 관람할 수 없는 영화(보호자 동반 시 15세 미만 관람가)<br>ㆍ 청소년 관람불가 : 만 18세 미만의 관람객은 관람할 수 없는 영화</p>
												<p>영비법 29조에 따르면 [만 12세 이상 관람가/ 만 15세 이상 관람가]의 등급이라도 <br>부모 등 보호자를 동반하는 경우 어린이(유아) 동반이 가능합니다.<br>반드시 보호자의 동반이 필요함을 양지하여 주시기 바랍니다.</p>
												<p><font color="#ff0000"><strong>단, 청소년 관람불가 영화는 보호자 동반과 관계없이 <br>만 18세 미만이거나 연령 조건을 만족하여도 초중고 재학 중인 청소년 및 영유아 관람이 절대 불가합니다.</strong> </font></p>
												<p><font color="#ff0000"><strong>영화관 현장에서 연령확인 불가 시 입장이 제한될 수 있습니다.</strong> </font></p>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="brd_paginate">
							<ol>
								<li><strong title="현재 페이지">1</strong></li>
								<li><a href="#none">2</a></li>
							</ol>
						</div>
					</div>
				</li>
			</ul>
	</div>
</body>
</html>