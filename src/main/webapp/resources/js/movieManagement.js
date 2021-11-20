$(function () { $("#datepicker").datepicker({ changeMonth: true, changeYear: true, minDate: '-50y', nextText: '다음 달', prevText: '이전 달', yearRange: 'c-50:c+20', showButtonPanel: true, currentText: '오늘 날짜', closeText: '닫기', dateFormat: "yy-mm-dd", showAnim: "slide", showMonthAfterYear: true, dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'] }); });

function cinemaDelete() {
	if(confirm('정말 삭제하시겠습니까?')) {
		location.href='${root}index?formpath=cinemaDelete&cinemaName=${user.id }';
		alert('삭제가 완료되었습니다.');
	}
	location.href='index?formpath=cinemaList';
}