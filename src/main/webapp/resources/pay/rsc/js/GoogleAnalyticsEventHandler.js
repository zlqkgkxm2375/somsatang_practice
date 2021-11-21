//공고상세
$("#JobDetail").on("click", ".btnApplication a", function() {
	var detailAdId = $(".scrapData span:first-child").attr("id").replace("com_","");
	ga('send', 'event', '공고상세', $(this).text(), detailAdId);
});
$("#JobDetail").on("click", ".applyLayer--tel .applyLayer__link--tel", function() {
	var detailAdId = $(".scrapData span:first-child").attr("id").replace("com_","");
	ga('send', 'event', '공고상세', '지원하기_전화', detailAdId);
});
$("#JobDetail").on("click", ".applyLayer--base .applyLayer__link", function() {
	var detailAdId = $(".scrapData span:first-child").attr("id").replace("com_","");
	ga('send', 'event', '공고상세', '지원하기_' + $(this).text(), detailAdId);
});

// 4월 개편 -------------------------------------------------------------------------------
//좌측드로워
$(".asideHead").on("click", "a", function() {
	var StrMenuName = $(this).text();

	ga('send', 'event', '좌측드로워', '로그인/회원가입', StrMenuName);
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "좌측드로워"
	,	"category2" : "로그인/회원가입"
	,	"category3" : StrMenuName
	});
});
$(".asideAction").on("click", "a", function() {
	var StrMenuName = $(this).text();

	ga('send', 'event', '좌측드로워', '홈/닫기', StrMenuName);
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "좌측드로워"
	,	"category2" : "홈/닫기"
	,	"category3" : StrMenuName
	});
});
$(".aside-menu-wrapper").on("click", "a", function() {
	var StrMenuName = $(this).children(".aside-menu__text").text();

	ga('send', 'event', '좌측드로워', '상단(개인화 메뉴)', StrMenuName);
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "좌측드로워"
	,	"category2" : "상단(개인화 메뉴)"
	,	"category3" : StrMenuName
	});
});
$(".directoryNotice").on("click", "h1", function() {
	ga('send', 'event', '좌측드로워', '공지', '공지 목록');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "좌측드로워"
	,	"category2" : "공지"
	,	"category3" : "공지 목록"
	});
});
$(".directoryNotice").on("click", "ul", function() {
	ga('send', 'event', '좌측드로워', '공지', '공지 상세');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "좌측드로워"
	,	"category2" : "공지"
	,	"category3" : "공지 상세"
	});
});
$(".directoryMenu-sub").on("click", "a", function() {
	var StrParentText = $(this).parents(".directoryMenu-sub").siblings(".directoryMenu-title").text();
	var StrMenuName = $(this).text().replace('New','');
	ga('send', 'event', '좌측드로워', StrParentText, StrMenuName);
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "좌측드로워"
	,	"category2" : StrParentText
	,	"category3" : StrMenuName
	});
});
$(".directoryMenu-etc").on("click", "a", function() {
	var StrMenuName = $(this).text().replace('New','');

	ga('send', 'event', '좌측드로워', '하단메뉴', StrMenuName);
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "좌측드로워"
	,	"category2" : "하단메뉴"
	,	"category3" : StrMenuName
	});
});

// GNB
$(".header-main").on("click", "h1", function() {
	ga('send', 'event', 'GNB', 'BI');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "GNB"
	,	"category2" : "BI"
	});
});
$(".header-main__action").on("click", "a", function() {
	var StrMenuName = $(this).text();

	ga('send', 'event', 'GNB', StrMenuName);
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "GNB"
	,	"category2" : StrMenuName
	});
});
$(".header-main").on("click", ".header-main__search", function() {
	ga('send', 'event', 'GNB', '통합검색');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "GNB"
	,	"category2" : "통합검색"
	});
});

