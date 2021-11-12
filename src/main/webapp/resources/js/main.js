$(function(){
	//개발단 화면 로드후 실행
	onload();
});
function onload(){
	nav();
	headerFixed();
}

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
	
	
// 멀티플 슬라이드


var slides = document.querySelector('.multiple_slider'),
	slide = document.querySelectorAll('.multiple_slider li'),
	currentIdx = 0,
	slideCount = slide.length,
	slideWidth = 245,
	slideMargin = 20,
	prevBtn = document.querySelector('.prev'),
	nextBtn = document.querySelector('.next');
	
makeClone();

function makeClone(){
	for(var i =0; i < slideCount; i++){
		var cloneSlide = slide[i].cloneNode(true);
		cloneSlide.classList.add('clone');
		slides.appendChild(cloneSlide);		// 요소 뒤 추가
	}
	
	for(var i = slideCount-1; i >=0; i--){
		var cloneSlide = slide[i].cloneNode(true);
		cloneSlide.classList.add('clone');
		slides.prepend(cloneSlide);	// 요소 앞 추가
		
	}
	updateWidth();
	setInitalPos();	// 초기위치잡기
	setTimeout(function(){		// translateX animate안보이게 설정
		slides.classList.add('animated');	
	},100);
	
}

function updateWidth(){
	var currentSlides = document.querySelectorAll('.multiple_slider li');
	var newSlideCount = currentSlides.length;
	// ul의 너비 지정
	var newWidth = (slideWidth + slideMargin) * newSlideCount - slideMargin + 'px';
	slides.style.width = newWidth;
}

function setInitalPos(){
	var initialTranslateValue = -(slideWidth + slideMargin) * slideCount;
	// 트랜스폼 조정
	slides.style.transform = 'translateX(' + initialTranslateValue + 'px)';

}

nextBtn.addEventListener('click',function(){
	moveSlide(currentIdx +1);
	
});

prevBtn.addEventListener('click',function(){
	moveSlide(currentIdx -1);
});

function moveSlide(num){
	slides.style.left = -num * (slideWidth + slideMargin) + 'px';
	currentIdx = num;
	
	if(currentIdx == slideCount || currentIdx == -slideCount){	// 맨마지막 또는 맨 앞으로 가면 다시 원위치를 옮김
		setTimeout(function(){		// 0.5초후에 위치 이동
			slides.classList.remove('animated');
			slides.style.left = '0px';
			currentIdx = 0;
		},500);
		
		setTimeout(function(){		// 0.6초후 다시 추가
			slides.classList.add('animated');	
		},600);
	
	}
}

//헤더
function headerFixed() {
	$(window).on("scroll", function () {
		var scrTop = $(window).scrollTop();
		var gnbHgt = $(".gnb").outerHeight();
		var banHgt = gnbHgt + $("#main_top_of_top_banner").outerHeight();

		if ($('#main_top_of_top_banner').hasClass('banner_top_wrap')) {
			// 상단 배너 있을 경우
			if (scrTop > banHgt) {
				headerFixed_add();
			} else {
				headerFixed_remove();
			}
		} else {
			// 상단 배너 없을 경우
			if (scrTop > gnbHgt) {
				headerFixed_add();
			} else {
				headerFixed_remove();
			}
		}
	});
}

//헤더 : 고정
function headerFixed_add() {
	var scrTop = $(window).scrollTop();
	$(".header").addClass("fixed");
	if ($(".visual_top").length > 0) {
		$(".visual_top").not(".visual_main").stop().css({ "margin-top": "120px" });
	} else {
		if ($("#contents").hasClass("contents_mypage")) {
			$("#contents.contents_mypage").stop().css({ "padding-top": "170px" });
		} else {
			$("#contents").stop().css({ "margin-top": "120px" });
		}
	}
	if ($(".contents_mall_home .tab_wrap_lnk").length > 0) {
		var mallTabConOff = $(".contents_mall_home .tab_con_lnk").offset().top;
		if (scrTop > mallTabConOff - 160) {
			$(".contents_mall_home .tab_wrap_lnk").addClass("fixed");
		} else {
			$(".contents_mall_home .tab_wrap_lnk").removeClass("fixed");
		}
	}
}
//헤더 : 고정 해제
function headerFixed_remove() {
	$(".header").removeClass("fixed");
	if ($(".visual_top").length > 0) {
		$(".visual_top").stop().css({ "margin-top": "" });
	} else {
		if ($("#contents").hasClass("contents_mypage")) {
			$("#contents.contents_mypage").stop().css({ "padding-top": "50px" });
		} else {
			$("#contents").stop().css({ "margin-top": "" });
		}

	}
}

function bgOpacity(i){
	
	$(".boxBg" + i).css({"opacity": "0.5"})
}

function bgOpacityReset(i){
	$(".boxBg" + i).css({"opacity": "1"})
}


/*	
	.container::after {
  width: 100%;
  height: 100%;
  content: "";
  background: url("./images/sunrise.jpg");
  position: absolute;
  top: 0;
  left: 0;
  z-index: -1;
  opacity: 0.5;
 */


