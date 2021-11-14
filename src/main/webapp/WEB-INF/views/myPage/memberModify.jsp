<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myPage.css" />
<script src="<c:url value="/resources/js/myPage.js" />"></script>
<c:url var="root" value="/"/>

<title>마이페이지- 회원정보수정</title>

<%@ include file="myPageHeader.jsp" %>

<center>
	<div class="sub_content">
		<div class="memberModify">
			<form id = "modifyForm" action="modifyProc" method="post">
				
				<p align="left">회원 정보 수정</p>
				
				<table class="modifyTb">
					<tr>
						<th><font class="must">*</font> <label class="title">이름</label></th>
						<td>이름 나오는 곳</td>
					</tr>
					<tr>
						<th><font class="must">*</font> <label class="title">아이디</label></th>
						<td>아이디 나오는 곳</td>
					</tr>
					<tr>
						<th><font class="must">*</font> <label class="title">비밀번호</label></th>
						<td><input type="password" id = "pw"></td>
					</tr>
					<tr>
						<th><font class="must">*</font> <label class="title">비밀번호 확인</label></th>
						<td><input type="password" id = "pwChk"></td>
					</tr>
					
						<tr>
				<th><font class="must">*</font> <label class="title">휴대폰번호</label></th>
				<td>
					<select id ="phone1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
					<input type="text" id = "phone2" placeholder="중간자리">
					<input type="text" id = "phone3" placeholder="끝자리"><br>
					<label></label>
				</td>
			</tr>
			<tr>
				<th><font class="must">*</font> <label class="title">주소</label></th>
				<td class = "address">
					<input type="text" id="zipcode" placeholder="우편번호"><button>우편번호 검색</button><br>
					<input type="text" id="addr1" placeholder="주소"><br>
					<input type="text" id="addr2" placeholder="상세주소"><br>
					<label></label>
				</td>
			
			</tr>
				
					<tr>
						<td colspan="2" class="modify_btn_area">
						  <input type="button" id="modifyNo" value="취소" onclick="location.href='${root}';">
			              <input type="button" id="modifyYes" value="확인" onclick="modifyStep();">
						</td>
					</tr>
				</table>
	</form>
		
		
		</div>
	</div>
</center>