//홈메인 배너
$("#Main").on("click", ".appdown-banner__action", function() {
	ga('send', 'event', '홈메인', '배너_앱다운', '앱다운받기');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "배너_앱다운"
	,	"category3" : "앱다운받기"
	});
});
$("#Main").on("click", ".promotion-top__list-link", function() {
	if ($(this).hasClass("in")) {
		ga('send', 'event', '홈메인', '배너_탑', '내부_'+$(this).children("img").attr("alt"));
		BA.Collect("EVENT", {
			"pageurl" : location.pathname
		,	"category1" : "홈메인"
		,	"category2" : "배너_탑"
		,	"category3" : '내부_'+$(this).children("img").attr("alt")
		});
	} else {
		ga('send', 'event', '홈메인', '배너_탑', '외부_'+$(this).children("img").attr("alt"));
		BA.Collect("EVENT", {
			"pageurl" : location.pathname
		,	"category1" : "홈메인"
		,	"category2" : "배너_탑"
		,	"category3" : '외부_'+$(this).children("img").attr("alt")
		});
	}
});
$("#Main").on("click", ".mainAdBanner>a", function() {
	if ($(this).hasClass("in")) {
		ga('send', 'event', '홈메인', '배너_그랜드', '내부_'+$(this).children("img").attr("alt"));
		BA.Collect("EVENT", {
			"pageurl" : location.pathname
		,	"category1" : "홈메인"
		,	"category2" : "배너_그랜드"
		,	"category3" : '내부_'+$(this).children("img").attr("alt")
		});
	} else {
		ga('send', 'event', '홈메인', '배너_그랜드', '외부_'+$(this).children("img").attr("alt"));
		BA.Collect("EVENT", {
			"pageurl" : location.pathname
		,	"category1" : "홈메인"
		,	"category2" : "배너_그랜드"
		,	"category3" : '외부_'+$(this).children("img").attr("alt")
		});
	}
});
$("#Main").on("click", ".brandAdBanner>a", function() {
	if ($(this).hasClass("in")) {
		ga('send', 'event', '홈메인', '배너_브랜드', '내부_'+$(this).children("img").attr("alt"));
		BA.Collect("EVENT", {
			"pageurl" : location.pathname
		,	"category1" : "홈메인"
		,	"category2" : "배너_브랜드"
		,	"category3" : '내부_'+$(this).children("img").attr("alt")
		});
	} else {
		ga('send', 'event', '홈메인', '배너_브랜드', '외부_'+$(this).children("img").attr("alt"));
		BA.Collect("EVENT", {
			"pageurl" : location.pathname
		,	"category1" : "홈메인"
		,	"category2" : "배너_브랜드"
		,	"category3" : '외부_'+$(this).children("img").attr("alt")
		});
	}
});

//홈메인 지역설정
$("#Main").on("click", ".areaset__value--sido", function() {
	ga('send', 'event', '홈메인', '지역설정', '시도선택');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "지역설정"
	,	"category3" : "시도선택"
	});
});
$("#Main").on("click", ".areaset__value--gugun", function() {
	ga('send', 'event', '홈메인', '지역설정', '권역선택');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "지역설정"
	,	"category3" : "권역선택"
	});
});

//홈메인 상품
$("#MPremierJob").on("click", "a.goodsGuideLink", function() {
	ga('send', 'event', '홈메인', '상품_M프리미어', '광고안내');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "상품_M프리미어"
	,	"category3" : "광고안내"
	});
});
$("#MPremierJob").on("click", "a.info", function() {
	var page = AnalyticsEventCLS.getPageSwiperEvent("#MPremierJob");
	ga('send', 'event', '홈메인', '상품_M프리미어', '채용공고_' + page);
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "상품_M프리미어"
	,	"category3" : "채용공고_" + page
	});
});
$("#MPremierJob").on("click", "a.quickOpen", function() {
	var page = AnalyticsEventCLS.getPageSwiperEvent("#MPremierJob");
	ga('send', 'event', '홈메인', '상품_M프리미어', '지원하기_' + page);
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "상품_M프리미어"
	,	"category3" : "지원하기_" + page
	});
});

$("#MGrandJob").on("click", "a.goodsGuideLink", function() {
	ga('send', 'event', '홈메인', '상품_M그랜드', '광고안내');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "상품_M그랜드"
	,	"category3" : "광고안내"
	});
});
$("#MGrandJob").on("click", "a.info", function() {
	var page = AnalyticsEventCLS.getPageSwiperEvent("#MGrandJob");
	ga('send', 'event', '홈메인', '상품_M그랜드', '채용공고_' + page);
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "상품_M그랜드"
	,	"category3" : "채용공고_" + page
	});
});
$("#MGrandJob").on("click", "a.quickOpen", function() {
	var page = AnalyticsEventCLS.getPageSwiperEvent("#MGrandJob");
	ga('send', 'event', '홈메인', '상품_M그랜드', '지원하기_' + page);
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "상품_M그랜드"
	,	"category3" : "지원하기_" + page
	});
});

