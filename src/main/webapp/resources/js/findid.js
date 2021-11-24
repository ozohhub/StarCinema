//프로세스 종료의 확인 또는 프로세스 시작의 취소 버튼
function fnClose(){
	history.back();
}

//아이디 찾기 다음
function fnCheck() {
	var objName = document.getElementById("find-email-user-name");
	var objEmail = document.getElementById("find-email-user-email");

	if (objName.value == "") {
		const Toast = Swal.mixin({
		  toast: true,
		  position: 'top-end',
		  showConfirmButton: false,
		  timer: 4000,
		  timerProgressBar: true,
		  didOpen: (toast) => {
		    toast.addEventListener('mouseenter', Swal.stopTimer)
		    toast.addEventListener('mouseleave', Swal.resumeTimer)
		  }
		})
		
		Toast.fire({
		  icon: 'error',
		  title: '이름을 입력 하세요.'
		})
		objName.focus();
		return;
	} else if (objEmail.value == "") {
		const Toast = Swal.mixin({
		  toast: true,
		  position: 'top-end',
		  showConfirmButton: false,
		  timer: 4000,
		  timerProgressBar: true,
		  didOpen: (toast) => {
		    toast.addEventListener('mouseenter', Swal.stopTimer)
		    toast.addEventListener('mouseleave', Swal.resumeTimer)
		  }
		})
		
		Toast.fire({
		  icon: 'error',
		  title: '이메일 주소를 입력 하세요.'
		})
		objEmail.focus();
		return;
	}
	
	var name = document.getElementById("find-email-user-name").value;
	var email = document.getElementById("find-email-user-email").value;

	var info = {searchId : name, searchEmail : email};
	$.ajax({		
		url: "findMemberId", type: "POST",		
		data: JSON.stringify(info), 			
		contentType: "application/json; charset=utf-8", 	
		dataType: "json",
	
		success : function(){	
			location.href='findid2';
		},
		error:function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	})	
	
	
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