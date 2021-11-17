<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<title>롯지브이 : 회원가입 - 정보작성</title>
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/main/icon/lotgv.ico" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/register.css" />

<script src="<c:url value="/resources/js/register.js" />"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js" ></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<c:url var="root" value="/"/>

<!-- 정보작성페이지 -->

<center>
<div class="logo">
	<a href="${root }"><img src="${pageContext.request.contextPath}/resources/images/lot.png" style="width:200px; height: auto;"></a>
</div>

<div id="content">
	<form id = "registerForm" action="registerProc" method="post">
		<table class="registerTb">
			<tr>
				<th><font class="must">*</font> <label class="title">아이디</label></th>
				<td>
					<input type="text" id = "id" placeholder="아이디입력" maxlength="15">
					<input type="button" value="중복확인"><br>
					<label></label>
				</td>
				
			</tr>
			<tr>
				<th><font class="must">*</font> <label class="title">비밀번호</label></th>
				<td>
					<input type="password" id= "pw" placeholder="비밀번호입력" maxlength="16"><br>
					<label></label>
				</td>
			
			</tr>
			<tr>
				<th><font class="must">*</font> <label class="title">비밀번호 확인</label></th>
				<td>
					<input type="password" id = "pwChk" placeholder="비밀번호확인" maxlength="16"><br>
					<label></label>
				</td>
			</tr>
			<tr>
				<th><font class="must">*</font> <label class="title">생년월일</label></th>
				<td>	<!-- 현재 년도 구해서 반복문 돌려서 역순으로 년도 출력 -->
					<c:set var = "nowDay" value="<%=new java.util.Date() %>"/>
					<c:set var = "nowYear"><fmt:formatDate value="${nowDay}" pattern ="yyyy"/></c:set>
					<select id = "year">
						<option>년도</option>
						<c:forEach var="i" begin="1920" end = "${nowYear}" step ="1">
							<option value="${nowYear - i + 1920}">${nowYear - i + 1920}년</option>
						</c:forEach>
					</select>
					
					<input type = "text" id = "month" placeholder="월">
					<input type = "text" id = "day" placeholder="일"><br>
					<label></label>
				</td>
				
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
					<input type="text" id="zipcode" placeholder="우편번호"><input type = "button" onclick="daumPost();" value="우편번호 검색"><br>
					<input type="text" id="addr1" placeholder="주소"><br>
					<input type="text" id="addr2" placeholder="상세주소"><br>
					<label></label>
				</td>
			
			</tr>
			<tr>
				<td colspan="3" class="register_btn_area">
				  <input type="button" id="agreeNo" value="취소" onclick="location.href='${root}';">
	              <input type="submit" id="agreeYes" value="확인" onclick="registerStep();">
				</td>
			</tr>
		</table>
	</form>
</div>

</center>