$("#MEmergencyJob").on("click", "a.goodsGuideLink", function() {
	ga('send', 'event', '홈메인', '상품_M긴급', '광고안내');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "상품_M긴급"
	,	"category3" : "광고안내"
	});
});
$("#MEmergencyJob").on("click", "a.info", function() {
	var page = AnalyticsEventCLS.getPageSwiperEvent("#MEmergencyJob");
	ga('send', 'event', '홈메인', '상품_M긴급', '채용공고_' + page);
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "상품_M긴급"
	,	"category3" : "채용공고_" + page
	});
});
$("#MEmergencyJob").on("click", "a.quickOpen", function() {
	var page = AnalyticsEventCLS.getPageSwiperEvent("#MEmergencyJob");
	ga('send', 'event', '홈메인', '상품_M긴급', '지원하기_' + page);
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "상품_M긴급"
	,	"category3" : "지원하기_" + page
	});
});

//홈메인 브랜드 매장
$("#BrandJob").on("click", "ul a", function() {
	ga('send', 'event', '홈메인', '브랜드매장', $(this).children(".company").text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "브랜드매장"
	,	"category3" : $(this).children(".company").text()
	});
});
$("#BrandJob").on("click", ".view-more__link", function() {
	ga('send', 'event', '홈메인', '브랜드매장', '전체보기');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "브랜드매장"
	,	"category3" : "전체보기"
	});
});

//홈메인 커뮤니티
$("#StoryMainStory").on("click", ".storyMainStory__list-link", function() {
	ga('send', 'event', '홈메인', '커뮤니티', '알바스토리_목록');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "커뮤니티"
	,	"category3" : "알바스토리_목록"
	});
});
$("#StoryMainStory").on("click", ".view-more__link", function() {
	ga('send', 'event', '홈메인', '커뮤니티', '알바스토리_전체보기');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "커뮤니티"
	,	"category3" : "알바스토리_전체보기"
	});
});

$("#StoryMainConsult").on("click", ".storyMainConsult__list-link", function() {
	ga('send', 'event', '홈메인', '커뮤니티', '알바상담센터_목록');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "커뮤니티"
	,	"category3" : "알바상담센터_목록"
	});
});
$("#StoryMainConsult").on("click", ".view-more__link", function() {
	ga('send', 'event', '홈메인', '커뮤니티', '알바상담센터_전체보기');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "커뮤니티"
	,	"category3" : "알바상담센터_전체보기"
	});
});

$("#StoryMainEtc").on("click", ".storyMainEtc__list-link", function() {
	ga('send', 'event', '홈메인', '커뮤니티', $(this).text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "커뮤니티"
	,	"category3" : $(this).text()
	});
});

//홈메인 이벤트&설문조사
$("#StoryMainEvent").on("click", ".view-more__link", function() {
	ga('send', 'event', '홈메인', '이벤트&설문조사', '전체보기');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "이벤트&설문조사"
	,	"category3" : '전체보기'
	});
});
$("#StoryMainEvent").on("click", ".storyMainEvent__list-link", function() {
	ga('send', 'event', '홈메인', '이벤트&설문조사', $(this).children(".title").text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "이벤트&설문조사"
	,	"category3" : $(this).text()
	});
});

//Footer
$("#PR_Bottom").on("click", "a", function() {
	ga('send', 'event', 'Footer', '배너', $(this).children("img").attr("alt"));
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "홈메인"
	,	"category2" : "배너_브랜드"
	,	"category3" : $(this).children("img").attr("alt")
	});
});
$("#Footer").on("click", ".action a", function() {
	ga('send', 'event', 'Footer', '로그인영역', $(this).text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "Footer"
	,	"category2" : "로그인영역"
	,	"category3" : $(this).text()
	});
});
$("#Footer").on("click", ".agree a", function() {
	ga('send', 'event', 'Footer', '회사소개영역', $(this).text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "Footer"
	,	"category2" : "회사소개영역"
	,	"category3" : $(this).text()
	});
});
$("#Footer").on("click", ".copyRight", function() {
	ga('send', 'event', 'Footer', '회사주소');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "Footer"
	,	"category2" : "회사주소"
	});
});

