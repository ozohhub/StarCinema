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
	<div class="search_wrap">
		<fieldset>
			<legend>공지 검색</legend>
			<select id="searchSel">
				<option>제목</option>
				<option>내용</option>
				<option>제목+내용</option>
			</select>
			<input type="text" id="searchWord" placeholder="검색어를 입력해주세요">
			<input type="button" id="searchBtn" value="검색">
		</fieldset>
	</div>
	
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
					<tr>
						<td>1</td>
						<td>구분나오는곳</td>
						<td><a href="index?formpath=noticeView">제목나오는곳</a></td>
						<td>등록일나오는곳</td>				
					</tr>
					<tr>
						<td colspan="4">
							<div class="noNotice">
								<p>문의내역이 존재하지 않습니다.</p>
							</div>
						</td>
					<tr>
					
				</tbody>
			</table>
		</div>
		
		<div class="notice_paging">
			<a>prev</a>
			<a>1</a>
			<a>next</a>
		</div>
		
		
	</div>


</div>


</center>
