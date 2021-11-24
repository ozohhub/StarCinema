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
		  title: '아이디를 입력 하세요.'
		})
		objName.focus();
		return;
	}
	
	var info ={id : objId.value};
	
	$.ajax({		
		url: "findIdCheck", type: "POST",		
		data: JSON.stringify(info), 			
		contentType: "application/json; charset=utf-8", 	
		dataType: "json",
		async:false,
	
		success : function(result){	
			if (result) {
				location.href='findpw2';
			} else {
				Swal.fire({
				  icon: 'error',
				  title: 'Oops...',
				  text: '회원 정보가 존재하지 않습니다.',
				  footer: '<a href="findid">아이디를 잊으셨나요?</a>'
				})
			}
		},
		error:function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	})
	
}

function callEmailCtf() {


	Swal.fire({
	  title: '이메일 전송',
	  text: "확인 버튼을 누를시 가입하신 이메일로 인증번호가 전송 됩니다.",
	  icon: 'info',
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  cancelButtonText: '취소',
	  confirmButtonText: '확인'
	}).then((result) => {
	  if (result.isConfirmed) {
	  		$.ajax({		
					url: "loginIdCheck", type: "POST",		
					data: JSON.stringify(info), 			
					contentType: "application/json; charset=utf-8", 	
					dataType: "json",
				
					success : function(result){	
						if (result) {
							location.href='findpw3';
						} else {
							Swal.fire({
							  icon: 'error',
							  title: 'Oops...',
							  text: '인증 번호가 일치하지 않습니다.'
							})
					}
				},
				error:function(request, status, error){
						alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			})
	  		Swal.fire({
			  title: '인증번호를 입력하세요.',
			  input: 'text',
			  inputLabel: '이메일로 전송된 인증번호 입력',
			  inputPlaceholder: '인증번호 입력'
			}).then((result) => {
			  if (result.isConfirmed) {
			  	var text = `${result.value}`;
			  	var info = {number : text};
			  	$.ajax({		
					url: "loginIdCheck", type: "POST",		
					data: JSON.stringify(info), 			
					contentType: "application/json; charset=utf-8", 	
					dataType: "json",
				
					success : function(result){	
						if (result) {
							location.href='findpw3';
						} else {
							Swal.fire({
							  icon: 'error',
							  title: 'Oops...',
							  text: '인증 번호가 일치하지 않습니다.'
							})
						}
					},
					error:function(request, status, error){
							alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					}
				})
			  }
			})
			  	
	  }
	})

}