// 우측드로워
$("#AsideService").on("click", ".serviceJoin__action", function() {
	ga('send', 'event', '우측드로워', '로그인/회원가입', $(this).text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "우측드로워"
	,	"category2" : "로그인/회원가입"
	,	"category3" : $(this).text()
	});
});
$("#AsideService").on("click", ".serviceHome__setup", function() {
	ga('send', 'event', '우측드로워', '회원정보 수정', '회원정보 수정');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "우측드로워"
	,	"category2" : "회원정보 수정"
	,	"category3" : "회원정보 수정"
	});
});
$("#AsideService").on("click", ".serviceHome__who-link", function() {
	ga('send', 'event', '우측드로워', '이력서 공개여부', '이력서 공개여부');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "우측드로워"
	,	"category2" : "이력서 공개여부"
	,	"category3" : "이력서 공개여부"
	});
});
$("#AsideService").on("click", ".serviceMenu__link", function() {
	ga('send', 'event', '우측드로워', '상단(개인화 메뉴)', $(this).children('.serviceMenu__text').text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "우측드로워"
	,	"category2" : "상단(개인화 메뉴)"
	,	"category3" : $(this).children('.serviceMenu__text').text()
	});
});
$("#AsideService").on("click", ".serviceTab-item__action", function() {
	ga('send', 'event', '우측드로워', '중간 메뉴', $(this).children('.scroll-nav__text').text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "우측드로워"
	,	"category2" : "중간 메뉴"
	,	"category3" : $(this).children('.scroll-nav__text').text()
	});
});
$("#AsideService").on("click", "#TodayJobList .info", function() {
	ga('send', 'event', '우측드로워', '최근본알바', '공고상세');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "우측드로워"
	,	"category2" : "최근본알바"
	,	"category3" : "공고상세"
	});
});
$("#AsideService").on("click", "#TodayJobList .action a", function() {
	ga('send', 'event', '우측드로워', '최근본알바', $(this).text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "우측드로워"
	,	"category2" : "최근본알바"
	,	"category3" :  $(this).text()
	});
});
$("#AsideService").on("click", "#TodayJobList .serviceTab-item__view", function() {
	ga('send', 'event', '우측드로워', '최근본알바', '전체보기');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "우측드로워"
	,	"category2" : "최근본알바"
	,	"category3" : "전체보기"
	});
});
$("#AsideService").on("click", "#scrapList .info", function() {
	ga('send', 'event', '우측드로워', '스크랩알바', '공고상세');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "우측드로워"
	,	"category2" : "스크랩알바"
	,	"category3" : "공고상세"
	});
});
$("#AsideService").on("click", "#scrapList .action a", function() {
	ga('send', 'event', '우측드로워', '스크랩알바', $(this).text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "우측드로워"
	,	"category2" : "스크랩알바"
	,	"category3" :  $(this).text()
	});
});
$("#AsideService").on("click", "#scrapList .serviceTab-item__view", function() {
	ga('send', 'event', '우측드로워', '스크랩알바', '전체보기');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "우측드로워"
	,	"category2" : "스크랩알바"
	,	"category3" : "전체보기"
	});
});
$("#AsideService").on("click", "#mystoryList .info", function() {
	ga('send', 'event', '우측드로워', '내가쓴게시물', '공고상세');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "우측드로워"
	,	"category2" : "내가쓴게시물"
	,	"category3" : "스토리상세"
	});
});
$("#AsideService").on("click", "#mystoryList .serviceTab-item__view", function() {
	ga('send', 'event', '우측드로워', '내가쓴게시물', '전체보기');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "우측드로워"
	,	"category2" : "내가쓴게시물"
	,	"category3" : "전체보기"
	});
});
$("#AsideService").on("click", ".serviceBanner a", function() {
	ga('send', 'event', '우측드로워', '배너', $(this).find('img').attr('alt'));
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "우측드로워"
	,	"category2" : "배너"
	,	"category3" : $(this).find('img').attr('alt')
	});
});
$("#AsideService").on("click", ".main__footer-logout a", function() {
	ga('send', 'event', '우측드로워', '로그아웃/앱정보', $(this).text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "우측드로워"
	,	"category2" : "로그아웃/앱정보"
	,	"category3" : $(this).text()
	});
});

