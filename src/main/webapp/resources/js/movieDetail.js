
/* 리뷰쓰는 창 옆에 별점 선택시 선택한 영역까지 별채우기/비우기 & 바로위에 점수표시 */
function myStar(i){	
	var iState = document.getElementById('star'+i);
	
	if(iState.className == 'starR'){
		for(n=2;n<=i;n++){
			var state = document.getElementById('star'+n);
			if(state.className == 'starR') state.className += ' on';
		}
	}else{
		for(n=10;n>i;n--){
			if(n==1) break;				// 최소점 1점 1일때는 break;
			var state = document.getElementById('star'+n);
			if(state.className == 'starR on') state.className = 'starR'
		}
	} 
	
	document.getElementById('myScore').innerHTML = i;
		
}

/* 관람평 작성 버튼 클릭시 */
function reivewWrite(n){
	
	var g = document.getElementById('myScore').innerHTML;
	var r = document.getElementById('review_txt').value;
	
	if(r == "" || r.length > 200){
		alert('비어있거나 200자를 초과하였습니다.');
	}else{
		var info = {grade : g, review : r, movieListNum : n};
	
		$.ajax({		
			url: "reivewWriteProc", type: "POST",		
			data: JSON.stringify(info), 			
			contentType: "application/json; charset=utf-8", 	
			dataType: "json", 
		
			success : function(result){		
				if(result.msg == '등록이 완료되었습니다.'){
					alert(result.msg);
					location.reload();
//					location.href='movieDetailProc?movieListNum='+n;
				}else{
					alert(result.msg);
					document.getElementById('review_txt').value = "";
					myStar(1); 
				}
			},
			error : function(){
				alert('통신실패');
			}
		})	
	}
	
}


function likeCalc(n,totalLike){
	var info = {movieListNum : n};
	var likeCtrl = document.getElementById('likeCtrl');
	
	$.ajax({		
			url: "likeCalcProc", type: "POST",		
			data: JSON.stringify(info), 			
			contentType: "application/json; charset=utf-8", 	
			dataType: "json", 
		
			success : function(result){		
				alert(result.msg);
				if(result.msg == '좋아요가 반영되었습니다.'){
					location.reload();
				}else if(result.msg == '좋아요가 취소되었습니다.'){
					location.reload();
				}
			},
			error : function(){
				alert('통신실패');
			}
	})	
}	
			
	
	