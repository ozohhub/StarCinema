<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myPage.css" />
<script src="<c:url value="/resources/js/myPage.js" />"></script>
<c:url var="root" value="/"/>

<title>마이페이지 - 1:1문의상세</title>

<%@ include file="myPageHeader.jsp" %>
   
<center>
	<div class="content">
		<div>
			<table class="detail_question">
				<colgroup><col style="width : auto;"></colgroup>
				<thead>
					<tr>
						<th scope="col" colspan="2">제목 나오는 곳</th>
					</tr>
				</thead>
				<tbody>
					<tr class="detail_th">
						<td colspan="2">
							<span class="tit1">분류</span><span class="line"></span>
							<span>분류 나오는 곳</span>
							<span class="tit2">종류</span><span class="line"></span>
							<span>종류 나오는 곳</span>
							<span class="tit2">작성일</span><span class="line"></span>
							<span>작성일 나오는 곳</span>
							<span class="tit2">답변여부</span><span class="line"></span>
							<span>답변여부 나오는 곳</span>
						
						</td>
					<tr class="detail_con">
						<td colspan="2">
							<div class="detail_question_con">
							<p>
								내용 나오는 곳
							</p>
							</div>
						</td>
					<tr class="file_opt">
						<td colspan="2">
							<span class="tit2">첨부파일</span><span class="line"></span>
							<span>첨부파일명 나오는 곳</span>
						</td>
					</tr>
					<!-- 답변여부 Y면 출력, N이고 사용자면 출력x, N이고 관리자면 답변입력창 활성화 -->
						<tr class="answer_area">
							<td>
								<span class="tit2">A</span>
							</td>
							<td class="answer">
								<span>
									답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳
									답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳
									답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳
									답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳답변내용 나오는 곳
								</span>
							</td>
						</tr>
						
						<tr class="answer_area">
							<td>
								<span class="tit2">A</span>
							</td>
							<td class="answer">
								<textarea>답변 입력하는 창</textarea> <input type="button" value="완료">
							</td>
						</tr>
						
					<!-- 여기까지 조건문으로 묶기 -->
					<tr class="question_btn_area" align="right">
						<td colspan="2">	 
							<input type="button" value="목록으로" onclick="location.href='index?formpath=myQuestion';">
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	
	</div>

</center>
    