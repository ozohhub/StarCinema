//nav
function nav(){
	var depth1 = $("#nav > ul > li");
	var depth2 = $("#nav > ul > li > div > ul > li");
	$(depth1).children("a").off().on("mouseenter focusin", function(){
		$(this).parent("li").addClass("ov").siblings("li").removeClass("ov");
		$(depth1).children("div").hide().children("ul").stop().animate({"opacity" : "0"});
		$(this).siblings("div").show().children("ul").stop().animate({"opacity" : "1"});
	});
	$(depth2).children("a").off().on("mouseenter focusin", function(){
		$(this).parent("li").addClass("ov").siblings("li").removeClass("ov");
		$(depth2).children("div").hide().children("ul").stop().animate({"opacity" : "0"});
		$(this).siblings("div").show().children("ul").stop().animate({"opacity" : "1"});
	});
	$("#nav > ul").off().on("mouseleave", function(){
		$("#nav li").removeClass("ov");
		$("#nav li > div").hide().children("ul").stop().animate({"opacity" : "0"});
		$("#nav > ul > li.active > div, #nav > ul > li > div > ul > li.active > div").show().children("ul").stop().animate({"opacity" : "1"});
	});
}

//상단비쥬얼 nav위치값
	function slideVisualNavPos(){
		var winWdh = $(window).outerWidth();
		if (owl.parents('.visual_top').children('.inner').length > 0 && owl.find('.owl-nav').length > 0){
			owl.find('.owl-nav ').css({'width' : winWdh, 'margin-left' : -winWdh / 2});
		}
	};