// 기업서비스
$(".biz .header-sub, .serviceGuide .header-sub").on("click", ".header-sub__action-alarm a", function() {
	ga('send', 'event', '기업서비스', '상단', $(this).find('.txt').text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "기업서비스"
	,	"category2" : "상단"
	,	"category3" : $(this).find('.txt').text()
	});
});
$(".biz .navPrimary, .serviceGuide .navPrimary").on("click", ".navPrimary-menu-list li a", function() {
	ga('send', 'event', '기업서비스', '상단메뉴', $(this).text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "기업서비스"
	,	"category2" : "상단메뉴"
	,	"category3" : $(this).find('.txt').text()
	});
});
$(".biz .navPrimary, .serviceGuide .navPrimary").on("click", ".submenu__list li a", function() {
	ga('send', 'event', '기업서비스', '상단메뉴', $(this).text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "기업서비스"
	,	"category2" : "상단메뉴"
	,	"category3" : $(this).find('.txt').text()
	});
});
$("body").on("click", ".company-info-modify", function() {
	ga('send', 'event', '기업서비스', '기업정보', $(this).text().trim());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "기업서비스"
	,	"category2" : "기업정보"
	,	"category3" : $(this).text().trim()
	});
});
$("body").on("click", ".main__dashboard-item a", function() {
	ga('send', 'event', '기업서비스', '공고 대시보드', $(this).text().replace(/\d+/,'').trim());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "기업서비스"
	,	"category2" : "공고 대시보드"
	,	"category3" : $(this).text().replace(/\d+/,'').trim()
	});
});
$("body").on("click", ".main__announce a", function() {
	ga('send', 'event', '기업서비스', '공고 대시보드', $(this).text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "기업서비스"
	,	"category2" : "공고 대시보드"
	,	"category3" : $(this).text()
	});
});
$("body").on("click", ".main__recommend-contents a", function() {
	ga('send', 'event', '기업서비스', '빠른공고', $(this).text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "기업서비스"
	,	"category2" : "빠른공고"
	,	"category3" : $(this).text()
	});
});
$("body").on("click", ".main__regist-contents a", function() {
	var text = $(this).text();
	if( $(this).hasClass('main-list-btn--regist') ){
		if( $(this).parent().siblings('.regist-ticket-icon').hasClass(' regist-ticket-icon--flatrate') ){
			text = '정액권' + $(this).text();
		}else{
			text = '쿠폰' + $(this).text();
		}
	}
	ga('send', 'event', '기업서비스', '쿠폰/정액권', text);
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "기업서비스"
	,	"category2" : "쿠폰/정액권"
	,	"category3" : text
	});
});
$("body").on("click", ".main__recommend-list a", function() {
	var text = $(this).siblings('strong').text() + ' ' + $(this).text();
	ga('send', 'event', '기업서비스', '상품추천', text);
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "기업서비스"
	,	"category2" : "상품추천"
	,	"category3" : text
	});
});
$("body").on("click", ".main__service-list li a", function() {
	ga('send', 'event', '기업서비스', '서비스 이용현황', $(this).find('.service-name').text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "기업서비스"
	,	"category2" : "서비스 이용현황"
	,	"category3" : $(this).find('.service-name').text()
	});
});
$("body").on("click", ".applicant-count", function() {
	ga('send', 'event', '기업서비스', '맞춤인재', '맞춤인재 더보기');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "기업서비스"
	,	"category2" : "맞춤인재"
	,	"category3" : "맞춤인재 더보기"
	});
});
$("body").on("click", ".main__banner-inner a", function() {
	ga('send', 'event', '기업서비스', '배너', $(this).find('img').attr('alt'));
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "기업서비스"
	,	"category2" : "배너"
	,	"category3" : $(this).find('img').attr('alt')
	});
});
$("body").on("click", ".main__footer a", function() {
	ga('send', 'event', '기업서비스', '로그아웃/앱정보', $(this).text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "기업서비스"
	,	"category2" : "로그아웃/앱정보"
	,	"category3" : $(this).text()
	});
});

