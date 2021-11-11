<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Login - 롯지브이</title>

        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" />

        <script src="<c:url value=" /resources/js/aes.js" />"></script>
        <script src="<c:url value=" /resources/js/sso.js" />"></script>
        <script src="<c:url value=" /resources/js/LcCommon.js" />"></script>
        <script src="<c:url value=" /resources/js/crossDomainStorage.js" />"></script>
    </head>

    <body>
        <div id="loginContents">
            <ul class="tab_wrap outer full">
                <li class="active">
                <button type="button" class="tab_tit" style="left: 50%; width: 326.667px; margin-left: -490px;">
                	<span>회원</span>
                </button>
                    <div class="tab_con">
                        <h3 class="hidden">회원</h3>
                        <div class="member_login_wrap">
                            <div class="contents_inner">
                                <div class="login_box">
                                    <p class="tip">L.POINT, 롯데시네마 ID로 별도의 회원가입 없이 이용 가능 합니다. </p>
                                    <div class="login_area">
	                                    <input type="text" id="userId" maxlength="50" placeholder="아이디 또는 이메일을 입력해 주세요." title="입력태그">
	                                    <input type="password" id="userPassword" maxlength="15" placeholder="비밀번호를 입력해 주세요." title="입력태그">
	                                    <input type="hidden" name="hidLoginType" id="hidLoginType" value="">
	                                    <button type="button" class="btn_login">로그인</button>
                                    </div>
                                    <div class="login_bot_wrap">
                                        <div class="login_check">
                                        	<input type="checkbox" name="loginCheck" id="checkSavedID">
                                        	<label for="checkSavedID">아이디 저장</label>
                                        </div>
                                        	<div class="login_menu"><a href="#none" title="페이지 이동">회원가입</a>
                                        	<a href="#none" title="페이지 이동">아이디 찾기</a>
                                        	<a href="#none" title="페이지 이동">비밀번호 찾기</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </li>
        </div>
    </body>

    </html>