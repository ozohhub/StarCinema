

/* 회원탈퇴페이지에서 확인버튼 클릭시 */
function deleteStep(){
	var deleteCheck = document.getElementById('deleteCheck').checked;
	
	if(deleteCheck == false){
		document.getElementById('deleteConfirm').innerHTML = "동의가 필요합니다.";
	}else{
		document.getElementById('deleteConfirm').innerHTML = "";
		if(confirm('정말 탈퇴하시겠습니까?')){
			document.getElementById('deleteForm').submit();
		}
	}
}



