/* *******************************************************
 * filename : main.js
 * description : 메인에만 사용되는 JS
 * date : 2020-02-24
******************************************************** */


jQuery(function($){
	/* *********************** 메인 비주얼 ************************ */
	// 메인 비주얼 높이값 설정
	if ($.exists('#mainVisual.full-height')) {
		mainVisualHeight();
		$(window).on('resize', mainVisualHeight);

		function mainVisualHeight () {
			var visual_height = getWindowHeight()	- $("#header").height();	// header가 fixed or absolute일경우 - $("#header").height() 삭제
			if ( getWindowWidth() > 800 ) {
				$("#mainVisual").height(visual_height);
			}else {
				$("#mainVisual").css("height","auto");
			}
		}
	}
	
	// 메인 비주얼 슬라이드
	var $mainVisualItem = $(".main-visual-con");

	$mainVisualItem.on('init', function(event, slick) {
		$(".main-visual-item").eq(0).addClass("active-item");
	});
	$mainVisualItem.on('beforeChange', function(event, slick, currentSlide, nextSlide) {	
		$(".main-visual-item").removeClass("active-item");
		$(this).find(".main-visual-item").eq(nextSlide).addClass("active-item")
	});
	$mainVisualItem.slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: true,
		fade: true,
		dots:true,
		autoplay: true,
		speed:2000,
		infinite:true,
		autoplaySpeed: 4000,
		easing: 'easeInOutQuint',
		pauseOnHover:false,
		zIndex:1
	});

	// 스크롤 아이콘 모션
	if ($.exists('.main-scroll-icon')) {
		var $moveIcon = $('.main-scroll-icon');
		var moveIcon = setInterval(function() {
			$moveIcon.animate({opacity:'.5',"margin-bottom":'-=10px'}).animate({opacity:'1',"margin-bottom":'+=10px'})
		}, 1000);
	}
	
	/* *********************** 메인 근태관리 슬라이드 ************************ */
	$('.main-solution-list').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		fade: true,
		dots: false,
		dots: true,
		autoplay: true,
		autoplaySpeed: 10000,
		speed:4000,
		infinite:true,
		easing: 'easeInOutQuint',
		pauseOnHover:false,
	});

	/* *********************** 메인 파트너사 슬라이드 ************************ */
	$('.partner-info-list').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: true,
		fade: false,
		dots: true,
		autoplay: true,
		autoplaySpeed: 10000,
		speed:800,
		adaptiveHeight: true,
		infinite:true,
		easing: 'easeInOutQuint',
		prevArrow: '<button type="button" data-role="none" class="slick-prev" aria-label="Previous" tabindex="0" role="button"><i class="xi-angle-left-min"></i></button>',
        nextArrow: '<button type="button" data-role="none" class="slick-next" aria-label="Next" tabindex="0" role="button"><i class="xi-angle-right-min"></i></button>',
		pauseOnHover:false,
	});
});
