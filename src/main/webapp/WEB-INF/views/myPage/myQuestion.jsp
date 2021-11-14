<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myPage.css" />
<script src="<c:url value="/resources/js/myPage.js" />"></script>
<c:url var="root" value="/"/>

<title>마이페이지 - 1:1문의내역</title>

<%@ include file="myPageHeader.jsp" %>

<center>
	<div class="sub_content">
		<div class="myQuestion">
			<table>
				<colgroup>
					<col style="width : 8%">
					<col style="width : 18%">
					<col style="width : auto;">
					<col style="width : 12%">
					<col style="width : 12%">
				</colgroup>
				<thead class="question_th">
					<tr>
						<th>번호</th>
						<th>분류</th>
						<th>제목</th>
						<th>작성일</th>
						<th>답변여부</th>				
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="5">
							<div class="noQuestion">
								<p>문의내역이 존재하지 않습니다.</p>
							</div>
						</td>
					<tr>
				</tbody>
			</table>
		</div>
	</div>
</center>