//통합검색 옵션/필터
$("#Search").on("click", ".searchDetailBtn", function() {
	ga('send', 'event', '통합검색', '상세검색옵션');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "통합검색"
	,	"category2" : "상세검색옵션"
	});
});
$("#Search").on("click", ".searchDetailAction a", function() {
	ga('send', 'event', '통합검색', '상세검색옵션', $(this).text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "통합검색"
	,	"category2" : "상세검색옵션"
	,	"category3" :  $(this).text()
	});
});
$("#Search").on("click", ".orderby>a", function() {
	ga('send', 'event', '통합검색', '검색필터', $(this).text());
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "통합검색"
	,	"category2" : "검색필터"
	,	"category3" :  $(this).text()
	});
});

//채용 정렬조건
$(".sorting-itemBtn").on("change", "#orderby", function() {
	var SelectedText = $("#orderby>option:selected").text()
	ga('send', 'event', '채용 정렬조건', SelectedText, location.href);
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "채용 정렬조건"
	,	"category2" : SelectedText
	,	"category3" : location.href
	});
});

// 모바일 홈 지역필터
(function(){
	var flag = false;
	var areaSido = '';
	var areaGugun = '';

	$(".areaset__list-area").on("click", ".areaset__list-target", function() {
		if( $(this).parents('.areaset__list').attr('class').indexOf('sido') > 0 ){
			areaSido = $(this).text();
			flag = false;
		}else if( $(this).parents('.areaset__list').attr('class').indexOf('gugun') > 0 ){
			areaGugun = $(this).text();
			flag = true;
		}

		setTimeout(function(){
			if( $('.areaset__list--gugun>li').length <= 0 ){
				areaGugun = '전체';
				flag = true;
			};

			if( flag === true ){
				ga('send', 'event', '모바일홈/지역필터', areaSido, areaGugun);
				BA.Collect("EVENT", {
					"pageurl" : location.pathname
				,	"category1" : "모바일홈/지역필터"
				,	"category2" : areaSido
				,	"category3" : areaGugun
				});
			};
		},100);
	});
})();

//CRM 공고등록대행 배너
$("body").on("click", "#AgencyBanner a", function() {
	ga('send', 'event', '기업서비스', 'CRM 배너', '홈 배너');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "기업서비스"
	,	"category2" : "CRM 배너"
	,	"category3" : "홈 배너"
	});
});
$("#GoodsSelect").on("click", ".banner__agency a", function() {
	ga('send', 'event', '기업서비스', 'CRM 배너', '상품선택 배너');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "기업서비스"
	,	"category2" : "CRM 배너"
	,	"category3" : "상품선택 배너"
	});
});
$("#BizPayList").on("click", ".banner__agency a", function() {
	ga('send', 'event', '기업서비스', 'CRM 배너', '결제내역 배너');
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "기업서비스"
	,	"category2" : "CRM 배너"
	,	"category3" : "결제내역 배너"
	});
});

//넛징 이벤트 (뷰는 해당페이지 반영)
//공고리스트
$("body").on("click", ".job-expected__target", function() {
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "블러링공고"
	,	"category2" : "이력서등록유도넛징 클릭"
	});
});
//맞춤알바상단
$("body").on("click", ".customjob-nudge__target", function() {
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "넛징배너"
	,	"category2" : "이력서등록유도배너 클릭"
	});
});
//알바스토리>알바썰
$("body").on("click", ".story-nudge__target", function() {
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "넛징배너"
	,	"category2" : "이력서등록유도배너 클릭"
	});
});
//공고상세 (지원완료)
$("#LayerNudgeApply").on("click", ".nudge-layer__btn--submit", function() {
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "넛징팝업"
	,	"category2" : "이력서등록유도팝업 클릭"
	});
});
//공고상세
$("#LayerCustomSetting").on("click", ".nudge-layer__btn--submit", function() {
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "넛징팝업"
	,	"category2" : "맞춤알바설정유도알럿 클릭"
	});
});
//채용관 설정
$("#alertCustomSetting").on("click", "#save", function() {
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "넛징팝업"
	,	"category2" : "맞춤알바설정유도알럿 클릭"
	});
});
//개인서비스홈
$("#LayerNudgeResume").on("click", ".nudge-layer__btn--submit", function() {
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "넛징팝업"
	,	"category2" : "이력서등록유도팝업 클릭"
	});
});
//최근본알바/스크랩알바
$("#deadlineJobList").on("click", ".nudge-endjob__item a", function() {
	BA.Collect("EVENT", {
		"pageurl" : location.pathname
	,	"category1" : "넛징팝업"
	,	"category2" : "마감임박공고 지원 유도 팝업 클릭"
	});
});

