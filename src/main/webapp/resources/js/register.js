

/* 약관동의 - 전체선택 체크박스 체크시 전체선택/해제 */
function checkAll(){	
	var checkAll = document.getElementById("chk_all").checked;
	var check = document.getElementsByName("check");
	
	if(checkAll === true){
		for(var i=0; i< check.length; i++){
			check[i].checked = true;
		}
	}else{
		for(var i=0; i< check.length; i++){
			check[i].checked = false;
		}
	}
}

/* 약관동의 - 전체선택 누른다음 개별체크박스 해제시 -> 전체선택해제구현 */
function agreeChk(){	
	var check = document.getElementsByName("check");
	var checkAll = document.getElementById("chk_all");
		
	for(var i=0; i<check.length;i++){
		if(check[i].checked == false){
			checkAll.checked = false;
			break;
		}
	}
}

/* 약관동의 - 확인버튼 클릭시 */
function nextStep1(){
	document.getElementById('agreeForm').submit();
}

/* 키보드 입력시 숫자 형식인지 확인 */
function numberChk(){
	authNum = document.getElementById('authNum').value;
	var reg = /([^0-9])/;
	if(authNum.match(reg) != null){
		document.getElementById('authLabel').innerHTML = "인증번호는 숫자만 가능합니다.";
		authNum = "";
	}else{
		document.getElementById('authLabel').innerHTML = "";
	}
}

/* 이메일인증 - 확인버튼 클릭시 */
function nextStep2(){
	document.getElementById('authForm').submit();
}

function registerStep(){
	document.getElementById('registerForm').submit();
}


