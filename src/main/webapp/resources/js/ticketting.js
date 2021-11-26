$(document).ready(function() {
    $(".depth1").on("click", function(event) {
        $('.depth1').attr("class", "depth1");
        $(this).attr("class", "depth1 active");

    });
    $(".depth1").on("click", "li", function(event) {
        $('.cinema').attr("class", "cinema");
        $(this).attr("class", "cinema active");

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
            $("#timeInfo").fadeOut(300).load(window.location + ' #timeInfo').fadeIn(300);
        },
        error: function(request, status, error) {
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    })
}