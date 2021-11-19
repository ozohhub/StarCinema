

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

/* 이메일인증 - 확인버튼 클릭시 */
function nextStep2(){
	document.getElementById('authForm').submit();
}

function registerStep(){
	document.getElementById('registerForm').submit();
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
			$('#zipcode').prop('readonly', true); 

			$('#addr1').val(addr);
			$('#addr1').prop('readonly', true); 
			$('#addr2').focus();
		}
	}).open();
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
	
		success : function(result){		
			$('#result').text(result.msg);	

		},
		error : function(){
			$('#result').text('error');
		}
	})	
}
