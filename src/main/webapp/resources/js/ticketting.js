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
    var info = { name: cinemaName };
    $.ajax({
        url: "selectCinema",
        method: 'post',
        data: JSON.stringify(info),
        contentType: "application/json; charset=utf-8",
        async: false,

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
    var info = { movieName: movieName };
    $.ajax({
        url: "selectMovie",
        method: 'post',
        data: JSON.stringify(info),
        contentType: "application/json; charset=utf-8",
        async: false,

        success: function() {
            $("#dateInfo").load(window.location + ' #dateInfo');
            $("#timeInfo").fadeOut(300).load(window.location + ' #timeInfo').fadeIn(300);
        },
        error: function(request, status, error) {
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    })
}

function selectTime(startDate, startTime, cinemaNum, hallNum, timeInfoNum, movieName, movieAge, seatCheck, movieListNum, moviePoster) {
    if (seatCheck <= 0) {
        Swal.fire({
            title: 'Oops...',
            imageUrl: moviePoster,
            imageWidth: 184,
            imageHeight: 262,
            text: "[" + movieName + "] ????????? ?????? ?????? ???????????????.",
        })
        return;
    }
    Swal.fire({
        title: "?????? ??????",
        text: "[" + movieName + "] " + startDate + "-" + startTime + "??? ????????? ?????? ????????????????",
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText: '??????',
        confirmButtonText: '??????',
        imageUrl: moviePoster,
        imageWidth: 184,
        imageHeight: 262,

    }).then((result) => {
        if (result.isConfirmed) {
            var info = { startDate: startDate, startTime: startTime, cinemaNum: cinemaNum, hallNum: hallNum, timeInfoNum: timeInfoNum, movieName: movieName, movieListNum: movieListNum };
            $.ajax({
                url: "selectTime",
                method: 'post',
                data: JSON.stringify(info),
                contentType: "application/json; charset=utf-8",
                async: false,

                success: function(result) {
                    if (result) {
                        location.href = 'index?formpath=seat';
                    } else {
                        Swal.fire({
                            title: 'Oops...',
                            imageUrl: moviePoster,
                            imageWidth: 184,
                            imageHeight: 262,
                            text: "[" + movieName + "] ????????? " + movieAge + "??? ????????? ????????? ??? ????????????.",
                        })
                    }
                },
                error: function(request, status, error) {
                    alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
                }
            })
        }
    })


}

function selectDate(dateInfo) {
    var info = { date: dateInfo };
    $.ajax({
        url: "selectDate",
        method: 'post',
        data: JSON.stringify(info),
        contentType: "application/json; charset=utf-8",
        async: false,

        success: function() {
            $("#dateInfo").load(window.location + ' #dateInfo');
            $("#timeInfo").fadeOut(300).load(window.location + ' #timeInfo').fadeIn(300);
        },
        error: function(request, status, error) {
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    })
}