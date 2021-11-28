$(document).ready(function() {
    $(".depth1").on("click", function(event) {
        $('.depth1').attr("class", "depth1");
        $(this).attr("class", "depth1 active");

    });
    $(".depth1").on("click", "li", function(event) {
        $('.cinema').attr("class", "cinema");
        $(this).attr("class", "cinema active");
    });
    $(".movieSel").on("click", function(event) {
        $('.movieSel').attr("class", "movieSel");
        $(this).attr("class", "movieSel active");
    });
});


function selectCinema(cinemaName) {
    var info = {name : cinemaName};
    $.ajax({
        url: "selectCinema",
        method: 'post',
        data: JSON.stringify(info),
        contentType: "application/json; charset=utf-8",
		async:false,
		
        success: function() {
        	$("#dateInfo").load(window.location + ' #dateInfo');
            $("#timeInfo").fadeOut(300).load(window.location + ' #timeInfo').fadeIn(300);
        },
        error: function(request, status, error) {
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    })
}

function selectMovie(movieName) {
    var info = {movieName : movieName};
    $.ajax({
        url: "selectMovie",
        method: 'post',
        data: JSON.stringify(info),
        contentType: "application/json; charset=utf-8",
		async:false,
		
        success: function() {
        	$("#dateInfo").load(window.location + ' #dateInfo');
            $("#timeInfo").fadeOut(300).load(window.location + ' #timeInfo').fadeIn(300);
        },
        error: function(request, status, error) {
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    })
}

function selectTime(startDate ,startTime, cinemaNum, hallNum, timeInfoNum, movieName, moviePoster) {
	Swal.fire({
	  title: "영화 예매",
	  text: "["+movieName+"] "+startDate+"-"+startTime+"분 예매를 진행 하시겠어요?",
	  showCancelButton: true,
	  confirmButtonColor: '#3085d6',
	  cancelButtonColor: '#d33',
	  cancelButtonText: '취소',
	  confirmButtonText: '예매',
	  imageUrl: moviePoster,
	  imageWidth: 184,
	  imageHeight: 262,

	}).then((result) => {
	  if (result.isConfirmed) {
	  	    var info = {startDate : startDate, startTime : startTime, cinemaNum : cinemaNum, hallNum: hallNum, timeInfoNum: timeInfoNum, movieName: movieName};
		    $.ajax({
		        url: "selectTime",
		        method: 'post',
		        data: JSON.stringify(info),
		        contentType: "application/json; charset=utf-8",
				async:false,
				
		        success: function() {
		        	location.href='index?formpath=seat';
		        },
		        error: function(request, status, error) {
		            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
		        }
		    })
	  }
	})


}

function selectDate(dateInfo) {
    var info = {date : dateInfo};
    $.ajax({
        url: "selectDate",
        method: 'post',
        data: JSON.stringify(info),
        contentType: "application/json; charset=utf-8",
		async:false,
		
        success: function() {
        	$("#dateInfo").load(window.location + ' #dateInfo');
        	$("#timeInfo").fadeOut(300).load(window.location + ' #timeInfo').fadeIn(300);
        },
        error: function(request, status, error) {
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    })
}