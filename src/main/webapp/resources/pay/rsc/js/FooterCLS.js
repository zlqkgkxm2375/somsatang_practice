// IOS fixed 버그 이슈
(function($) {
	if ($("html").hasClass("app") && $("html").hasClass("ios")) {
		var objHeaderStyle = $(".headerWrap, .header-sub");
		var objFooterBtn = $(".btnAction--fixed");

		$("select, input[type='text'], input[type='email'], input[type='number'], textarea").on("focus", function() {
			if (objHeaderStyle.length>0 && objHeaderStyle.css("position")=="fixed") {
				objHeaderStyle.css("position","absolute");
			}
			if (objFooterBtn.length>0 && objFooterBtn.css("position")=="fixed") {
				objFooterBtn.css("position","absolute");
			}
		}).on("blur", function() {
			if (objHeaderStyle.length>0 && objHeaderStyle.css("position")=="absolute") {
				objHeaderStyle.css("position","fixed");
			}
			if (objFooterBtn.length>0 && objFooterBtn.css("position")=="absolute") {
				objFooterBtn.css("position","fixed");
			}
		});
	}
})(jQuery);

$(function() {
	$("#PR_Bottom a").click(function(e) {
		e.preventDefault();
		_lsCtrl.goAppOutLink($(this).attr("href"));
	});
/*
	$($("[id^='adopB']").contents().get(0)).find(".bn_box > a").click(function(e) {
		e.preventDefault();

		var fullUrl = $(this).attr("href");
		var arrFullUrl = fullUrl.split("&");
		var r = "";
		for (var i = 0; i < arrFullUrl.length; i++) {
			if (arrFullUrl[i].indexOf("r=") == 0) {
				r = decodeURIComponent(arrFullUrl[i].split("=")[1]);
				break;
			}
		}
		//console.log(fullUrl);
		//console.log(r);

		_lsCtrl.goAppOutLink(fullUrl);
	});
*/
});