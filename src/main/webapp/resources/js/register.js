

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

/* 약관동의 - 확인버튼 클릭시 > 약관동의여부 확인후 모두 동의시에만 페이지 이동 */
function nextStep1(){
	var agreeArr = [];
	$("input[name='check']:checked").each(function(){
		agreeArr.push($(this).val());
	})
	var data = {"agree" : agreeArr};
		
	$.ajax({		
		url: "agreeCheck", type: "POST",		
		data: JSON.stringify(data), 			
		contentType: "application/json; charset=utf-8", 	
		dataType: "json", 
	
		success : function(result){		
			$('.agree_chk').text(result.msg);
			if(result.msg == ''){
				document.getElementById('agreeForm').submit();	
			}		
		},
		error : function(){
			$('.agree_chk').text('error');
		}
	})
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

/* 이메일 인증 */
function sendAuth(){		
	var e = document.getElementById("email").value;
	var n = document.getElementById("name").value;
	var info = {email : e, name: n};
	
	$.ajax({		
		url: "sendAuth", type: "POST",		
		data: JSON.stringify(info), 			
		contentType: "application/json; charset=utf-8", 	
		dataType: "json", 
	
		success : function(result){		
			$('#authLabel').text(result.msg);	

		},
		error : function(){
			$('#authLabel').text('error');
		}
	})	
}

function authConfirm(){		
	var a = document.getElementById("authNum").value;
	var info = {authNum : a};
	
	$.ajax({		
		url: "authConfirm", type: "POST",		
		data: JSON.stringify(info), 			
		contentType: "application/json; charset=utf-8", 	
		dataType: "json", 
	
		success : function(result){		// 인증 성공시 이름과 이메일주소 -readonly, 메일발송, 인증버튼 disabled
			$('#authLabel').text(result.msg);	
			if(result.msg =="인증 성공"){
				$('#name').prop('readonly', true); 
				$('#email').prop('readonly', true); 
				$('#sendMailBtn').attr('disabled', true);	
				$('#authBtn').attr('disabled', true);	
			}
	
		},
		error : function(){
			$('#authLabel').text('error');
		}
	})	
}


/* 이메일인증 - 확인버튼 클릭시 */
function nextStep2(){
	
	var e = document.getElementById("email").value;
	var n = document.getElementById("name").value;
	
	var info = {email : e, name: n};
	
	$.ajax({		
		url: "authProc", type: "POST",		
		data: JSON.stringify(info), 			
		contentType: "application/json; charset=utf-8", 	
		dataType: "json", 
	
		success : function(result){		
			$('#authLabel').text(result.msg);	
			if(result.msg =="인증 성공"){
				document.getElementById('authForm').submit();	
			}else{
				$('#name').prop('readonly', false); 
				$('#email').prop('readonly', false); 
				$('#sendMailBtn').attr('disabled', false);	
				$('#authBtn').attr('disabled', false);	
			}
	
		},
		error : function(){
			$('#authLabel').text('error');
		}
	})	
	
}

/* 아이디 중복확인 */

function isExistId(){
	var i = document.getElementById("id").value;
	var info = {id : i};
	var check = false;
	
	$.ajax({		
		url: "isExistId", type: "POST",		
		data: JSON.stringify(info), 			
		contentType: "application/json; charset=utf-8", 	
		dataType: "json", 
		async:false,
	
		success : function(result){		
			$('#idLabel').text(result.msg);	
			if(result.msg == "사용 가능한 아이디 입니다."){
				check = true;
				$('#id').prop('readonly', true);
			}else{
				check = false;
			}

		},
		error : function(){
			$('#idLabel').text('error');
		}
	})	
	return check;
}

/* 회원정보입력 페이지 - 우편번호 */
function daumPost(){		
	new daum.Postcode({
		oncomplete:function(data){	
			var addr = "";
			if(data.userSelectedType === "R"){	
				addr = data.roadAddress;
			}else{	
				addr = data.jibunAddress;
			}

			$('#zipcode').val(data.zonecode);
			$('#addr1').val(addr);
			$('#addr2').focus();
		}
	}).open();
}

/* 비밀번호 유효성 */
function pwCheck(){
	var p = document.getElementById("pw").value;
	var info = {pw : p};
	var check = false;
	
	$.ajax({		
		url: "pwCheck", type: "POST",		
		data: JSON.stringify(info), 			
		contentType: "application/json; charset=utf-8", 	
		dataType: "json", 
		async:false,
	
		success : function(result){		
			$('#pwLabel').text(result.msg);	
			if(result.msg == "사용가능한 비밀번호 입니다."){
				check = true;
			}else{
				check = false;
			}

		},
		error : function(){
			$('#pwLabel').text('error');
		}
	})	
	
	return check;
}

/* 비밀번호 확인 */
function pwConfirm(){	
	var p = document.getElementById("pw").value;
	var pc = document.getElementById("pwChk").value;
	var info = {pw : p, pwChk : pc};
	var check = false;
	
	$.ajax({		
		url: "pwConfirm", type: "POST",		
		data: JSON.stringify(info), 			
		contentType: "application/json; charset=utf-8", 	
		dataType: "json", 
		async:false,
	
		success : function(result){		
			$('#pwChkLabel').text(result.msg);	
			if(result.msg == "비밀번호가 일치하지 않습니다."){
				check =  false;
			}else{
				check =  true;
			}
		},
		error : function(){
			$('#pwChkLabel').text('error');
		}
	})	
	return check;
}

/* 생년월일, 나이(만 14세이하 가입불가) */
function birthCheck(){
	var y = document.getElementById("year").value;
	var m = document.getElementById("month").value;
	var d = document.getElementById("day").value;
		
	var info = {year : y, month : m, day : d};
	var check = false;
	
	$.ajax({		
		url: "birthCheck", type: "POST",		
		data: JSON.stringify(info), 			
		contentType: "application/json; charset=utf-8", 	
		dataType: "json", 
		async:false,
	
		success : function(result){		
			$('#birthLabel').text(result.msg);	
			if(result.msg == ""){
				check =  true;
			}else{
				check =  false;
			}
		},
		error : function(){
			$('#birthLabel').text('error');
		}
	})	
	return check;	
}
/* 핸드폰 번호 확인  */
function phoneCheck(){	
	var p1 = document.getElementById("phone1").value;
	var p2 = document.getElementById("phone2").value;
	var p3 = document.getElementById("phone3").value;
	
	var info = {phone1 : p1, phone2 : p2, phone3 : p3};
	var check = false;
	
	$.ajax({		
		url: "phoneCheck", type: "POST",		
		data: JSON.stringify(info), 			
		contentType: "application/json; charset=utf-8", 	
		dataType: "json", 
		async:false,
	
		success : function(result){		
			$('#phoneLabel').text(result.msg);	
			if(result.msg == ""){
				check =  true;
			}else{
				check =  false;
			}
		},
		error : function(){
			$('#phoneLabel').text('error');
		}
	})	
	return check;		
}
/* 주소 비어있는지 확인 */
function addrCheck(){
	var z = document.getElementById("zipcode").value;
	var a1 = document.getElementById("addr1").value;
	var a2 = document.getElementById("addr2").value;
	
	var info = {zip : z, addr1 : a1, addr2 : a2};
	var check = false;
	
	$.ajax({		
		url: "addrCheck", type: "POST",		
		data: JSON.stringify(info), 			
		contentType: "application/json; charset=utf-8", 	
		dataType: "json", 
		async:false,
	
		success : function(result){		
			$('#addrLabel').text(result.msg);	
			if(result.msg == ""){
				check =  true;
			}else{
				check =  false;
			}
		},
		error : function(){
			$('#addrLabel').text('error');
		}
	})	
	return check;		
	
}

/* 모든 입력값 최종 검증 후 가입 */
function registerStep(){
	var idc = isExistId();
	var pwc = pwCheck();
	var con = pwConfirm();
	var bc = birthCheck();
	var phonc = phoneCheck();
	var addc = addrCheck();
		
	if(idc == true && pwc == true && con == true && bc == true && phonc == true && addc == true) {
		document.getElementById('registerForm').submit(); 
	}
}

