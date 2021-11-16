<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/customer.css" />
<script src="<c:url value="/resources/js/customer.js" />"></script>
<c:url var="root" value="/"/>

<title>고객센터 - 공지사항 수정</title>

<%@ include file="customerHeader.jsp" %>

<center>
	<div class="sub_content">
		<div class="notice_write">
			<form id = "noticeModifyForm" action="noticeModifyProc" method="post">
				
				<p align="left">공지사항 수정</p>
				
				<table class="notice_write_Tb">
					<tr>
						<th><font class="must">*</font> <label class="title">분류</label></th>
						<td>
							분류 나오는 곳
						</td>
					</tr>
					<tr>
						<th><font class="must">*</font> <label class="title">제목</label></th>
						<td><input type="text" id = "title" value="제목 나오는 곳"></td>
					</tr>
					<tr class="notice_content">
						<th><font class="must">*</font> <label class="title">내용</label></th>
						<td><textarea>내용 나오는 곳</textarea></td>
					</tr>

					<tr>
						<td colspan="2" class="noticeWrite_btn_area">
						  <input type="button" id="writeNo" value="취소" onclick="location.href='${root}';">
			              <input type="button" id="writeYes" value="확인" onclick="noticeModifyStep();">
						</td>
					</tr>
				</table>
			</form>
		
		
		</div>
	</div>
</center>
