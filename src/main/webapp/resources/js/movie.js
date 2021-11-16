function minus_click(i) {
	const result = document.getElementById('num'+i);
	let number = result.innerText;
	number = parseInt(number)-1;
	if(number == -1) number = 0;
	result.innerText = number;
}

function plus_click(i) {
	const result = document.getElementById('num'+i);
	let num1 = parseInt(document.getElementById('num1').innerText);
	let num2 = parseInt(document.getElementById('num2').innerText);
	let num3 = parseInt(document.getElementById('num3').innerText);
	let num4 = parseInt(document.getElementById('num4').innerText);
	
	let number = result.innerText;
	number = parseInt(number)+1;
	if(number ==  9) {
		number = 8;
		alert('예약가능한 인원 수(최대8명)가 초과되었습니다.');
	}
	else if(num1+num2+num3+num4 > 7) {
		number = number-1;
		alert('예약가능한 인원 수(최대8명)가 초과되었습니다.');
	}
	result.innerText = number;
}

function reset(){
	alert('결제수단을 전체 초기화하시겠습니까?');
}

function selectAll() {
	var selectAll = document.getElementById("chkSavingTerm").checked;
	var select = document.getElementsByName("select");
	
	if(selectAll === true){
		for(var i=0; i< select.length; i++){
			select[i].checked = true;
		}
	}
	else{
		for(var i=0; i< select.length; i++){
			select[i].checked = false;
		}
	}
}

function card_pay() {
	$("#card_chk").css({"border" : "1px solid #000"})
	$("#card_payment").css({"display" : "inline"})
	$("#simple_chk").css({"border" : "1px solid #DDD"})
	$("#simple_payment").css({"display" : "none"})
	
	$("#my_chk").css({"border" : "1px solid #DDD"})
	$("#phone_chk").css({"border" : "1px solid #DDD"})
}

function simple_pay() {
	$("#card_chk").css({"border" : "1px solid #DDD"})
	$("#card_payment").css({"display" : "none"})
	$("#simple_chk").css({"border" : "1px solid #000"})
	$("#simple_payment").css({"display" : "inline"})
	
	$("#my_chk").css({"border" : "1px solid #DDD"})
	$("#phone_chk").css({"border" : "1px solid #DDD"})
}

function my_pay() {
	$("#card_chk").css({"border" : "1px solid #DDD"})
	$("#card_payment").css({"display" : "none"})
	$("#simple_chk").css({"border" : "1px solid #DDD"})
	$("#simple_payment").css({"display" : "none"})
	
	$("#my_chk").css({"border" : "1px solid #000"})
	$("#phone_chk").css({"border" : "1px solid #DDD"})
	
}

function phone_pay() {
	$("#card_chk").css({"border" : "1px solid #DDD"})
	$("#card_payment").css({"display" : "none"})
	$("#simple_chk").css({"border" : "1px solid #DDD"})
	$("#simple_payment").css({"display" : "none"})
	
	$("#my_chk").css({"border" : "1px solid #DDD"})
	$("#phone_chk").css({"border" : "1px solid #000"})
}

function check_button(i){
	for(var j=1;j<=20;j++) {
		$("#chek_btn"+j).css({"border" : "1px solid #DDD"})
	}
	$("#chek_btn"+i).css({"border" : "1px solid #000"})
}

function pay_final_chk() {
	var select = document.getElementsByName("select");
	/*
	var case1 = document.getElementsByClassName("cate1");
	var case3 = document.getElementsByClassName("cate3");
	var case4 = document.getElementsByClassName("cate4");
	var case5 = document.getElementsByClassName("cate5");
	
	if(case1.checked == false || case3.checked == false || case4.checked == false || case5.checked == false) {
		alert('결제수단을 선택해 주십시오.');
		history.back();
	}
	*/
	
	if(select.checked == true) {
		location.href='index?formpath=myPage';
	}
	else {
		alert('결제대행서비스 약관에 동의하셔야 구매가 가능합니다.');
		history.back();
	}
}

function movieOpacity(i){
	$(".movieBtn"+i).css({ "background-color" : "rgba( 0,0,0,0.6)"})
	$(".reserve_btn"+i).css({"display" : "inline"})
	$(".detail_btn"+i).css({"display" : "inline"})
}

function moiveOpacityReset(i){
	$(".movieBtn"+i).css({ "background-color" : "rgba( 255,255,255,0)"})
	$(".reserve_btn"+i).css({"display" : "none"})
	$(".detail_btn"+i).css({"display" : "none"})
}

function nowMovieInfo() {
	$("#laterInfo").css({"display" : "none"})
	$("#nowInfo").css({"display" : "block"})
	
	$(".active").css({"border-bottom" : "1px solid #000"})
	$(".now_span").css({"color" : "black"})
	$(".nonActive").css({"border-bottom" : "none", "color":"#666666"})
	$(".later_span").css({"color" : "#666666"})
}

function laterMovieInfo() {
	$("#nowInfo").css({"display" : "none"})
	$("#laterInfo").css({"display" : "block"})
	
	$(".active").css({"border-bottom" : "none", "color":"#666666"})
	$(".now_span").css({"color" : "#666666"})
	$(".nonActive").css({"border-bottom" : "1px solid #000", "color":"balck"})
	$(".later_span").css({"color" : "black"})
}