function setKakaoPay() {
	$('.btn_confirm').attr('id', 'kakaoPay');
}

function pay_final_chk() {
	var selectAll = document.getElementById("chkSavingTerm").checked;
	
	if(selectAll === true) {
		if($('.btn_confirm').attr('id') == 'kakaoPay') {
			//alert('hello');
			$.ajax({
		        url: "kakaoPay",
		        dataType: "json",
		
		        success: function(result) {
					var box = result.next_redirect_pc_url
		            location.href=box;
		        },
		        error: function(error) {
		            alert("error:" + error);
		        }
		    });
		}
	}
	else {
		alert('결제대행서비스 약관에 동의하셔야 구매가 가능합니다.');
		location.href='index?formpath=pay';
	}
}

function kakaoCancle(seatName) {
	alert(seatName);
	$.ajax({
		url: "kakaoPayCancle",
		dataType: "json",
		
		success: function() {
		    location.href='payCancle?seatName=' + seatName;
		},
		error: function(error) {
		    alert("error:" + error);
		}
	});
}