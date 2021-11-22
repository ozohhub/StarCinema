<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/customer.css" />
<script src="<c:url value="/resources/js/customer.js" />"></script>
<c:url var="root" value="/"/>

<title>고객센터 - 공지사항 상세</title>

<%@ include file="customerHeader.jsp" %>
<center>
	<div class="content">
		<div>
			<table class="detail_notice">
				<colgroup><col style="width : auto;"></colgroup>
				<thead>
					<tr>
						<th scope="col">제목 나오는 곳</th>
					</tr>
				</thead>
				<tbody>
					<tr class="detail_th">
						<td>
							<span class="tit1">영화관</span><span class="line"></span>
							<span>구분나오는곳</span>
							<span class="tit2">등록일</span><span class="line"></span>
							<span>등록일나오는곳</span>
							<span class="tit3">조회수</span><span class="line"></span>
							<span>조회수나오는곳</span>
						
						</td>
					<tr class="detail_con">
						<td>
							<div class="detail_notice_con">
							<p>
								내용 나오는 곳
							</p>
							</div>
						</td>
					<tr>
					</tr>
					<tr class="notice_btn_area" align="right">
						<td>	 
								<!-- admin계정일때만 작성, 수정 삭제 활성화시킴 -->
								<input type="button" value="작성" onclick="location.href='index?formpath=noticeWrite';">
								<input type="button" value="수정" onclick="location.href='index?formpath=noticeModify';">
								<input type="button" value="삭제" onclick="location.href='noticeDeleteProc';">
						
							<input type="button" value="목록으로" onclick="location.href='customerList';">
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	
	</div>

</center>
