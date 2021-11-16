//프로세스 종료의 확인 또는 프로세스 시작의 취소 버튼
function fnClose(){
	history.back();
}

//아이디 찾기 다음
function fnCheck() {
	var objName = document.getElementById("find-email-user-name");
	var objEmail = document.getElementById("find-email-user-email");

	if (objName.value == "") {
		alert("이름을 입력하세요.");
		objName.focus();
		return;
	} else if (objEmail.value == "") {
		alert("이메일주소를 입력 하세요.");
		objEmail.focus();
		return;
	}
}

//아이디 확인(비밀번호 찾기)
function fnCheckId() {
	var objId = document.getElementById("user-id");
	if (objId.value == "") {
		alert("아이디를 입력하세요.");
		objName.focus();
		return;
	}
}