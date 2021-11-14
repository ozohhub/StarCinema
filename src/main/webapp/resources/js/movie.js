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