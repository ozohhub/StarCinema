<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/customer.css" />
<script src="<c:url value="/resources/js/customer.js" />"></script>
<c:url var="root" value="/"/>

<title>고객센터 - 공지사항</title>

<%@ include file="customerHeader.jsp" %>
<center>

<div class="content">
	<form action="" method="post">
		<div class="search_wrap">
				<fieldset>
					<legend>공지 검색</legend>
					<select id="sel" name = "sel">
						<option value="tit">제목</option>
						<option value="con">내용</option>
						<option value="all">제목+내용</option>
					</select>
					<input type="text" id="search" name = "search" placeholder="검색어를 입력해주세요">
					<input type="submit" id="searchBtn" value="검색">
					<input type="hidden" value=${currentPage } >
				</fieldset>
		</div>
	</form>
		
	<div class="sub_content">
		<div class="customer">
			<table class="notice">
				<colgroup>
					<col style="width : 10%">
					<col style="width : 15%">
					<col style="width : auto;">
					<col style="width : 15%">

				</colgroup>
				<thead class="notice_th">
					<tr>
						<th>번호</th>
						<th>구분</th>
						<th>제목</th>
						<th>등록일</th>
					</tr>
				</thead>
				<tbody class="notice_td">
				
					<c:choose>
						<c:when test="${list.isEmpty() == false}">
							<c:forEach var="dto" items="${list }">
								<tr>
									<td>${dto.noticeNum}</td>
									<td>${dto.division}</td>
									<td><a href="noticeViewProc?num=${dto.noticeNum}&cp=${cp}">${dto.title}</a></td>
									<td>${dto.regDate}</td>				
								</tr>							
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="4">
									<div class="noNotice">
										<p>문의내역이 존재하지 않습니다.</p>
									</div>
								</td>
							<tr>
						</c:otherwise>
					</c:choose>
					
				</tbody>
			</table>
		</div>
	
		<div class="notice_paging">
			<div class="paging_ctrl">				
				${page }		
			</div>
			<div align = "right">
	   			<!-- admin 계정일때만 작성 활성화시킴 -->		
					<input type="button" id = "writeYes" value="작성" onclick="location.href='index?formpath=noticeWrite';">
 			
			</div>
		</div>
		
	</div>
</div>
</center>
