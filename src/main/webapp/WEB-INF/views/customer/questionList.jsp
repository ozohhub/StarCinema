<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myPage.css" />
<script src="<c:url value="/resources/js/question.js" />"></script>
<c:url var="root" value="/"/>

<title>1:1문의 내역 확인</title>

<%@ include file="customerHeader.jsp" %>

<!-- 관리자가 모든 1:1문의내역 확인하는곳 -->
<center>
	<div class="sub_content">
		<div class="myQuestion">
			<table class="question_list">
				<colgroup>
					<col style="width : 8%">
					<col style="width : 18%">
					<col style="width : auto;">
					<col style="width : 12%">
					<col style="width : 12%">
					<col style="width : 8%">
					
				</colgroup>
				<thead class="question_th">
					<tr>
						<th>번호</th>
						<th>분류</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>답변여부</th>				
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>분류나오는곳</td>
						<td><a href="index?formpath=questionView">제목나오는곳</a></td>
						<td>작성자나오는곳</td>
						<td>작성일나오는곳</td>
						<td>답변여부(Y/N)</td>
					</tr>
					<tr>
						<td colspan="6">
							<div class="noQuestion">
								<p>문의내역이 존재하지 않습니다.</p>
							</div>
						</td>
					<tr>
				</tbody>
			</table>
		</div>
		
		<div class="question_paging" align="center">
			<a>prev</a>
			<a>1</a>
			<a>next</a>
		</div>
		
	</div>
</center>