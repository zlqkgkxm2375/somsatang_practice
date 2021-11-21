// Aside 닫기
$("body").on("click", "#AsideSection .asideCloseBtn, .filterAside", function(e) {
	$("#AsideSection, .filterAside").remove();
	$("html,body").removeAttr("style");
	e.preventDefault();
});

// 헤더 메뉴 레이어
function HeaderMenuClose() {
	$("#HeaderDirectory, .filterHeader").remove();
	$(".header-sub__title").removeClass("down");
	$("html,body").removeAttr("style");
}

//탑메뉴 스와이프
function MenuSwipe() {
	var windowWidth = window.innerWidth;
	var menuObject = $(".navPrimary-menu-list");
	var menuObjectItemOn = $(".navPrimary-menu-list>li.on");

	if (menuObjectItemOn.length > 0) {
		//on 표시 시, 뒷 부분 가리는 메뉴 보이게
		var menuOffsetLeft = menuObjectItemOn.offset().left + menuObjectItemOn.width();
		if (menuOffsetLeft > windowWidth) {
			menuObject.parent().scrollLeft(menuObjectItemOn.offset().left);
		}
	}
}
$(function() {
	if ($("body").hasClass("biz") || $("body").hasClass("serviceGuide") || $("body").hasClass("story")) {
		setTimeout(function() {
			MenuSwipe();
		}, 100);

		$(window).resize(function(){
			MenuSwipe();
		});
	}
});

//탑서브메뉴 스와이프(기업)
function MenuSubSwipe() {
	var windowWidth = window.innerWidth;
	var menuObject = $(".submenu__list");
	var menuObjectItemOn = $(".submenu__list>li.on");

	if (menuObjectItemOn.length > 0) {
		//on 표시 시, 뒷 부분 가리는 메뉴 보이게
		var menuOffsetLeft = menuObjectItemOn.offset().left + menuObjectItemOn.width();
		if (menuOffsetLeft > windowWidth) {
			menuObject.parent().scrollLeft(menuObjectItemOn.offset().left);
		}
	}
}
$(function() {
	if ($("body").hasClass("biz") || $("body").hasClass("serviceGuide")) {
		setTimeout(function() {
			MenuSubSwipe();
		}, 100);

		$(window).resize(function(){
			MenuSubSwipe();
		});
	}
});

// Header Title
(function($) {
	if ($(".header-sub__title").length > 0) {
		var strHeading = "";
		var checkUrl = location.pathname.toLowerCase();
		if (checkUrl.substring(0,5) == "/biz/" || checkUrl.substring(0,14) == "/serviceguide/" || checkUrl.substring(0,8) == "/settle/" || checkUrl.substring(0,8) == "/viv/biz") {
			strHeading = "<a href='/biz/main.asp'>기업서비스</a>";
			$(".header-sub__title").html(strHeading);
		} else {
			var strTitle = $("title").text();
			strHeading = strTitle.split(" ")[0];
			var checkLink = location.href.toLowerCase();
			if (checkLink.indexOf("/job/targetjoblist.asp?schnm=youth_wsc") > -1) {
				strHeading = "청소년";
			} else if (checkLink.indexOf("/job/targetjoblist.asp?schnm=option_wsc&optioncd=m02") > -1) {
				strHeading = "대학생";
			} else if (checkLink.indexOf("/job/targetjoblist.asp?schnm=option_wsc&optioncd=senior") > -1) {
				strHeading = "중장년";
			} else if (checkLink.indexOf("/job/targetjoblist.asp?schnm=option_wsc&optioncd=m06") > -1) {
				strHeading = "장애인";
			}
			$(".header-sub__title").text(strHeading);
		}
	}
})(jQuery);

// 헤더 메뉴 기업서비스 알림센터
$(".header-sub__action>.header-sub__action-alarm>a").click(function(e) {
	e.preventDefault();
	var url = "/biz/NoticeCenterList.asp";

	if($("#device").val() == "IOS" && location.href.toLowerCase().indexOf("mbiz") < 0){
		_lsCtrl.goInOutLink({menunm:'알림설정',url:'app://push_setting',action:'NATIVE'});
	} else {
		if (location.protocol == "https:") {
			url = "https://" + location.host + url;
		}
		location.href = url;
	}
});

// 헤더 메뉴 기업서비스 채용매니저
$(".header-sub__action>.recruitManager>a").click(function(e) {
	var url = "/biz/recruitManager.asp";
	if (location.protocol == "https:") {
		url = "https://" + location.host + url;
	}
	$.ajax({
		  cache: false
		, type: "post"
		, url: url
		, success: function(data) {
			if (data) {
				$("body").prepend(data);
				$("body").prepend("<div class='filter filterAside'></div>");

				$("html,body").css({
					position : "relative",
					height : "100%",
					overflow : "hidden"
				});
				$("#AsideSection").addClass("on");

				ga("send", "pageview", url);
			}
		}
		, error: function(request, exception) {
		}
	});

	e.preventDefault();
});