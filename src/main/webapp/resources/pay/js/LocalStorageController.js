/**
 * 로컬스토리지 컨트롤 클래스
 *
 * <pre>
 * 사용자 단말기의 로컬스토리지를 이용해 최근 검색조건들을 통합 저장/관리한다.
 * 또한, 각 검색조건들의 GET 파라미터는 여기서 정의된다.
 * 참고로, 로컬스토리지는 IE8이상과 iPhone/Gallaxy 등의 휴대단말기에서 사용가능함을 확인하였다.
 * 로컬스토리지는 Client Cookie처럼 사용자에 의해 삭제될 수 있다.
 *
 * [Usage]
 * // 인스턴스를 생성시킨다.
 * var _lsCtrl = new LocalStorageCtrl();
 *
 */

var isEmpty = function(str) {
	return (str == null || str == "null" || typeof(str) == "undefined" || str == "undefined" || str.replace(/ /gi,"") == "") ? true : false;
}

var LocalStorageCtrl = function() {
	this.strScrapPipe	= "||";
	this.strScrapEnter	= "__CrLf__";
	this.strLoginInfo = "";
	this.strImageDomain = "//image-logo.alba.kr";

	if (localStorage.strLogonId != null) {	// 기존 LocalStorage 초기화
		localStorage.clear();
	}

	// 공통 SessionStorage 정보
	sessionStorage.PAGE				= isEmpty(sessionStorage.PAGE)				? "1"	: sessionStorage.PAGE;
	sessionStorage.PAGE2			= isEmpty(sessionStorage.PAGE2)				? "1"	: sessionStorage.PAGE2;
	sessionStorage.TOTALCOUNT		= isEmpty(sessionStorage.TOTALCOUNT)		? "0"	: sessionStorage.TOTALCOUNT;
	sessionStorage.PAGELOAD			= "Y";
	sessionStorage.PAGEURL			= isEmpty(sessionStorage.PAGEURL)			? ""	: sessionStorage.PAGEURL;
	sessionStorage.WSEARCHPAGEURL	= isEmpty(sessionStorage.WSEARCHPAGEURL)	? ""	: sessionStorage.WSEARCHPAGEURL;
	sessionStorage.NEXTADIDS		= isEmpty(sessionStorage.NEXTADIDS)			? JSON.stringify([])	: sessionStorage.NEXTADIDS;	// 다음공고번호들

	// 모바일앱 Launch시 단말기정보
	sessionStorage.DEVICE			= isEmpty(sessionStorage.DEVICE)			? ""	: sessionStorage.DEVICE;
	sessionStorage.VERSION			= isEmpty(sessionStorage.VERSION)			? ""	: sessionStorage.VERSION;
	sessionStorage.REGISTID			= isEmpty(sessionStorage.REGISTID)			? ""	: sessionStorage.REGISTID;

	// TM전문관
	sessionStorage.COMNM			= isEmpty(sessionStorage.COMNM)				? ""	: sessionStorage.COMNM;

	//맞춤알바
	sessionStorage.INDEX			= isEmpty(sessionStorage.INDEX)				? ""	: sessionStorage.INDEX;
	sessionStorage.ORDER			= isEmpty(sessionStorage.ORDER)				? ""	: sessionStorage.ORDER;

	// 상품안내
	sessionStorage.PRODUCTLIST		= isEmpty(sessionStorage.PRODUCTLIST)		? "MOBILE"	: sessionStorage.PRODUCTLIST;
	sessionStorage.PRODUCTCD		= isEmpty(sessionStorage.PRODUCTCD)			? ""	: sessionStorage.PRODUCTCD;
	sessionStorage.PERIODCD			= isEmpty(sessionStorage.PERIODCD)			? ""	: sessionStorage.PERIODCD;

	sessionStorage.COMBICD		= isEmpty(sessionStorage.COMBICD)			? ""	: sessionStorage.COMBICD;
	sessionStorage.COMBIBASICPRICE		= isEmpty(sessionStorage.COMBIBASICPRICE)			? ""	: sessionStorage.COMBIBASICPRICE;
	sessionStorage.COMBISALEPRICE		= isEmpty(sessionStorage.COMBISALEPRICE)			? ""	: sessionStorage.COMBISALEPRICE;

	sessionStorage.OPTIONCD				= isEmpty(sessionStorage.OPTIONCD)					? ""	: sessionStorage.OPTIONCD;
	sessionStorage.OPTION_PERIODCD		= isEmpty(sessionStorage.OPTION_PERIODCD)			? ""	: sessionStorage.OPTION_PERIODCD;

	sessionStorage.OPTION_PRICE			= isEmpty(sessionStorage.OPTION_PRICE)				? ""	: sessionStorage.OPTION_PRICE;
	sessionStorage.OPTION_DCPRICE		= isEmpty(sessionStorage.OPTION_DCPRICE)			? ""	: sessionStorage.OPTION_DCPRICE;

	sessionStorage.OPTION_ICON			= isEmpty(sessionStorage.OPTION_ICON)				? ""	: sessionStorage.OPTION_ICON;
	sessionStorage.GOODS_CATEGORYCD		= isEmpty(sessionStorage.GOODS_CATEGORYCD)			? "mobile"	: sessionStorage.GOODS_CATEGORYCD;

	//헤드라인 무료혜택
	sessionStorage.POSTOPTIONCD		= isEmpty(sessionStorage.POSTOPTIONCD)					? ""	: sessionStorage.POSTOPTIONCD;

	//쿠폰 관련 값
	sessionStorage.COUPONISSUENO		= isEmpty(sessionStorage.COUPONISSUENO)				? ""	: sessionStorage.COUPONISSUENO;
	sessionStorage.COUPONCD				= isEmpty(sessionStorage.COUPONCD)					? ""	: sessionStorage.COUPONCD;

	sessionStorage.FLATRATECD			= isEmpty(sessionStorage.FLATRATECD)				? ""	: sessionStorage.FLATRATECD;
	sessionStorage.FLATRATE_JOBPRODUCTCD			= isEmpty(sessionStorage.FLATRATE_JOBPRODUCTCD)				? ""	: sessionStorage.FLATRATE_JOBPRODUCTCD;
	sessionStorage.FOPCODE				= isEmpty(sessionStorage.FOPCODE)					? ""	: sessionStorage.FOPCODE;
	sessionStorage.FOPCODEA				= isEmpty(sessionStorage.FOPCODEA)					? ""	: sessionStorage.FOPCODEA;
	sessionStorage.FOPCODEB				= isEmpty(sessionStorage.FOPCODEB)					? ""	: sessionStorage.FOPCODEB;
	sessionStorage.FOPCODEC				= isEmpty(sessionStorage.FOPCODEC)					? ""	: sessionStorage.FOPCODEC;
	sessionStorage.FOPCODED				= isEmpty(sessionStorage.FOPCODED)					? ""	: sessionStorage.FOPCODED;
	sessionStorage.FOPCODEE				= isEmpty(sessionStorage.FOPCODEE)					? ""	: sessionStorage.FOPCODEE;
	sessionStorage.FOPCODENEW			= isEmpty(sessionStorage.FOPCODENEW)				? ""	: sessionStorage.FOPCODENEW;
	sessionStorage.FOPCODE_PERIODCD		= isEmpty(sessionStorage.FOPCODE_PERIODCD)			? ""	: sessionStorage.FOPCODE_PERIODCD;
	sessionStorage.FOPCODEA_PERIODCD	= isEmpty(sessionStorage.FOPCODEA_PERIODCD)			? ""	: sessionStorage.FOPCODEA_PERIODCD;
	sessionStorage.FOPCODEB_PERIODCD	= isEmpty(sessionStorage.FOPCODEB_PERIODCD)			? ""	: sessionStorage.FOPCODEB_PERIODCD;
	sessionStorage.FOPCODEC_PERIODCD	= isEmpty(sessionStorage.FOPCODEC_PERIODCD)			? ""	: sessionStorage.FOPCODEC_PERIODCD;
	sessionStorage.FOPCODED_PERIODCD	= isEmpty(sessionStorage.FOPCODED_PERIODCD)			? ""	: sessionStorage.FOPCODED_PERIODCD;
	sessionStorage.FOPCODEE_PERIODCD	= isEmpty(sessionStorage.FOPCODEE_PERIODCD)			? ""	: sessionStorage.FOPCODEE_PERIODCD;
	sessionStorage.FOPCODENEW_PERIODCD	= isEmpty(sessionStorage.FOPCODENEW_PERIODCD)	? ""	: sessionStorage.FOPCODENEW_PERIODCD;

	sessionStorage.AUTOFLAT				= isEmpty(sessionStorage.AUTOFLAT)					? ""	: sessionStorage.AUTOFLAT;
	sessionStorage.PTEMPLATECD		= isEmpty(sessionStorage.PTEMPLATECD)		? ""	: sessionStorage.PTEMPLATECD;
	sessionStorage.AGENCYRIDX		= isEmpty(sessionStorage.AGENCYRIDX)		? ""	: sessionStorage.AGENCYRIDX;

	//통합검색 섹션(카테고리)
	sessionStorage.WSEARCH_SECTION	= isEmpty(sessionStorage.WSEARCH_SECTION)	? ""	: sessionStorage.WSEARCH_SECTION;

	//메인 플로팅 배너 노출조건
	sessionStorage.MAINBANNER		= isEmpty(sessionStorage.MAINBANNER)		? ""	: sessionStorage.MAINBANNER;

	//알바매니저
	//직원관리 바로가기레이어직원번호
	sessionStorage.SHORTCUTSTAFFNO	= isEmpty(sessionStorage.SHORTCUTSTAFFNO)	? ""	: sessionStorage.SHORTCUTSTAFFNO;

	localStorage.PRODUCTLIST		= isEmpty(localStorage.PRODUCTLIST)		? "MOBILE"	: localStorage.PRODUCTLIST;
	localStorage.PRODUCTCD		= isEmpty(localStorage.PRODUCTCD)			? ""	: localStorage.PRODUCTCD;
	localStorage.PERIODCD			= isEmpty(localStorage.PERIODCD)			? ""	: localStorage.PERIODCD;

	localStorage.COMBICD		= isEmpty(localStorage.COMBICD)			? ""	: localStorage.COMBICD;
	localStorage.COMBIBASICPRICE		= isEmpty(localStorage.COMBIBASICPRICE)			? ""	: localStorage.COMBIBASICPRICE;
	localStorage.COMBISALEPRICE		= isEmpty(localStorage.COMBISALEPRICE)			? ""	: localStorage.COMBISALEPRICE;

	localStorage.OPTIONCD				= isEmpty(localStorage.OPTIONCD)					? ""	: localStorage.OPTIONCD;
	localStorage.OPTION_PERIODCD		= isEmpty(localStorage.OPTION_PERIODCD)			? ""	: localStorage.OPTION_PERIODCD;

	localStorage.OPTION_PRICE			= isEmpty(localStorage.OPTION_PRICE)				? ""	: localStorage.OPTION_PRICE;
	localStorage.OPTION_DCPRICE		= isEmpty(localStorage.OPTION_DCPRICE)			? ""	: localStorage.OPTION_DCPRICE;

	localStorage.OPTION_ICON			= isEmpty(localStorage.OPTION_ICON)				? ""	: localStorage.OPTION_ICON;
	localStorage.GOODS_CATEGORYCD		= isEmpty(localStorage.GOODS_CATEGORYCD)			? "mobile"	: localStorage.GOODS_CATEGORYCD;

	//헤드라인 무료혜택
	localStorage.POSTOPTIONCD			= isEmpty(localStorage.POSTOPTIONCD)					? ""	: localStorage.POSTOPTIONCD;

	//쿠폰 관련 값
	localStorage.COUPONISSUENO		= isEmpty(localStorage.COUPONISSUENO)				? ""	: localStorage.COUPONISSUENO;
	localStorage.COUPONCD			= isEmpty(localStorage.COUPONCD)					? ""	: localStorage.COUPONCD;

	localStorage.AUTOFLAT				= isEmpty(localStorage.AUTOFLAT)					? ""	: localStorage.AUTOFLAT;

	localStorage.FLATRATECD				= isEmpty(localStorage.FLATRATECD)				? ""	: localStorage.FLATRATECD;
	localStorage.FLATRATE_JOBPRODUCTCD			= isEmpty(localStorage.FLATRATE_JOBPRODUCTCD)				? ""	: localStorage.FLATRATE_JOBPRODUCTCD;
	localStorage.FOPCODE				= isEmpty(localStorage.FOPCODE)					? ""	: localStorage.FOPCODE;
	localStorage.FOPCODEA				= isEmpty(localStorage.FOPCODEA)					? ""	: localStorage.FOPCODEA;
	localStorage.FOPCODEB				= isEmpty(localStorage.FOPCODEB)					? ""	: localStorage.FOPCODEB;
	localStorage.FOPCODEC				= isEmpty(localStorage.FOPCODEC)					? ""	: localStorage.FOPCODEC;
	localStorage.FOPCODED				= isEmpty(localStorage.FOPCODED)					? ""	: localStorage.FOPCODED;
	localStorage.FOPCODEE				= isEmpty(localStorage.FOPCODEE)					? ""	: localStorage.FOPCODEE;
	localStorage.FOPCODENEW			= isEmpty(localStorage.FOPCODENEW)				? ""	: localStorage.FOPCODENEW;
	localStorage.FOPCODE_PERIODCD		= isEmpty(localStorage.FOPCODE_PERIODCD)			? ""	: localStorage.FOPCODE_PERIODCD;
	localStorage.FOPCODEA_PERIODCD	= isEmpty(localStorage.FOPCODEA_PERIODCD)			? ""	: localStorage.FOPCODEA_PERIODCD;
	localStorage.FOPCODEB_PERIODCD	= isEmpty(localStorage.FOPCODEB_PERIODCD)			? ""	: localStorage.FOPCODEB_PERIODCD;
	localStorage.FOPCODEC_PERIODCD	= isEmpty(localStorage.FOPCODEC_PERIODCD)			? ""	: localStorage.FOPCODEC_PERIODCD;
	localStorage.FOPCODED_PERIODCD	= isEmpty(localStorage.FOPCODED_PERIODCD)			? ""	: localStorage.FOPCODED_PERIODCD;
	localStorage.FOPCODEE_PERIODCD	= isEmpty(localStorage.FOPCODEE_PERIODCD)			? ""	: localStorage.FOPCODEE_PERIODCD;
	localStorage.FOPCODENEW_PERIODCD	= isEmpty(localStorage.FOPCODENEW_PERIODCD)	? ""	: localStorage.FOPCODENEW_PERIODCD;

	//직원관리 근무내역보기 설정년월
	localStorage.ALBAMGRYYYYMMDD	= isEmpty(localStorage.ALBAMGRYYYYMMDD)		? ""	: localStorage.ALBAMGRYYYYMMDD;
	//알바생 근무처설정
	localStorage.ALBAMGRSTAFFNO		= isEmpty(localStorage.ALBAMGRSTAFFNO)		? ""	: localStorage.ALBAMGRSTAFFNO;

	//My메뉴 편집
	localStorage.MYMENU				= isEmpty(localStorage.MYMENU)				? ""	: localStorage.MYMENU;

	// 신규 LocalStorage 정보
	// 최근검색지역
	localStorage.RECENTAREA			= isEmpty(localStorage.RECENTAREA)			? ""	: localStorage.RECENTAREA;
	localStorage.RECENTKIND			= isEmpty(localStorage.RECENTKIND)			? ""	: localStorage.RECENTKIND;
	localStorage.RECENTCATEGORY		= isEmpty(localStorage.RECENTCATEGORY)		? ""	: localStorage.RECENTCATEGORY;

	// 공고스크랩
	localStorage.SCRAPED			= isEmpty(localStorage.SCRAPED)				? ""	: localStorage.SCRAPED;

	// 오늘 본 채용공고
	localStorage.TODAYJOBADID		= isEmpty(localStorage.TODAYJOBADID)		? ""	: localStorage.TODAYJOBADID;
	localStorage.TODAYJOBDATE		= isEmpty(localStorage.TODAYJOBDATE)		? new Date(): localStorage.TODAYJOBDATE;

	// 채용관련
	localStorage.JOBADID			= isEmpty(localStorage.JOBADID)				? ""	: localStorage.JOBADID;
	localStorage.AREACD				= isEmpty(localStorage.AREACD)				? ""	: localStorage.AREACD;
	localStorage.WORKGUGUN			= isEmpty(localStorage.WORKGUGUN)			? ""	: this.repTempWorkgugun(localStorage.WORKGUGUN);
	localStorage.WORKDONG			= isEmpty(localStorage.WORKDONG)			? ""	: localStorage.WORKDONG;
	localStorage.JOBKIND			= isEmpty(localStorage.JOBKIND)				? ""	: localStorage.JOBKIND;
	localStorage.JOBKINDSUB			= isEmpty(localStorage.JOBKINDSUB)			? ""	: localStorage.JOBKINDSUB;
	localStorage.JOBKINDMULTI		= isEmpty(localStorage.JOBKINDMULTI)		? ""	: localStorage.JOBKINDMULTI;
	localStorage.SEASONAREACD		= isEmpty(localStorage.SEASONAREACD)		? ""	: localStorage.SEASONAREACD;
	localStorage.SEASONCD			= isEmpty(localStorage.SEASONCD)			? ""	: localStorage.SEASONCD;
	localStorage.SEASONTOP			= isEmpty(localStorage.SEASONTOP)			? ""	: localStorage.SEASONTOP;
	localStorage.SEASONCD2			= isEmpty(localStorage.SEASONCD2)			? ""	: localStorage.SEASONCD2; //예비용(시즌채용관 2개이상 운영시)
	localStorage.SEASONCD3			= isEmpty(localStorage.SEASONCD3)			? ""	: localStorage.SEASONCD3; //예비용(시즌채용관 2개이상 운영시)
	localStorage.SEASONCD4			= isEmpty(localStorage.SEASONCD4)			? ""	: localStorage.SEASONCD4; //예비용(시즌채용관 2개이상 운영시)
	localStorage.WORKPERIODCD		= isEmpty(localStorage.WORKPERIODCD)		? ""	: localStorage.WORKPERIODCD;
	localStorage.WORKWEEKCD			= isEmpty(localStorage.WORKWEEKCD)			? ""	: localStorage.WORKWEEKCD;
	localStorage.WEEKDAYS			= isEmpty(localStorage.WEEKDAYS)			? ""	: localStorage.WEEKDAYS;
	localStorage.WORKSTARTYYYYMMDD	= isEmpty(localStorage.WORKSTARTYYYYMMDD)	? ""	: localStorage.WORKSTARTYYYYMMDD;	// 날짜별단기알바
	localStorage.WORKENDYYYYMMDD	= isEmpty(localStorage.WORKENDYYYYMMDD)		? ""	: localStorage.WORKENDYYYYMMDD;		// 날짜별단기알바
	localStorage.REGIONCD			= isEmpty(localStorage.REGIONCD)			? ""	: localStorage.REGIONCD;
	localStorage.LINECD				= isEmpty(localStorage.LINECD)				? ""	: localStorage.LINECD;
	localStorage.STATIONCD			= isEmpty(localStorage.STATIONCD)			? ""	: localStorage.STATIONCD;
	localStorage.BRANDCD			= isEmpty(localStorage.BRANDCD)				? ""	: localStorage.BRANDCD;
	localStorage.UNIAREACD			= isEmpty(localStorage.UNIAREACD)			? ""	: localStorage.UNIAREACD;
	localStorage.UNICD				= isEmpty(localStorage.UNICD)				? ""	: localStorage.UNICD;
	localStorage.UNICDMULTI			= isEmpty(localStorage.UNICDMULTI)			? ""	: localStorage.UNICDMULTI;
	localStorage.OPTIONCD			= isEmpty(localStorage.OPTIONCD)			? ""	: localStorage.OPTIONCD;
	localStorage.SCHNM				= isEmpty(localStorage.SCHNM)				? ""	: localStorage.SCHNM;
	localStorage.LISTTYPE			= isEmpty(localStorage.LISTTYPE)			? ""	: localStorage.LISTTYPE;
	localStorage.ORDERBY			= isEmpty(localStorage.ORDERBY)				? ""	: localStorage.ORDERBY;
	localStorage.PROVIDERCD			= isEmpty(localStorage.PROVIDERCD)			? ""	: localStorage.PROVIDERCD;
	localStorage.CATECD				= isEmpty(localStorage.CATECD)				? ""	: localStorage.CATECD;
	localStorage.PAYCD				= isEmpty(localStorage.PAYCD)				? ""	: localStorage.PAYCD;
	localStorage.PAYSTART			= isEmpty(localStorage.PAYSTART)			? ""	: localStorage.PAYSTART;
	localStorage.PAYEND				= isEmpty(localStorage.PAYEND)				? ""	: localStorage.PAYEND;
	localStorage.MAPTYPE			= isEmpty(localStorage.MAPTYPE)				? "D"	: localStorage.MAPTYPE;
	localStorage.SEARCHWORDS		= isEmpty(localStorage.SEARCHWORDS)			? ""	: localStorage.SEARCHWORDS;	// 현위치 검색어 이력
	localStorage.SHORTCATEGORY	= isEmpty(localStorage.SHORTCATEGORY)		? ""	: localStorage.SHORTCATEGORY;	// 단기알바 카테고리
	localStorage.WORKSTARTHHMI = isEmpty(localStorage.WORKSTARTHHMI)	? ""	: localStorage.WORKSTARTHHMI;	// 단기알바 근무시작시간
	localStorage.WORKENDHHMI	= isEmpty(localStorage.WORKENDHHMI)		? ""	: localStorage.WORKENDHHMI;		// 단기알바 근무종료시간
	localStorage.TMPSTARTBAR		= isEmpty(localStorage.TMPSTARTBAR)	? ""	: localStorage.TMPSTARTBAR;			// 단기알바 근무시간 시작바
	localStorage.TMPENDBAR		= isEmpty(localStorage.TMPENDBAR)		? ""	: localStorage.TMPENDBAR;				// 단기알바 근무시간 종료바
	localStorage.TMPMINVALUE		= isEmpty(localStorage.TMPMINVALUE)	? ""	: localStorage.TMPMINVALUE;			// 단기알바 근무시간 MIN값
	localStorage.TMPMAXVALUE	= isEmpty(localStorage.TMPMAXVALUE)		? ""	: localStorage.TMPMAXVALUE;		// 단기알바 근무시간 MAX값
	localStorage.SWIPERSTYLE		= isEmpty(localStorage.SWIPERSTYLE)		? ""	: localStorage.SWIPERSTYLE;				// 단기알바 카테고리 STYLE값
	localStorage.SHORTTIMECD		= isEmpty(localStorage.SHORTTIMECD)		? ""	: localStorage.SHORTTIMECD;		// 단시간알바 코드값
	localStorage.HOTPLACESIDOCD	= isEmpty(localStorage.HOTPLACESIDOCD)	? ""	: localStorage.HOTPLACESIDOCD;		// 핫플레이스알바 시도코드
	localStorage.HOTPLACECD		= isEmpty(localStorage.HOTPLACECD)		? ""	: localStorage.HOTPLACECD;				// 핫플레이스알바 핫플레이스코드
	localStorage.HOTPLACECDMULTI	= isEmpty(localStorage.HOTPLACECDMULTI)		? ""	: localStorage.HOTPLACECDMULTI;
	localStorage.LOCALSUBSIDOCD	= isEmpty(localStorage.LOCALSUBSIDOCD)		? ""	: localStorage.LOCALSUBSIDOCD;	// 지역별 서브메뉴(역세권,대학가) 시도코드

	//검색고도화
	//		지역
	localStorage.SCH_WORKAREADONGVIEW		= isEmpty(localStorage.SCH_WORKAREADONGVIEW)		? ""	: localStorage.SCH_WORKAREADONGVIEW;		// 옆동묶기
	localStorage.SCH_WORKAREAMULTI			= isEmpty(localStorage.SCH_WORKAREAMULTI)			? ""	: this.repTempWorkgugun(localStorage.SCH_WORKAREAMULTI);			// 멀티근무지역
	localStorage.SCH_WORKAREAHISTORY		= isEmpty(localStorage.SCH_WORKAREAHISTORY)			? ""	: this.repTempWorkgugun(localStorage.SCH_WORKAREAHISTORY);			// 최근검색근무지역
	//		직종
	localStorage.SCH_JOBKINDNOT				= isEmpty(localStorage.SCH_JOBKINDNOT)				? ""	: localStorage.SCH_JOBKINDNOT;				// 직종제외
	localStorage.SCH_JOBKINDMULTI			= isEmpty(localStorage.SCH_JOBKINDMULTI)			? ""	: localStorage.SCH_JOBKINDMULTI;			// 멀티직종
	localStorage.SCH_JOBKINDHISTORY			= isEmpty(localStorage.SCH_JOBKINDHISTORY)			? ""	: localStorage.SCH_JOBKINDHISTORY;			// 최근검색직종
	//		상세
	localStorage.SCH_LISTTYPE				= isEmpty(localStorage.SCH_LISTTYPE)				? ""	: localStorage.SCH_LISTTYPE;				// 목록정렬
	localStorage.SCH_WORKPERIODCD			= isEmpty(localStorage.SCH_WORKPERIODCD)			? ""	: localStorage.SCH_WORKPERIODCD;			// 근무기간
	localStorage.SCH_WORKWEEKCD				= isEmpty(localStorage.SCH_WORKWEEKCD)				? ""	: localStorage.SCH_WORKWEEKCD;				// 근무요일
	localStorage.SCH_WEEKDAYS				= isEmpty(localStorage.SCH_WEEKDAYS)				? ""	: localStorage.SCH_WEEKDAYS;				// 근무요일선택
	localStorage.SCH_WORKTIME				= isEmpty(localStorage.SCH_WORKTIME)				? ""	: localStorage.SCH_WORKTIME;				// 근무시간
	localStorage.SCH_HIRETYPECD				= isEmpty(localStorage.SCH_HIRETYPECD)				? ""	: localStorage.SCH_HIRETYPECD;				// 고용형태
	localStorage.SCH_PAYCD					= isEmpty(localStorage.SCH_PAYCD)					? ""	: localStorage.SCH_PAYCD;					// 급여
	localStorage.SCH_PAYAMT					= isEmpty(localStorage.SCH_PAYAMT)					? ""	: localStorage.SCH_PAYAMT;					// 급여범위
	localStorage.SCH_GENDERCD				= isEmpty(localStorage.SCH_GENDERCD)				? ""	: localStorage.SCH_GENDERCD;				// 성별
	localStorage.SCH_AGELIMITMIN			= isEmpty(localStorage.SCH_AGELIMITMIN)				? ""	: localStorage.SCH_AGELIMITMIN;				// 나이설정 시작값
	localStorage.SCH_AGELIMITMAX			= isEmpty(localStorage.SCH_AGELIMITMAX)				? ""	: localStorage.SCH_AGELIMITMAX;				// 나이설정 최종값
	localStorage.SCH_LASTSCHOOLCD			= isEmpty(localStorage.SCH_LASTSCHOOLCD)			? ""	: localStorage.SCH_LASTSCHOOLCD;			// 학력
	localStorage.SCH_LASTSCHOOLCDUNRELATED	= isEmpty(localStorage.SCH_LASTSCHOOLCDUNRELATED)	? ""	: localStorage.SCH_LASTSCHOOLCDUNRELATED;	// 학력무관포함
	localStorage.SCH_CAREERCD				= isEmpty(localStorage.SCH_CAREERCD)				? ""	: localStorage.SCH_CAREERCD;				// 경력
	localStorage.SCH_CAREERCDUNRELATED		= isEmpty(localStorage.SCH_CAREERCDUNRELATED)		? ""	: localStorage.SCH_CAREERCDUNRELATED;		// 경력무관포함
	localStorage.SCH_WELFARECD				= isEmpty(localStorage.SCH_WELFARECD)				? ""	: localStorage.SCH_WELFARECD;				// 복리후생
	localStorage.SCH_SPECIAL				= isEmpty(localStorage.SCH_SPECIAL)					? ""	: localStorage.SCH_SPECIAL;					// 우대조건

	// 역세권
	localStorage.SCH_SUBWAYMULTI			= isEmpty(localStorage.SCH_SUBWAYMULTI)			? ""	: localStorage.SCH_SUBWAYMULTI;		// 역세권 코드
	localStorage.SCH_SUBWAYHISTORY		= isEmpty(localStorage.SCH_SUBWAYHISTORY)			? ""	: localStorage.SCH_SUBWAYHISTORY;			// 최근검색역세권

	// 우대채용별
	localStorage.WSC_IMPAIRMENTCD	= isEmpty(localStorage.WSC_IMPAIRMENTCD)	? ""	: localStorage.WSC_IMPAIRMENTCD;	// 장애인 가능 > 장애코드

	// 대학가 알바
	localStorage.SCH_UNIVHISTORY	= isEmpty(localStorage.SCH_UNIVHISTORY)		? ""	: localStorage.SCH_UNIVHISTORY;		// 최근검색한 대학교

	// 핫플레이스 알바
	localStorage.SCH_HOTPLACEHISTORY	= isEmpty(localStorage.SCH_HOTPLACEHISTORY)		? ""	: localStorage.SCH_HOTPLACEHISTORY;		// 최근검색한 핫플레이스

	// 공고등록알림서비스
	localStorage.JOBREGNOTI_CUSERID	= isEmpty(localStorage.JOBREGNOTI_CUSERID)	? ""	: localStorage.JOBREGNOTI_CUSERID;		// 기업회원아이디
	localStorage.JOBREGNOTI_ORDERBY	= isEmpty(localStorage.JOBREGNOTI_ORDERBY)	? "COMNM"	: localStorage.JOBREGNOTI_ORDERBY;
	localStorage.JOBREGNOTI_COMNM	= isEmpty(localStorage.JOBREGNOTI_COMNM)	? ""	: localStorage.JOBREGNOTI_COMNM;

	// 열람기업
	localStorage.READDETAIL_CUSERID	= isEmpty(localStorage.READDETAIL_CUSERID)	? ""	: localStorage.READDETAIL_CUSERID;		// 기업회원아이디

	// 꿀알바채용
	//localStorage.HONEYCD			= isEmpty(localStorage.HONEYCD)				? "A"	: localStorage.HONEYCD;
	localStorage.HONEYCD			= isEmpty(localStorage.HONEYCD)				? ""	: localStorage.HONEYCD;	//기획자요구 : 전체 추가

	// 정직원채용
	localStorage.RECRUITLISTTYPE	= isEmpty(localStorage.RECRUITLISTTYPE)		? ""	: localStorage.RECRUITLISTTYPE;
	localStorage.RECRUITORDERBY		= isEmpty(localStorage.RECRUITORDERBY)		? ""	: localStorage.RECRUITORDERBY;
	localStorage.RECRUITGENDERINC	= isEmpty(localStorage.RECRUITGENDERINC)	? ""	: localStorage.RECRUITGENDERINC;
	localStorage.RECRUITGENDERCD	= isEmpty(localStorage.RECRUITGENDERCD)		? ""	: localStorage.RECRUITGENDERCD;
	localStorage.RECRUITAGELIMIT	= isEmpty(localStorage.RECRUITAGELIMIT)		? ""	: localStorage.RECRUITAGELIMIT;
	localStorage.RECRUITCAREERCD	= isEmpty(localStorage.RECRUITCAREERCD)		? ""	: localStorage.RECRUITCAREERCD;
	localStorage.RECRUITEDUCD		= isEmpty(localStorage.RECRUITEDUCD)		? ""	: localStorage.RECRUITEDUCD;

	localStorage.CAREERCDUNRELATED		= isEmpty(localStorage.CAREERCDUNRELATED)		? ""	: localStorage.CAREERCDUNRELATED;
	localStorage.LASTSCHOOLCDUNRELATED		= isEmpty(localStorage.LASTSCHOOLCDUNRELATED)		? ""	: localStorage.LASTSCHOOLCDUNRELATED;
	localStorage.AGEUNRELATED		= isEmpty(localStorage.AGEUNRELATED)		? ""	: localStorage.AGEUNRELATED;

	// 현재위치알바
	localStorage.LOCATION			= isEmpty(localStorage.LOCATION)			? ""	: localStorage.LOCATION;
	localStorage.LONGITUDE			= isEmpty(localStorage.LONGITUDE)			? ""	: localStorage.LONGITUDE;
	localStorage.LATITUDE			= isEmpty(localStorage.LATITUDE)			? ""	: localStorage.LATITUDE;
	localStorage.DISTANCE			= isEmpty(localStorage.DISTANCE)			? "1000": localStorage.DISTANCE;
	localStorage.LNGX_ENC			= isEmpty(localStorage.LNGX_ENC)			? ""	: localStorage.LNGX_ENC;
	localStorage.LATY_ENC			= isEmpty(localStorage.LATY_ENC)			? ""	: localStorage.LATY_ENC;

	// 인재정보
	localStorage.LOCALSIDO			= isEmpty(localStorage.LOCALSIDO)			? ""	: localStorage.LOCALSIDO;
	localStorage.LOCALGUGUN			= isEmpty(localStorage.LOCALGUGUN)			? ""	: this.repTempWorkgugun(localStorage.LOCALGUGUN);
	localStorage.LOCALDONG			= isEmpty(localStorage.LOCALDONG)			? ""	: localStorage.LOCALDONG;
	localStorage.RESUMEJOBKIND		= isEmpty(localStorage.RESUMEJOBKIND)		? ""	: localStorage.RESUMEJOBKIND;
	localStorage.RESUMEJOBKINDSUB	= isEmpty(localStorage.RESUMEJOBKINDSUB)	? ""	: localStorage.RESUMEJOBKINDSUB;

	localStorage.RESUMESCHNM		= isEmpty(localStorage.RESUMESCHNM)			? ""	: localStorage.RESUMESCHNM;
	localStorage.RESUMEAREAMULTI	= isEmpty(localStorage.RESUMEAREAMULTI)		? ""	: localStorage.RESUMEAREAMULTI;
	localStorage.RESUMEJOBKINDMULTI	= isEmpty(localStorage.RESUMEJOBKINDMULTI)	? ""	: localStorage.RESUMEJOBKINDMULTI;
	localStorage.RESUMEORDERBY		= isEmpty(localStorage.RESUMEORDERBY)		? ""	: localStorage.RESUMEORDERBY;
	localStorage.RESUMESPECIALCD	= isEmpty(localStorage.RESUMESPECIALCD)		? ""	: localStorage.RESUMESPECIALCD;
	localStorage.RESUMEGENDERCD		= isEmpty(localStorage.RESUMEGENDERCD)		? ""	: localStorage.RESUMEGENDERCD;
	localStorage.RESUMEAGESTART		= isEmpty(localStorage.RESUMEAGESTART)		? ""	: localStorage.RESUMEAGESTART;
	localStorage.RESUMEAGEEND		= isEmpty(localStorage.RESUMEAGEEND)		? ""	: localStorage.RESUMEAGEEND;
	localStorage.RESUMELASTEDUCD	= isEmpty(localStorage.RESUMELASTEDUCD)		? ""	: localStorage.RESUMELASTEDUCD;
	localStorage.RESUMEEDUCOURSE	= isEmpty(localStorage.RESUMEEDUCOURSE)		? ""	: localStorage.RESUMEEDUCOURSE;
	localStorage.RESUMESELEDUSTATE	= isEmpty(localStorage.RESUMESELEDUSTATE)	? ""	: localStorage.RESUMESELEDUSTATE;
	localStorage.RESUMELISTTYPE		= isEmpty(localStorage.RESUMELISTTYPE)		? ""	: localStorage.RESUMELISTTYPE;

	localStorage.RESUMESELECTAREA	= isEmpty(localStorage.RESUMESELECTAREA)	? ""	: localStorage.RESUMESELECTAREA;				//인재 지역 저장값중 선택값
	localStorage.RESUMESELECTJOBKIND= isEmpty(localStorage.RESUMESELECTJOBKIND)	? ""	: localStorage.RESUMESELECTJOBKIND;				//인재 직종 저장값중 선택값

	localStorage.RESUMETEMPAREAMULTI	= isEmpty(localStorage.RESUMETEMPAREAMULTI)		? ""	: localStorage.RESUMETEMPAREAMULTI;		//인재 지역 임시저장
	localStorage.RESUMETEMPJOBKINDMULTI	= isEmpty(localStorage.RESUMETEMPJOBKINDMULTI)	? ""	: localStorage.RESUMETEMPJOBKINDMULTI;	//인재 직종 임시저장


	//브랜드채용관
	localStorage.BRAND_WORKPERIODCD		= isEmpty(localStorage.BRAND_WORKPERIODCD)		? JSON.stringify([])	: localStorage.BRAND_WORKPERIODCD;
	localStorage.BRAND_WORKPERIODALL	= isEmpty(localStorage.BRAND_WORKPERIODALL)		? "N"					: localStorage.BRAND_WORKPERIODALL;
	localStorage.BRAND_WORKPERIODINCYN	= isEmpty(localStorage.BRAND_WORKPERIODINCYN)	? "N"					: localStorage.BRAND_WORKPERIODINCYN;
	localStorage.BRAND_WORKWEEKCD		= isEmpty(localStorage.BRAND_WORKWEEKCD)		? ""					: localStorage.BRAND_WORKWEEKCD;
	localStorage.BRAND_WEEKDAY			= isEmpty(localStorage.BRAND_WEEKDAY)			? JSON.stringify([])	: localStorage.BRAND_WEEKDAY;
	localStorage.BRAND_WORKTIMECD		= isEmpty(localStorage.BRAND_WORKTIMECD)		? JSON.stringify([])	: localStorage.BRAND_WORKTIMECD;
	localStorage.BRAND_WORKTIMEALL		= isEmpty(localStorage.BRAND_WORKTIMEALL)		? "N"					: localStorage.BRAND_WORKTIMEALL;
	localStorage.BRAND_WORKTIMEINCYN	= isEmpty(localStorage.BRAND_WORKTIMEINCYN)		? "N"					: localStorage.BRAND_WORKTIMEINCYN;
	localStorage.BRAND_GENDERCD			= isEmpty(localStorage.BRAND_GENDERCD)			? ""					: localStorage.BRAND_GENDERCD;
	localStorage.BRAND_GENDERINCYN		= isEmpty(localStorage.BRAND_GENDERINCYN)		? "N"					: localStorage.BRAND_GENDERINCYN;

	localStorage.BRAND_AGE				= isEmpty(localStorage.BRAND_AGE)				? ""					: localStorage.BRAND_AGE;
	localStorage.BRAND_AGEINCYN			= isEmpty(localStorage.BRAND_AGEINCYN)			? "N"					: localStorage.BRAND_AGEINCYN;

	localStorage.BRAND_SEARCH			= isEmpty(localStorage.BRAND_SEARCH)			? ""					: localStorage.BRAND_SEARCH;

	// 맞춤알바
	if (localStorage.CUSTOM_AREACD != "") {	// 개편전 데이터 초기화
		localStorage.CUSTOM_AREACD = "";
		localStorage.CUSTOM_WORKPERIODCD = "";
		localStorage.CUSTOM_WORKWEEKCD = "";
	}

	//맞춤알바 리스트 인덱스
	localStorage.CUSTOM_INDEX			= isEmpty(localStorage.CUSTOM_INDEX)			? JSON.stringify([])	: localStorage.CUSTOM_INDEX;
	localStorage.CUSTOM_MAIN_INDEX		= isEmpty(localStorage.CUSTOM_MAIN_INDEX)		? ""					: localStorage.CUSTOM_MAIN_INDEX;

	//맞춤알바 수정 인덱스
	localStorage.CUSTOM_MODIFY_INDEX	= isEmpty(localStorage.CUSTOM_MODIFY_INDEX)		? ""					: localStorage.CUSTOM_MODIFY_INDEX;

	//맞춤알바 설정1
	localStorage.CUSTOM_TITLE			= isEmpty(localStorage.CUSTOM_TITLE)			? ""					: localStorage.CUSTOM_TITLE;
	localStorage.CUSTOM_WORKAREAMULTI	= isEmpty(localStorage.CUSTOM_WORKAREAMULTI)	? JSON.stringify([])	: localStorage.CUSTOM_WORKAREAMULTI;
	localStorage.CUSTOM_JOBKINDMULTI	= isEmpty(localStorage.CUSTOM_JOBKINDMULTI)		? JSON.stringify([])	: localStorage.CUSTOM_JOBKINDMULTI;
	localStorage.CUSTOM_WORKPERIODCD	= isEmpty(localStorage.CUSTOM_WORKPERIODCD)		? JSON.stringify([])	: localStorage.CUSTOM_WORKPERIODCD;
	localStorage.CUSTOM_WORKPERIODALL	= isEmpty(localStorage.CUSTOM_WORKPERIODALL)	? "N"					: localStorage.CUSTOM_WORKPERIODALL;
	localStorage.CUSTOM_WORKPERIODINCYN	= isEmpty(localStorage.CUSTOM_WORKPERIODINCYN)	? "N"					: localStorage.CUSTOM_WORKPERIODINCYN;
	localStorage.CUSTOM_WORKWEEKCD		= isEmpty(localStorage.CUSTOM_WORKWEEKCD)		? JSON.stringify([])	: localStorage.CUSTOM_WORKWEEKCD;
	localStorage.CUSTOM_WEEKDAY			= isEmpty(localStorage.CUSTOM_WEEKDAY)			? JSON.stringify([])	: localStorage.CUSTOM_WEEKDAY;
	localStorage.CUSTOM_WORKTIMECD		= isEmpty(localStorage.CUSTOM_WORKTIMECD)		? JSON.stringify([])	: localStorage.CUSTOM_WORKTIMECD;
	localStorage.CUSTOM_WORKTIMEALL		= isEmpty(localStorage.CUSTOM_WORKTIMEALL	)	? "N"					: localStorage.CUSTOM_WORKTIMEALL;
	localStorage.CUSTOM_WORKTIMEINCYN	= isEmpty(localStorage.CUSTOM_WORKTIMEINCYN)	? "N"					: localStorage.CUSTOM_WORKTIMEINCYN;
	localStorage.CUSTOM_GENDERCD		= isEmpty(localStorage.CUSTOM_GENDERCD)			? ""					: localStorage.CUSTOM_GENDERCD;
	localStorage.CUSTOM_GENDERINCYN		= isEmpty(localStorage.CUSTOM_GENDERINCYN)		? "N"					: localStorage.CUSTOM_GENDERINCYN;
	localStorage.CUSTOM_AGE				= isEmpty(localStorage.CUSTOM_AGE)				? ""					: localStorage.CUSTOM_AGE;
	localStorage.CUSTOM_AGEINCYN		= isEmpty(localStorage.CUSTOM_AGEINCYN)			? "N"					: localStorage.CUSTOM_AGEINCYN;
	localStorage.CUSTOM_REGIONCD		= isEmpty(localStorage.CUSTOM_REGIONCD)			? ""					: localStorage.CUSTOM_REGIONCD;
	localStorage.CUSTOM_LINECD			= isEmpty(localStorage.CUSTOM_LINECD)			? ""					: localStorage.CUSTOM_LINECD;
	localStorage.CUSTOM_STATIONCD		= isEmpty(localStorage.CUSTOM_STATIONCD)		? ""					: localStorage.CUSTOM_STATIONCD;
	localStorage.CUSTOM_WORKPAYCD		= isEmpty(localStorage.CUSTOM_WORKPAYCD)		? ""					: localStorage.CUSTOM_WORKPAYCD;
	localStorage.CUSTOM_WORKPAYTERM		= isEmpty(localStorage.CUSTOM_WORKPAYTERM)		? ""					: localStorage.CUSTOM_WORKPAYTERM;
	localStorage.CUSTOM_WORKPAYSTART	= isEmpty(localStorage.CUSTOM_WORKPAYSTART)		? ""					: localStorage.CUSTOM_WORKPAYSTART;
	localStorage.CUSTOM_WORKPAYEND		= isEmpty(localStorage.CUSTOM_WORKPAYEND)		? ""					: localStorage.CUSTOM_WORKPAYEND;
	localStorage.CUSTOM_WORKPAYINCYN	= isEmpty(localStorage.CUSTOM_WORKPAYINCYN)		? "N"					: localStorage.CUSTOM_WORKPAYINCYN;
	localStorage.CUSTOM_SETDATE			= isEmpty(localStorage.CUSTOM_SETDATE)			? ""					: localStorage.CUSTOM_SETDATE;
	localStorage.CUSTOM_BAREXCLUSION = isEmpty(localStorage.CUSTOM_BAREXCLUSION)			? "N"					: localStorage.CUSTOM_BAREXCLUSION;
	localStorage.CUSTOM_WORKSTARTHHMI = isEmpty(localStorage.CUSTOM_WORKSTARTHHMI)		? ""					: localStorage.CUSTOM_WORKSTARTHHMI;
	localStorage.CUSTOM_WORKENDHHMI = isEmpty(localStorage.CUSTOM_WORKENDHHMI)			? ""					: localStorage.CUSTOM_WORKENDHHMI;
	localStorage.CUSTOM_MIXDONGYN = isEmpty(localStorage.CUSTOM_MIXDONGYN)			? "N"					: localStorage.CUSTOM_MIXDONGYN;

	//맞춤알바 설정2
	localStorage.CUSTOM_TITLE2			= isEmpty(localStorage.CUSTOM_TITLE2)			? ""					: localStorage.CUSTOM_TITLE2;
	localStorage.CUSTOM_WORKAREAMULTI2	= isEmpty(localStorage.CUSTOM_WORKAREAMULTI2)	? JSON.stringify([])	: localStorage.CUSTOM_WORKAREAMULTI2;
	localStorage.CUSTOM_JOBKINDMULTI2	= isEmpty(localStorage.CUSTOM_JOBKINDMULTI2)	? JSON.stringify([])	: localStorage.CUSTOM_JOBKINDMULTI2;
	localStorage.CUSTOM_WORKPERIODCD2	= isEmpty(localStorage.CUSTOM_WORKPERIODCD2)	? JSON.stringify([])	: localStorage.CUSTOM_WORKPERIODCD2;
	localStorage.CUSTOM_WORKPERIODALL2	= isEmpty(localStorage.CUSTOM_WORKPERIODALL2)	? "N"					: localStorage.CUSTOM_WORKPERIODALL2;
	localStorage.CUSTOM_WORKPERIODINCYN2= isEmpty(localStorage.CUSTOM_WORKPERIODINCYN2)	? "N"					: localStorage.CUSTOM_WORKPERIODINCYN2;
	localStorage.CUSTOM_WORKWEEKCD2		= isEmpty(localStorage.CUSTOM_WORKWEEKCD2)		? JSON.stringify([])	: localStorage.CUSTOM_WORKWEEKCD2;
	localStorage.CUSTOM_WEEKDAY2		= isEmpty(localStorage.CUSTOM_WEEKDAY2)			? JSON.stringify([])	: localStorage.CUSTOM_WEEKDAY2;
	localStorage.CUSTOM_WORKTIMECD2		= isEmpty(localStorage.CUSTOM_WORKTIMECD2)		? JSON.stringify([])	: localStorage.CUSTOM_WORKTIMECD2;
	localStorage.CUSTOM_WORKTIMEALL2	= isEmpty(localStorage.CUSTOM_WORKTIMEALL2)		? "N"					: localStorage.CUSTOM_WORKTIMEALL2;
	localStorage.CUSTOM_WORKTIMEINCYN2	= isEmpty(localStorage.CUSTOM_WORKTIMEINCYN2)	? "N"					: localStorage.CUSTOM_WORKTIMEINCYN2;
	localStorage.CUSTOM_GENDERCD2		= isEmpty(localStorage.CUSTOM_GENDERCD2)		? ""					: localStorage.CUSTOM_GENDERCD2;
	localStorage.CUSTOM_GENDERINCYN2	= isEmpty(localStorage.CUSTOM_GENDERINCYN2)		? "N"					: localStorage.CUSTOM_GENDERINCYN2;
	localStorage.CUSTOM_AGE2			= isEmpty(localStorage.CUSTOM_AGE2)				? ""					: localStorage.CUSTOM_AGE2;
	localStorage.CUSTOM_AGEINCYN2		= isEmpty(localStorage.CUSTOM_AGEINCYN2)		? "N"					: localStorage.CUSTOM_AGEINCYN2;
	localStorage.CUSTOM_REGIONCD2		= isEmpty(localStorage.CUSTOM_REGIONCD2)		? ""					: localStorage.CUSTOM_REGIONCD2;
	localStorage.CUSTOM_LINECD2			= isEmpty(localStorage.CUSTOM_LINECD2)			? ""					: localStorage.CUSTOM_LINECD2;
	localStorage.CUSTOM_STATIONCD2		= isEmpty(localStorage.CUSTOM_STATIONCD2)		? ""					: localStorage.CUSTOM_STATIONCD2;
	localStorage.CUSTOM_WORKPAYCD2		= isEmpty(localStorage.CUSTOM_WORKPAYCD2)		? ""					: localStorage.CUSTOM_WORKPAYCD2;
	localStorage.CUSTOM_WORKPAYTERM2	= isEmpty(localStorage.CUSTOM_WORKPAYTERM2)		? ""					: localStorage.CUSTOM_WORKPAYTERM2;
	localStorage.CUSTOM_WORKPAYSTART2	= isEmpty(localStorage.CUSTOM_WORKPAYSTART2)	? ""					: localStorage.CUSTOM_WORKPAYSTART2;
	localStorage.CUSTOM_WORKPAYEND2		= isEmpty(localStorage.CUSTOM_WORKPAYEND2)		? ""					: localStorage.CUSTOM_WORKPAYEND2;
	localStorage.CUSTOM_WORKPAYINCYN2	= isEmpty(localStorage.CUSTOM_WORKPAYINCYN2)	? "N"					: localStorage.CUSTOM_WORKPAYINCYN2;
	localStorage.CUSTOM_SETDATE2		= isEmpty(localStorage.CUSTOM_SETDATE2)			? ""					: localStorage.CUSTOM_SETDATE2;
	localStorage.CUSTOM_BAREXCLUSION2 = isEmpty(localStorage.CUSTOM_BAREXCLUSION2)			? "N"					: localStorage.CUSTOM_BAREXCLUSION2;
	localStorage.CUSTOM_WORKSTARTHHMI2 = isEmpty(localStorage.CUSTOM_WORKSTARTHHMI2)		? ""					: localStorage.CUSTOM_WORKSTARTHHMI2;
	localStorage.CUSTOM_WORKENDHHMI2 = isEmpty(localStorage.CUSTOM_WORKENDHHMI2)			? ""					: localStorage.CUSTOM_WORKENDHHMI2;
	localStorage.CUSTOM_MIXDONGYN2 = isEmpty(localStorage.CUSTOM_MIXDONGYN2)			? "N"					: localStorage.CUSTOM_MIXDONGYN2;

	//맞춤알바 설정3
	localStorage.CUSTOM_TITLE3			= isEmpty(localStorage.CUSTOM_TITLE3)			? ""					: localStorage.CUSTOM_TITLE3;
	localStorage.CUSTOM_WORKAREAMULTI3	= isEmpty(localStorage.CUSTOM_WORKAREAMULTI3)	? JSON.stringify([])	: localStorage.CUSTOM_WORKAREAMULTI3;
	localStorage.CUSTOM_JOBKINDMULTI3	= isEmpty(localStorage.CUSTOM_JOBKINDMULTI3)	? JSON.stringify([])	: localStorage.CUSTOM_JOBKINDMULTI3;
	localStorage.CUSTOM_WORKPERIODCD3	= isEmpty(localStorage.CUSTOM_WORKPERIODCD3)	? JSON.stringify([])	: localStorage.CUSTOM_WORKPERIODCD3;
	localStorage.CUSTOM_WORKPERIODALL3	= isEmpty(localStorage.CUSTOM_WORKPERIODALL3)	? "N"					: localStorage.CUSTOM_WORKPERIODALL3;
	localStorage.CUSTOM_WORKPERIODINCYN3= isEmpty(localStorage.CUSTOM_WORKPERIODINCYN3)	? "N"					: localStorage.CUSTOM_WORKPERIODINCYN3;
	localStorage.CUSTOM_WORKWEEKCD3		= isEmpty(localStorage.CUSTOM_WORKWEEKCD3)		? JSON.stringify([])	: localStorage.CUSTOM_WORKWEEKCD3;
	localStorage.CUSTOM_WEEKDAY3		= isEmpty(localStorage.CUSTOM_WEEKDAY3)			? JSON.stringify([])	: localStorage.CUSTOM_WEEKDAY3;
	localStorage.CUSTOM_WORKTIMECD3		= isEmpty(localStorage.CUSTOM_WORKTIMECD3)		? JSON.stringify([])	: localStorage.CUSTOM_WORKTIMECD3;
	localStorage.CUSTOM_WORKTIMEALL3	= isEmpty(localStorage.CUSTOM_WORKTIMEALL3)		? "N"					: localStorage.CUSTOM_WORKTIMEALL3;
	localStorage.CUSTOM_WORKTIMEINCYN3	= isEmpty(localStorage.CUSTOM_WORKTIMEINCYN3)	? "N"					: localStorage.CUSTOM_WORKTIMEINCYN3;
	localStorage.CUSTOM_GENDERCD3		= isEmpty(localStorage.CUSTOM_GENDERCD3)		? ""					: localStorage.CUSTOM_GENDERCD3;
	localStorage.CUSTOM_GENDERINCYN3	= isEmpty(localStorage.CUSTOM_GENDERINCYN3)		? "N"					: localStorage.CUSTOM_GENDERINCYN3;
	localStorage.CUSTOM_AGE3			= isEmpty(localStorage.CUSTOM_AGE3)				? ""					: localStorage.CUSTOM_AGE3;
	localStorage.CUSTOM_AGEINCYN3		= isEmpty(localStorage.CUSTOM_AGEINCYN3)		? "N"					: localStorage.CUSTOM_AGEINCYN3;
	localStorage.CUSTOM_REGIONCD3		= isEmpty(localStorage.CUSTOM_REGIONCD3)		? ""					: localStorage.CUSTOM_REGIONCD3;
	localStorage.CUSTOM_LINECD3			= isEmpty(localStorage.CUSTOM_LINECD3)			? ""					: localStorage.CUSTOM_LINECD3;
	localStorage.CUSTOM_STATIONCD3		= isEmpty(localStorage.CUSTOM_STATIONCD3)		? ""					: localStorage.CUSTOM_STATIONCD3;
	localStorage.CUSTOM_WORKPAYCD3		= isEmpty(localStorage.CUSTOM_WORKPAYCD3)		? ""					: localStorage.CUSTOM_WORKPAYCD3;
	localStorage.CUSTOM_WORKPAYSTART3	= isEmpty(localStorage.CUSTOM_WORKPAYSTART3)	? ""					: localStorage.CUSTOM_WORKPAYSTART3;
	localStorage.CUSTOM_WORKPAYTERM3	= isEmpty(localStorage.CUSTOM_WORKPAYTERM3)		? ""					: localStorage.CUSTOM_WORKPAYTERM3;
	localStorage.CUSTOM_WORKPAYEND3		= isEmpty(localStorage.CUSTOM_WORKPAYEND3)		? ""					: localStorage.CUSTOM_WORKPAYEND3;
	localStorage.CUSTOM_WORKPAYINCYN3	= isEmpty(localStorage.CUSTOM_WORKPAYINCYN3)	? "N"					: localStorage.CUSTOM_WORKPAYINCYN3;
	localStorage.CUSTOM_SETDATE3		= isEmpty(localStorage.CUSTOM_SETDATE3)			? ""					: localStorage.CUSTOM_SETDATE3;
	localStorage.CUSTOM_BAREXCLUSION3 = isEmpty(localStorage.CUSTOM_BAREXCLUSION3)			? "N"					: localStorage.CUSTOM_BAREXCLUSION3;
	localStorage.CUSTOM_WORKSTARTHHMI3 = isEmpty(localStorage.CUSTOM_WORKSTARTHHMI3)		? ""					: localStorage.CUSTOM_WORKSTARTHHMI3;
	localStorage.CUSTOM_WORKENDHHMI3 = isEmpty(localStorage.CUSTOM_WORKENDHHMI3)			? ""					: localStorage.CUSTOM_WORKENDHHMI3;
	localStorage.CUSTOM_MIXDONGYN3 = isEmpty(localStorage.CUSTOM_MIXDONGYN3)			? "N"					: localStorage.CUSTOM_MIXDONGYN3;

	// 검색
	localStorage.WQUERY						= isEmpty(localStorage.WQUERY)				? ""	: localStorage.WQUERY;
	localStorage.WQUERY_SUB = isEmpty(localStorage.WQUERY_SUB) ? "" : localStorage.WQUERY_SUB;

	//결과 내 검색
	localStorage.HIDWSEARCHINOUT = isEmpty(localStorage.HIDWSEARCHINOUT) ? "" : localStorage.HIDWSEARCHINOUT;
	localStorage.HIDSCHCONTAINTEXT = isEmpty(localStorage.HIDSCHCONTAINTEXT) ? "" : localStorage.HIDSCHCONTAINTEXT;

	localStorage.WORDERBY					= isEmpty(localStorage.WORDERBY)			? "RANK": localStorage.WORDERBY;
	localStorage.WSORTCNT					= isEmpty(localStorage.WSORTCNT)			? ""	: localStorage.WSORTCNT;
	

	localStorage.WSEARCH_RTYPE				= isEmpty(localStorage.WSEARCH_RTYPE)		? ""	: localStorage.WSEARCH_RTYPE;
	localStorage.RTYPE						= isEmpty(localStorage.RTYPE)				? ""	: localStorage.RTYPE;

	localStorage.WSEARCH_AREACD				= isEmpty(localStorage.WSEARCH_AREACD)			? "": localStorage.WSEARCH_AREACD;
	localStorage.WSEARCH_MAPX				= isEmpty(localStorage.WSEARCH_MAPX)			? "": localStorage.WSEARCH_MAPX;
	localStorage.WSEARCH_MAPY				= isEmpty(localStorage.WSEARCH_MAPY)			? "": localStorage.WSEARCH_MAPY;
	localStorage.WSEARCH_DISTANCE			= isEmpty(localStorage.WSEARCH_DISTANCE)		? "": localStorage.WSEARCH_DISTANCE;
	localStorage.WSEARCH_JOBKIND			= isEmpty(localStorage.WSEARCH_JOBKIND)			? "": localStorage.WSEARCH_JOBKIND;
	localStorage.WSEARCH_SCHCONTAINTEXT		= isEmpty(localStorage.WSEARCH_SCHCONTAINTEXT)	? "": localStorage.WSEARCH_SCHCONTAINTEXT;
	localStorage.WSEARCH_GENDERCD			= isEmpty(localStorage.WSEARCH_GENDERCD)		? "": localStorage.WSEARCH_GENDERCD;
	localStorage.WSEARCH_GENDERINC			= isEmpty(localStorage.WSEARCH_GENDERINC)		? "": localStorage.WSEARCH_GENDERINC;
	localStorage.WSEARCH_AGECONST			= isEmpty(localStorage.WSEARCH_AGECONST)		? "": localStorage.WSEARCH_AGECONST;
	localStorage.WSEARCH_AGELIMITMIN		= isEmpty(localStorage.WSEARCH_AGELIMITMIN)		? "": localStorage.WSEARCH_AGELIMITMIN;
	localStorage.WSEARCH_AGELIMITMAX		= isEmpty(localStorage.WSEARCH_AGELIMITMAX)		? "": localStorage.WSEARCH_AGELIMITMAX;
	localStorage.WSEARCH_AGEUNRELATED		= isEmpty(localStorage.WSEARCH_AGEUNRELATED)	? "": localStorage.WSEARCH_AGEUNRELATED;
	localStorage.WSEARCH_WORKPERIOD			= isEmpty(localStorage.WSEARCH_WORKPERIOD)		? "": localStorage.WSEARCH_WORKPERIOD;
	localStorage.WSEARCH_WORKWEEK			= isEmpty(localStorage.WSEARCH_WORKWEEK)		? "": localStorage.WSEARCH_WORKWEEK;
	localStorage.WSEARCH_WEEKDAYS = isEmpty(localStorage.WSEARCH_WEEKDAYS) ? "" : localStorage.WSEARCH_WEEKDAYS;

	//통합검색 COLLECTION QUERY
	localStorage.WSEARCH_COLLECTIONQUERY			= isEmpty(localStorage.WSEARCH_COLLECTIONQUERY)			? "": localStorage.WSEARCH_COLLECTIONQUERY;
	localStorage.WSEARCH_COLL_JOBKINDCODE			= isEmpty(localStorage.WSEARCH_COLL_JOBKINDCODE)		? "": localStorage.WSEARCH_COLL_JOBKINDCODE;
	localStorage.WSEARCH_COLL_PAYCD					= isEmpty(localStorage.WSEARCH_COLL_PAYCD)				? "": localStorage.WSEARCH_COLL_PAYCD;
	localStorage.WSEARCH_COLL_WORKPERIODCD			= isEmpty(localStorage.WSEARCH_COLL_WORKPERIODCD)		? "": localStorage.WSEARCH_COLL_WORKPERIODCD;
	localStorage.WSEARCH_COLL_WORKWEEKCD			= isEmpty(localStorage.WSEARCH_COLL_WORKWEEKCD)			? "": localStorage.WSEARCH_COLL_WORKWEEKCD;
	localStorage.WSEARCH_COLL_PROVIDERCD			= isEmpty(localStorage.WSEARCH_COLL_PROVIDERCD)			? "": localStorage.WSEARCH_COLL_PROVIDERCD;
	localStorage.WSEARCH_COLL_WORKTIME				= isEmpty(localStorage.WSEARCH_COLL_WORKTIME)			? "": localStorage.WSEARCH_COLL_WORKTIME;
	localStorage.WSEARCH_COLL_WORKENDHHMI			= isEmpty(localStorage.WSEARCH_COLL_WORKENDHHMI)		? "": localStorage.WSEARCH_COLL_WORKENDHHMI;
	localStorage.WSEARCH_COLL_INTEGRATIONOPTION		= isEmpty(localStorage.WSEARCH_COLL_INTEGRATIONOPTION)	? "": localStorage.WSEARCH_COLL_INTEGRATIONOPTION;

	//통합검색 메인 탭 정보
	localStorage.WSEARCH_MAIN_TAB			= isEmpty(localStorage.WSEARCH_MAIN_TAB)			? "": localStorage.WSEARCH_MAIN_TAB;

	//통합검색 맞춤검색어
	localStorage.WSEARCH_CUSTOMIZE_SET		= isEmpty(localStorage.WSEARCH_CUSTOMIZE_SET)		? "": localStorage.WSEARCH_CUSTOMIZE_SET;
	localStorage.WSEARCH_CUSTOMIZE_GENDER	= isEmpty(localStorage.WSEARCH_CUSTOMIZE_GENDER)	? "": localStorage.WSEARCH_CUSTOMIZE_GENDER;
	localStorage.WSEARCH_CUSTOMIZE_AGE		= isEmpty(localStorage.WSEARCH_CUSTOMIZE_AGE)		? "": localStorage.WSEARCH_CUSTOMIZE_AGE;
	localStorage.WSEARCH_CUSTOMIZE_AREA		= isEmpty(localStorage.WSEARCH_CUSTOMIZE_AREA)		? "": localStorage.WSEARCH_CUSTOMIZE_AREA;

	// 로그인
	localStorage.SAVEID				= isEmpty(localStorage.SAVEID)				? ""	: localStorage.SAVEID;
	localStorage.GOURL				= isEmpty(localStorage.GOURL)				? ""	: localStorage.GOURL;

	// 알바스토리
	localStorage.ALBADIC_BTYPECD	= isEmpty(localStorage.ALBADIC_BTYPECD)		? ""			: localStorage.ALBADIC_BTYPECD;
	localStorage.BTYPECD			= isEmpty(localStorage.BTYPECD)				? ""			: localStorage.BTYPECD;
	localStorage.STORYORDERBY		= isEmpty(localStorage.STORYORDERBY)		? "ORDERYMD"	: localStorage.STORYORDERBY;
	localStorage.BIDX				= isEmpty(localStorage.BIDX)				? ""			: localStorage.BIDX;
	localStorage.STORYSIDO			= isEmpty(localStorage.STORYSIDO)			? ""			: localStorage.STORYSIDO;
	localStorage.STORYGUGUN			= isEmpty(localStorage.STORYGUGUN)			? ""			: localStorage.STORYGUGUN;
	localStorage.STORYJOBKIND		= isEmpty(localStorage.STORYJOBKIND)		? ""			: localStorage.STORYJOBKIND;
	localStorage.STORYJOBKINDSUB	= isEmpty(localStorage.STORYJOBKINDSUB)		? ""			: localStorage.STORYJOBKINDSUB;
	localStorage.CONSULTTYPECD		= isEmpty(localStorage.CONSULTTYPECD)		? ""			: localStorage.CONSULTTYPECD;
	localStorage.CONSULTSUBTYPECD	= isEmpty(localStorage.CONSULTSUBTYPECD)	? ""			: localStorage.CONSULTSUBTYPECD;
	localStorage.STORY_SEARCH		= isEmpty(localStorage.STORY_SEARCH)		? ""			: localStorage.STORY_SEARCH;
	localStorage.STORY_SEARCHTXT	= isEmpty(localStorage.STORY_SEARCHTXT)		? ""			: localStorage.STORY_SEARCHTXT;

	// 개인서비스
	localStorage.RESUMEADID			= isEmpty(localStorage.RESUMEADID)			? ""	: localStorage.RESUMEADID;
	localStorage.APPLICATIONTYPE	= isEmpty(localStorage.APPLICATIONTYPE)		? ""	: localStorage.APPLICATIONTYPE;

	// 기업서비스_채용공고관리
	localStorage.JOBMGRLISTSECTION	= isEmpty(localStorage.JOBMGRLISTSECTION)	? "0"		: localStorage.JOBMGRLISTSECTION;	//전체 추가되면서 기본값 1->0 변경
	localStorage.JOBMGRLISTORDERBY	= isEmpty(localStorage.JOBMGRLISTORDERBY)	? "REGDT"	: localStorage.JOBMGRLISTORDERBY;
	localStorage.JOBMGRLISTSDATE	= isEmpty(localStorage.JOBMGRLISTSDATE)	? ""	: localStorage.JOBMGRLISTSDATE;
	localStorage.JOBMGRLISTEDATE	= isEmpty(localStorage.JOBMGRLISTEDATE)	? ""	: localStorage.JOBMGRLISTEDATE;
	localStorage.JOBMGRLISTSEARCHDATE	= isEmpty(localStorage.JOBMGRLISTSEARCHDATE)	? "REGDT"	: localStorage.JOBMGRLISTSEARCHDATE;
	localStorage.JOBMGRLISTSEARCHKEY	= isEmpty(localStorage.JOBMGRLISTSEARCHKEY)	? ""	: localStorage.JOBMGRLISTSEARCHKEY; //
	localStorage.JOBMGRLISTSEARCHVALUE	= isEmpty(localStorage.JOBMGRLISTSEARCHVALUE)	? ""	: localStorage.JOBMGRLISTSEARCHVALUE;

	// 기업서비스 채용공고등록
	localStorage.JOBREGISTCURTAB	= isEmpty(localStorage.JOBREGISTCURTAB)		? ""		: localStorage.JOBREGISTCURTAB;
	localStorage.JOBREGISTSAVEDTAB	= isEmpty(localStorage.JOBREGISTSAVEDTAB)	? ""		: localStorage.JOBREGISTSAVEDTAB;
	localStorage.JOBREGISTSAVEDATA	= isEmpty(localStorage.JOBREGISTSAVEDATA)	? ""		: localStorage.JOBREGISTSAVEDATA;
	localStorage.JOBREGISTWQUERY	= isEmpty(localStorage.JOBREGISTWQUERY)		? ""		: localStorage.JOBREGISTWQUERY;

	// 기업서비스_지원자관리
	localStorage.APPLICANTSCURTAB			= isEmpty(localStorage.APPLICANTSCURTAB)		? "ALL"	: localStorage.APPLICANTSCURTAB;
	localStorage.SCHSTATE					= isEmpty(localStorage.SCHSTATE)				? "publish"	: localStorage.SCHSTATE;
	localStorage.SCHAPPLICANTS			= isEmpty(localStorage.SCHAPPLICANTS)		? "all"	: localStorage.SCHAPPLICANTS;
	// 전체 지원자
	localStorage.APPLICANTSALLLISTTYPE		= isEmpty(localStorage.APPLICANTSALLLISTTYPE)	? ""		: localStorage.APPLICANTSALLLISTTYPE;
	localStorage.APPLICANTSALLLISTORDERBY	= isEmpty(localStorage.APPLICANTSALLLISTORDERBY)? "regdt"	: localStorage.APPLICANTSALLLISTORDERBY;
	localStorage.APPLICANTSALLLISTGUBUN	= isEmpty(localStorage.APPLICANTSALLLISTGUBUN)		? "ALL"		: localStorage.APPLICANTSALLLISTGUBUN;
	// 공고별 지원자
	localStorage.APPLICANTSLISTORDERBY		= isEmpty(localStorage.APPLICANTSLISTORDERBY)	? "REGDT"	: localStorage.APPLICANTSLISTORDERBY;
	localStorage.APPLICANTSDETAILORDERBY	= isEmpty(localStorage.APPLICANTSDETAILORDERBY)	? "regdt"	: localStorage.APPLICANTSDETAILORDERBY;
	localStorage.APPLICANTSDETAILJOBADID	= isEmpty(localStorage.APPLICANTSDETAILJOBADID)	? ""		: localStorage.APPLICANTSDETAILJOBADID;
	localStorage.APPLICANTSDETAILLISTTYPE	= isEmpty(localStorage.APPLICANTSDETAILLISTTYPE)? ""		: localStorage.APPLICANTSDETAILLISTTYPE;
	localStorage.APPLICANTSDETAILGUBUN		= isEmpty(localStorage.APPLICANTSDETAILGUBUN)	? "ALL"		: localStorage.APPLICANTSDETAILGUBUN;

	localStorage.APPLICANTSRESUMEADID		= isEmpty(localStorage.APPLICANTSRESUMEADID)	? ""		: localStorage.APPLICANTSRESUMEADID;
	localStorage.APPLICANTSDETAILIDX		= isEmpty(localStorage.APPLICANTSDETAILIDX)		? ""		: localStorage.APPLICANTSDETAILIDX;

	//자사양식 지원 FLAG 추가 51855 이호준
	localStorage.ATTACHUSEYN		= isEmpty(localStorage.ATTACHUSEYN)						? "N"		: localStorage.ATTACHUSEYN;

	// 기업서비스 열람내역리스트
	localStorage.READINGBREAKDOWNORDERBY	= isEmpty(localStorage.READINGBREAKDOWNORDERBY)	? "regdt"	: localStorage.READINGBREAKDOWNORDERBY;
	localStorage.READINGBREAKDOWNSECTION	= isEmpty(localStorage.READINGBREAKDOWNSECTION)	? ""		: localStorage.READINGBREAKDOWNSECTION;

	// 기업서비스 채용문자발송내역리스트
	localStorage.RECRUITSMSBREAKDOWNORDERBY	= isEmpty(localStorage.RECRUITSMSBREAKDOWNORDERBY)	? "regdt"	: localStorage.RECRUITSMSBREAKDOWNORDERBY;
	localStorage.RECRUITSMSBREAKDOWNSECTION	= isEmpty(localStorage.RECRUITSMSBREAKDOWNSECTION)	? ""		: localStorage.RECRUITSMSBREAKDOWNSECTION;

	// 기업서비스 채용제의서비스
	localStorage.SUGGESTBREAKDOWNORDERBY	= isEmpty(localStorage.SUGGESTBREAKDOWNORDERBY)	? "regdt"	: localStorage.SUGGESTBREAKDOWNORDERBY;
	localStorage.SUGGESTBREAKDOWNSECTION	= isEmpty(localStorage.SUGGESTBREAKDOWNSECTION)	? ""		: localStorage.SUGGESTBREAKDOWNSECTION;
	localStorage.SUGGESTIDX								= isEmpty(localStorage.SUGGESTIDX)	? ""		: localStorage.SUGGESTIDX;

	// 기업서비스_유료이용내역 - 채용매니저앱
	localStorage.PAYLISTSECTION			= isEmpty(localStorage.PAYLISTSECTION)		? ""	: localStorage.PAYLISTSECTION;
	localStorage.COUPONLISTSECTION		= isEmpty(localStorage.COUPONLISTSECTION)	? ""	: localStorage.COUPONLISTSECTION;

	// 기업서비스 계약서관리
	localStorage.CONTRACTMGRBIZLISTSECTION	= isEmpty(localStorage.CONTRACTMGRBIZLISTSECTION)	? "ALL"	: localStorage.CONTRACTMGRBIZLISTSECTION;

	// 고객지원 자주묻는 질문
	localStorage.USERTYPECD			= isEmpty(localStorage.USERTYPECD)			? ""		: localStorage.USERTYPECD;
	localStorage.FAQCATECD			= isEmpty(localStorage.FAQCATECD)			? ""		: localStorage.FAQCATECD;

	// 이벤트
	localStorage.EVENTID			= isEmpty(localStorage.EVENTID)				? ""		: localStorage.EVENTID;
	localStorage.CAMPAIGNORDERBY	= isEmpty(localStorage.CAMPAIGNORDERBY)		? "LIKECNT"	: localStorage.CAMPAIGNORDERBY;	// ATL캠페인

	// 꾹앱사용자
	localStorage.GGOOKCOMPHONE		= isEmpty(localStorage.GGOOKCOMPHONE)		? ""	: localStorage.GGOOKCOMPHONE;	// 업체담당자연락처
	localStorage.GGOOKUSERNM		= isEmpty(localStorage.GGOOKUSERNM)			? ""	: localStorage.GGOOKUSERNM;		// 업체담당자명
	localStorage.GGOOKMANAGER		= isEmpty(localStorage.GGOOKMANAGER)		? ""	: localStorage.GGOOKMANAGER;	// 영업담당자명

	// 동시입사지원
	localStorage.LIKEJOBKIND		= isEmpty(localStorage.LIKEJOBKIND)			? ""	: localStorage.LIKEJOBKIND;		// 동시입사지원 직종
	localStorage.LIKEAREA			= isEmpty(localStorage.LIKEAREA)			? ""	: localStorage.LIKEAREA;		// 동시입사지원 지역
	localStorage.LIKEWORKGUGUN		= isEmpty(localStorage.LIKEWORKGUGUN)		? ""	: localStorage.LIKEWORKGUGUN;	// 동시입사지원 구군

	// 드로워메뉴 > 자주찾는 지역/직종/채용관(채용정보)
	localStorage.FAVORJOBAREA		= isEmpty(localStorage.FAVORJOBAREA)		? JSON.stringify([])	: localStorage.FAVORJOBAREA;		// 자주찾는 채용정보 지역
	localStorage.FAVORJOBKIND		= isEmpty(localStorage.FAVORJOBKIND)		? JSON.stringify([])	: localStorage.FAVORJOBKIND;		// 자주찾는 채용정보 직종
	localStorage.FAVORJOBCATEGORY	= isEmpty(localStorage.FAVORJOBCATEGORY)	? JSON.stringify([])	: localStorage.FAVORJOBCATEGORY;	// 자주찾는 채용정보 채용관

	// 드로워메뉴 > 자주찾는 지역/직종/채용관(인재정보)
	localStorage.FAVORRESUMEAREA	= isEmpty(localStorage.FAVORRESUMEAREA)		? JSON.stringify([])	: localStorage.FAVORRESUMEAREA;		// 자주찾는 인재정보 지역
	localStorage.FAVORRESUMEKIND	= isEmpty(localStorage.FAVORRESUMEKIND)		? JSON.stringify([])	: localStorage.FAVORRESUMEKIND;		// 자주찾는 인재정보 직종
	localStorage.FAVORRESUMECATEGORY= isEmpty(localStorage.FAVORRESUMECATEGORY)	? JSON.stringify([])	: localStorage.FAVORRESUMECATEGORY;	// 자주찾는 인재정보 채용관

	// 개인서비스 이력서 등록
	localStorage.REGISTRESUMECURTAB		= isEmpty(localStorage.REGISTRESUMECURTAB)		? ""		: localStorage.REGISTRESUMECURTAB;
	localStorage.REGISTRESUMESAVEDTAB	= isEmpty(localStorage.REGISTRESUMESAVEDTAB)	? ""		: localStorage.REGISTRESUMESAVEDTAB;
	localStorage.REGISTRESUMESAVEDATA	= isEmpty(localStorage.REGISTRESUMESAVEDATA)	? ""		: localStorage.REGISTRESUMESAVEDATA;
	localStorage.REGISTRESUMESAVEPREVIEW	= isEmpty(localStorage.REGISTRESUMESAVEPREVIEW)	? ""		: localStorage.REGISTRESUMESAVEPREVIEW;
	localStorage.RESUMECONTENTS			= isEmpty(localStorage.RESUMECONTENTS)			? ""		: localStorage.RESUMECONTENTS;			// 자기소개서

	// 개인서비스 입사지원현황
	localStorage.APPLICATIONAPPLYTYPE		= isEmpty(localStorage.APPLICATIONAPPLYTYPE)		? ""		: localStorage.APPLICATIONAPPLYTYPE;		// 입사지원 타입

	// 개인서비스 계약서관리
	localStorage.CONTRACTMGRPERSONLISTSECTION	= isEmpty(localStorage.CONTRACTMGRPERSONLISTSECTION)	? "ALL"	: localStorage.CONTRACTMGRPERSONLISTSECTION;

	// 알바를 웃겨라 이벤트
	localStorage.SMILEORDERBY	= isEmpty(localStorage.SMILEORDERBY)		? "ORDERYMD"	: localStorage.SMILEORDERBY;	// ATL캠페인

	// 메인 튜토리얼
	//localStorage.MAINTUTORIAL	= isEmpty(localStorage.MAINTUTORIAL)		? ""	: localStorage.MAINTUTORIAL;	// 메인 튜토리얼 최초진입시만 노출

	// 기업평판서비스
	localStorage.REPUTEORDERBY		= isEmpty(localStorage.REPUTEORDERBY)		? "LASTREGYMD": localStorage.REPUTEORDERBY;

	//라이브 URL
	localStorage.LIVEJOBURL			= isEmpty(localStorage.LIVEJOBURL)			? "": localStorage.LIVEJOBURL;
	localStorage.LIVEJOBMENUNM		= isEmpty(localStorage.LIVEJOBMENUNM)		? "": localStorage.LIVEJOBMENUNM;
	localStorage.LIVEJOBNM			= isEmpty(localStorage.LIVEJOBNM)			? "": localStorage.LIVEJOBNM;
	localStorage.LIVEAREANM			= isEmpty(localStorage.LIVEAREANM)			? "": localStorage.LIVEAREANM;
	localStorage.LIVEAPPPUSHSET		= isEmpty(localStorage.LIVEAPPPUSHSET)		? "N": localStorage.LIVEAPPPUSHSET;

	// 관공서 sorting
	localStorage.GOVERNMENTAREACD		= isEmpty(localStorage.GOVERNMENTAREACD)		? "": localStorage.GOVERNMENTAREACD;
	localStorage.GOVERNMENTSORT		= isEmpty(localStorage.GOVERNMENTSORT)		? "": localStorage.GOVERNMENTSORT;
	localStorage.GOVERNMENTISING	= isEmpty(localStorage.GOVERNMENTISING)		? "": localStorage.GOVERNMENTISING;

	//우측드로워 개인별 카운트
	localStorage.PERSONALCOUNT	= isEmpty(localStorage.PERSONALCOUNT) ? "" : localStorage.PERSONALCOUNT;
}

LocalStorageCtrl.prototype = {

	/*****************************************************************************
	*
	* Setter
	*
	****************************************************************************/
	setSessionProperty:function(property, val) {	// 범용적으로 사용
		if (sessionStorage[property] != null) {
			sessionStorage[property] = val;
		}
	},

	setProperty:function(property, val) {			// 범용적으로 사용
		if (localStorage[property] != null) {
			localStorage[property] = val;
		}
	},

	/*****************************************************************************
	*
	* Getter
	*
	****************************************************************************/
	getSessionProperty:function(property) {			//범용적으로 사용
		return sessionStorage[property];
	},

	getProperty:function(property) {				//범용적으로 사용
		return localStorage[property];
	},

	//*****************************************************************************
	// 지역검색
	setArea:function(AREACD, WORKGUGUN, WORKDONG) {
		localStorage.AREACD = AREACD;
		localStorage.WORKGUGUN = WORKGUGUN;
		localStorage.WORKDONG = WORKDONG;
	},

	repTempWorkgugun:function(WORKGUGUN){
		var localStorageWorkgugun = WORKGUGUN;
		localStorageWorkgugun = localStorageWorkgugun.replace(/부천시 원미구/g,'부천시');
		localStorageWorkgugun = localStorageWorkgugun.replace(/부천시 오정구/g,'부천시');
		localStorageWorkgugun = localStorageWorkgugun.replace(/부천시 소사구/g,'부천시');

		localStorageWorkgugun = localStorageWorkgugun.replace('1223','1222');
		localStorageWorkgugun = localStorageWorkgugun.replace('1224','1222');

		return localStorageWorkgugun;
	},

	// 통합검색 지역검색
	setWsearchArea:function(AREACD, WORKGUGUN) {
		localStorage.WSEARCH_AREACD = AREACD;
		localStorage.WSEARCH_WORKGUGUN = WORKGUGUN;
	},

	// 직종검색
	setJobKind:function(JOBKIND, JOBKINDSUB) {
		localStorage.JOBKIND = JOBKIND;
		localStorage.JOBKINDSUB = JOBKINDSUB;
		localStorage.JOBKINDMULTI = "";
	},

	// 통합검색 직종검색
	setWsearchJobKind:function(JOBKIND, JOBKINDSUB) {
		localStorage.WSEARCH_JOBKIND = JOBKIND;
		localStorage.WSEARCH_JOBKINDSUB = JOBKINDSUB;
	},

	setSubway:function(REGIONCD, LINECD, STATIONCD) {
		localStorage.REGIONCD = REGIONCD;
		localStorage.LINECD = LINECD;
		localStorage.STATIONCD = STATIONCD;
	},

	setCustomSetting:function(MODE, INDEX, CUSTOM_WORKAREAMULTI, CUSTOM_JOBKINDMULTI, CUSTOM_WORKPERIODCD, CUSTOM_WORKPERIODALL, CUSTOM_WORKPERIODINCYN, CUSTOM_WORKWEEKCD, CUSTOM_WEEKDAY, CUSTOM_WORKTIMECD, CUSTOM_WORKTIMEALL, CUSTOM_WORKTIMEINCYN, CUSTOM_GENDERCD, CUSTOM_GENDERINCYN, CUSTOM_AGE, CUSTOM_AGEINCYN, STRTITLE, STRREGION, STRLINE, STRSTATION, ARRWORKPAY, ARRWORKPAYTERM, STRWORKPAYINC, STRWORKPAYSTART, STRWORKPAYEND, BAREXCLUSION, WORKSTARTHHMI, WORKENDHHMI, WORKPERIODGROUP, WORKWEEKGROUP, WORKTIMEGROUP, USERID, USESTAT, MIXDONGYN) {
		var arrIndex = JSON.parse(this.getProperty("CUSTOM_INDEX"));
		var DT = new Date();

		//0048420: 맞춤알바 설정 프로모션 EVT 추가 - 김지현
		if((MODE == "INS") || (MODE == "UPD") || (MODE == "EVT")) {
			if($.inArray(INDEX, arrIndex) == -1) {
				arrIndex.push(INDEX);
			}
			CUSTOM_SETDATE = ((DT.getMonth() + 1) < 10 ? "0"+(DT.getMonth() + 1) : (DT.getMonth() + 1))+"/"+ (DT.getDate() < 10 ? "0"+DT.getDate() : DT.getDate()) +" "+(DT.getHours() < 10 ? "0"+DT.getHours() : DT.getHours())+":"+(DT.getMinutes() < 10 ? "0"+DT.getMinutes() : DT.getMinutes());
		} else if(MODE = "DEL") {
			for (var i = 0; i < arrIndex.length; i++) {
				if (arrIndex[i] == INDEX) {
					arrIndex.splice(i, 1);
					$("#custom_index").val("");
				}
			}
			CUSTOM_SETDATE = "";
		}

		localStorage.CUSTOM_INDEX = JSON.stringify(arrIndex);
		if(INDEX == "1") {
			localStorage.CUSTOM_WORKAREAMULTI		= JSON.stringify(CUSTOM_WORKAREAMULTI);
			localStorage.CUSTOM_JOBKINDMULTI			= JSON.stringify(CUSTOM_JOBKINDMULTI);
			localStorage.CUSTOM_WORKPERIODCD		= JSON.stringify(CUSTOM_WORKPERIODCD);
			localStorage.CUSTOM_WORKPERIODALL		= CUSTOM_WORKPERIODALL;
			localStorage.CUSTOM_WORKPERIODINCYN	= CUSTOM_WORKPERIODINCYN;
			localStorage.CUSTOM_WORKWEEKCD			=  JSON.stringify(CUSTOM_WORKWEEKCD);
			localStorage.CUSTOM_WEEKDAY				= JSON.stringify(CUSTOM_WEEKDAY);
			localStorage.CUSTOM_WORKTIMECD			= JSON.stringify(CUSTOM_WORKTIMECD);
			localStorage.CUSTOM_WORKTIMEALL			= CUSTOM_WORKTIMEALL;
			localStorage.CUSTOM_WORKTIMEINCYN		= CUSTOM_WORKTIMEINCYN;
			localStorage.CUSTOM_GENDERCD				= JSON.stringify(CUSTOM_GENDERCD);
			localStorage.CUSTOM_GENDERINCYN			= CUSTOM_GENDERINCYN;
			localStorage.CUSTOM_AGE						= CUSTOM_AGE;
			localStorage.CUSTOM_AGEINCYN				= CUSTOM_AGEINCYN;
			localStorage.CUSTOM_TITLE						= STRTITLE;
			localStorage.CUSTOM_REGIONCD				= STRREGION;
			localStorage.CUSTOM_LINECD					= STRLINE;
			localStorage.CUSTOM_STATIONCD				= STRSTATION;
			localStorage.CUSTOM_WORKPAYCD			= ARRWORKPAY;
			localStorage.CUSTOM_WORKPAYTERM		= ARRWORKPAYTERM;
			localStorage.CUSTOM_WORKPAYINCYN		= STRWORKPAYINC;
			localStorage.CUSTOM_WORKPAYSTART		= STRWORKPAYSTART;
			localStorage.CUSTOM_WORKPAYEND			= STRWORKPAYEND;
			localStorage.CUSTOM_SETDATE					= CUSTOM_SETDATE;
			localStorage.CUSTOM_BAREXCLUSION			= BAREXCLUSION;
			localStorage.CUSTOM_WORKSTARTHHMI		= WORKSTARTHHMI;
			localStorage.CUSTOM_WORKENDHHMI		= WORKENDHHMI;
			localStorage.CUSTOM_MIXDONGYN			= MIXDONGYN;
		} else if(INDEX == "2") {
			localStorage.CUSTOM_WORKAREAMULTI2	= JSON.stringify(CUSTOM_WORKAREAMULTI);
			localStorage.CUSTOM_JOBKINDMULTI2		= JSON.stringify(CUSTOM_JOBKINDMULTI);
			localStorage.CUSTOM_WORKPERIODCD2		= JSON.stringify(CUSTOM_WORKPERIODCD);
			localStorage.CUSTOM_WORKPERIODALL2	= CUSTOM_WORKPERIODALL;
			localStorage.CUSTOM_WORKPERIODINCYN2	= CUSTOM_WORKPERIODINCYN;
			localStorage.CUSTOM_WORKWEEKCD2		= JSON.stringify(CUSTOM_WORKWEEKCD);
			localStorage.CUSTOM_WEEKDAY2				= JSON.stringify(CUSTOM_WEEKDAY);
			localStorage.CUSTOM_WORKTIMECD2			= JSON.stringify(CUSTOM_WORKTIMECD);
			localStorage.CUSTOM_WORKTIMEALL2		= CUSTOM_WORKTIMEALL;
			localStorage.CUSTOM_WORKTIMEINCYN2	= CUSTOM_WORKTIMEINCYN;
			localStorage.CUSTOM_GENDERCD2				= JSON.stringify(CUSTOM_GENDERCD);;
			localStorage.CUSTOM_GENDERINCYN2		= CUSTOM_GENDERINCYN;
			localStorage.CUSTOM_AGE2						= CUSTOM_AGE;
			localStorage.CUSTOM_AGEINCYN2				= CUSTOM_AGEINCYN;
			localStorage.CUSTOM_TITLE2					= STRTITLE;
			localStorage.CUSTOM_REGIONCD2				= STRREGION;
			localStorage.CUSTOM_LINECD2					= STRLINE;
			localStorage.CUSTOM_STATIONCD2			= STRSTATION;
			localStorage.CUSTOM_WORKPAYCD2			= ARRWORKPAY;
			localStorage.CUSTOM_WORKPAYTERM2		= ARRWORKPAYTERM;
			localStorage.CUSTOM_WORKPAYINCYN2		= STRWORKPAYINC;
			localStorage.CUSTOM_WORKPAYSTART2		= STRWORKPAYSTART;
			localStorage.CUSTOM_WORKPAYEND2		= STRWORKPAYEND;
			localStorage.CUSTOM_SETDATE2				= CUSTOM_SETDATE;
			localStorage.CUSTOM_BAREXCLUSION2		= BAREXCLUSION;
			localStorage.CUSTOM_WORKSTARTHHMI2	= WORKSTARTHHMI;
			localStorage.CUSTOM_WORKENDHHMI2		= WORKENDHHMI;
			localStorage.CUSTOM_MIXDONGYN2			= MIXDONGYN;
		} else if(INDEX == "3") {
			localStorage.CUSTOM_WORKAREAMULTI3	= JSON.stringify(CUSTOM_WORKAREAMULTI);
			localStorage.CUSTOM_JOBKINDMULTI3		= JSON.stringify(CUSTOM_JOBKINDMULTI);
			localStorage.CUSTOM_WORKPERIODCD3		= JSON.stringify(CUSTOM_WORKPERIODCD);
			localStorage.CUSTOM_WORKPERIODALL3	= CUSTOM_WORKPERIODALL;
			localStorage.CUSTOM_WORKPERIODINCYN3	= CUSTOM_WORKPERIODINCYN;
			localStorage.CUSTOM_WORKWEEKCD3		= JSON.stringify(CUSTOM_WORKWEEKCD);
			localStorage.CUSTOM_WEEKDAY3				= JSON.stringify(CUSTOM_WEEKDAY);
			localStorage.CUSTOM_WORKTIMECD3			= JSON.stringify(CUSTOM_WORKTIMECD);
			localStorage.CUSTOM_WORKTIMEALL3		= CUSTOM_WORKTIMEALL;
			localStorage.CUSTOM_WORKTIMEINCYN3	= CUSTOM_WORKTIMEINCYN;
			localStorage.CUSTOM_GENDERCD3				= JSON.stringify(CUSTOM_GENDERCD);;
			localStorage.CUSTOM_GENDERINCYN3		= CUSTOM_GENDERINCYN;
			localStorage.CUSTOM_AGE3						= CUSTOM_AGE;
			localStorage.CUSTOM_AGEINCYN3				= CUSTOM_AGEINCYN;
			localStorage.CUSTOM_TITLE3					= STRTITLE;
			localStorage.CUSTOM_REGIONCD3				= STRREGION;
			localStorage.CUSTOM_LINECD3					= STRLINE;
			localStorage.CUSTOM_STATIONCD3			= STRSTATION;
			localStorage.CUSTOM_WORKPAYCD3			= ARRWORKPAY;
			localStorage.CUSTOM_WORKPAYTERM3		= ARRWORKPAYTERM;
			localStorage.CUSTOM_WORKPAYINCYN3		= STRWORKPAYINC;
			localStorage.CUSTOM_WORKPAYSTART3		= STRWORKPAYSTART;
			localStorage.CUSTOM_WORKPAYEND3		= STRWORKPAYEND;
			localStorage.CUSTOM_SETDATE3				= CUSTOM_SETDATE;
			localStorage.CUSTOM_BAREXCLUSION3		= BAREXCLUSION;
			localStorage.CUSTOM_WORKSTARTHHMI3	= WORKSTARTHHMI;
			localStorage.CUSTOM_WORKENDHHMI3		= WORKENDHHMI;
			localStorage.CUSTOM_MIXDONGYN3			= MIXDONGYN;
		}

		var postData;
		var postUrl;
		//0048420: 맞춤알바 설정 프로모션 EVT 추가 - 김지현
		if((MODE == "INS") || (MODE == "UPD") || (MODE == "EVT")) {
			postUrl = "/job/CustomJobSettingProc.asp";
			var main_stat = "N";

			postData = {
				"regioncd" :  STRREGION,
				"area" : CUSTOM_WORKAREAMULTI.toString(),
				"title" :  STRTITLE,
				"jobcd" :  CUSTOM_JOBKINDMULTI.toString(),
				"linecd" :  STRLINE,
				"stationcd" :  STRSTATION,
				"paycd" :  ARRWORKPAY,
				"payterm" :  ARRWORKPAYTERM,
				"minpay" : STRWORKPAYSTART,
				"maxpay" : STRWORKPAYEND,
				"age" :  CUSTOM_AGE.toString(),
				"genderyn" : CUSTOM_GENDERINCYN,
				"gendercd" : CUSTOM_GENDERCD.toString(),
				"workperiodcd" :  CUSTOM_WORKPERIODCD.toString(),
				"workweekcd" : CUSTOM_WORKWEEKCD.toString(),
				"workdaycd" : CUSTOM_WEEKDAY.toString(),
				"worktimecd" : CUSTOM_WORKTIMECD.toString(),
				"sort" : INDEX,
				"main_stat" : main_stat,
				"barexclusion" : BAREXCLUSION,
				"ageunrelated" : CUSTOM_AGEINCYN,
				"workstarthhmi" : WORKSTARTHHMI,
				"workendhhmi" :  WORKENDHHMI,
				"mixdongyn" : MIXDONGYN,
				"workperiodgroup" : WORKPERIODGROUP,
				"workweekgroup" : WORKWEEKGROUP,
				"worktimegroup" : WORKTIMEGROUP
			};
		} else if(MODE = "DEL") {
			postUrl = "/job/CustomJobSettingDelProc.asp";

			postData = {
				"sort" : INDEX
			}
		}

		$.ajax({
			type : "GET",
			async : true,
			data : postData,
			url : postUrl,
			success: function(result) {
				var jsonData = eval("(" + result + ")");
				if (jsonData.result == "-1") {
					alert(jsonData.errorMsg);
				}else{
					BA.Collect("EVENT", {
						"pageurl":postUrl
					,	"postdata":$.param(postData)
					,	"category1":"맞춤알바"
					,	"category2":"맞춤조건설정완료"
					});

					if (MODE == "DEL") {
						location.reload();
						return false;
					} else if (MODE == "EVT") { //0048420: 맞춤알바 설정 프로모션 EVT 추가 - 김지현
						_lsCtrl.setCookie("EVENTPLOT", "Y", 1);
						_lsCtrl.goInOutLink({menunm:"맞춤알바", url:"/job/CustomJobDetailList.asp?menucd=CUSTOM&eventcd=evtplot&index="+INDEX +"&NOCACHETIME=" + new Date().getTime() , action:'NEW_WINDOW_TITLE'});
						return false;
					} else {
						_lsCtrl.goInOutLink({menunm:"맞춤알바", url:"/job/CustomJobDetailList.asp?menucd=CUSTOM&index="+INDEX +"&NOCACHETIME=" + new Date().getTime() , action:'NEW_WINDOW_TITLE'}); //10월개편 배포 - 석보람
						return false;
					}
				}
			},
			error: function() {
			}
		});
	},

	//리뉴얼전 맞춤알바 정보가 있을 경우 인덱스값 세팅.
	setCustomJobListFirstSetting:function() {
		var arrIndex = [];

		arrIndex.push("1");
		localStorage.CUSTOM_INDEX = JSON.stringify(arrIndex);
	},

	setSeason:function(SEASONTOP, SEASONCD) {
		localStorage.SEASONTOP = SEASONTOP;
		localStorage.SEASONCD = SEASONCD;
	},

	setSeasonCancel:function(SEASONTOP, SEASONCD) {
		localStorage.SEASONTOP = "";
		localStorage.SEASONCD = "";
	},

	setSeason2:function(SEASONTOP, SEASONCD) {
		localStorage.SEASONTOP = SEASONTOP;
		localStorage.SEASONCD2 = SEASONCD;
	},

	setSeasonCancel2:function(SEASONTOP, SEASONCD) {
		localStorage.SEASONTOP = "";
		localStorage.SEASONCD2 = "";
	},

	// 인재 희망근무지역
	setResumeArea:function(LOCALSIDO, LOCALGUGUN, LOCALDONG) {
		localStorage.LOCALSIDO = LOCALSIDO;
		localStorage.LOCALGUGUN = LOCALGUGUN;
		localStorage.LOCALDONG = LOCALDONG;
	},

	// 인재 희망직종
	setResumeJobKind:function(JOBKIND, JOBKINDSUB, JOBKINDMULTI) {
		localStorage.RESUMEJOBKIND = JOBKIND;
		localStorage.RESUMEJOBKINDSUB = JOBKINDSUB;
		localStorage.RESUMEJOBKINDMULTI = JOBKINDMULTI;
	},

	// 인재 특기별
	setResumeSpecialcd:function(SPECIALCD) {
		if (SPECIALCD == "99")
		{
			SPECIALCD = "";
		}
		localStorage.RESUMESPECIALCD = SPECIALCD;
	},

	// 인재 특기별
	setResumeTargetcd:function(TARGETCD) {
		localStorage.RESUMESCHNM = TARGETCD;
	},

	// 알바스토리 지역
	setStoryArea:function(STORYSIDO, STORYGUGUN) {
		localStorage.STORYSIDO = STORYSIDO;
		localStorage.STORYGUGUN = STORYGUGUN;
	},

	goLink:function(url) {
		var strUrl = url.toLowerCase();

		// 공고등록버튼 클릭 시 IOS 예외처리
		if ($("#device").val() == "IOS") {
			if (strUrl.indexOf(".alba.co.kr/serviceguide/goodsguide.asp") > -1) {
//				alert("공고등록은 모바일웹(m.alba.co.kr)에서 가능합니다.");
//				return false;
			} else if (strUrl.indexOf(".alba.co.kr/member/main.asp") > -1) {
				alert("회원가입은 모바일웹(m.alba.co.kr)에서 가능합니다.");
				return false;
			}
		}

		if (strUrl.indexOf(".alba.co.kr/job/locationbasedjoblist.asp") > -1 || strUrl.indexOf(".alba.co.kr/job/mapjoblist.asp") > -1) {
			this.setProperty("LOCATION", "");
			this.setProperty("LONGITUDE", "");
			this.setProperty("LATITUDE", "");
		}

		if (strUrl.indexOf("/biz/jobdetailpreview.asp") > -1) {
			url = url + "?lngx=" + this.getTempSavedData("lngx") + "&laty=" + this.getTempSavedData("laty") + "&areacd=" + this.getTempSavedData("areacd") + "&workaddr1=" + this.getTempSavedData("workaddr1") + "&workaddr2=" + this.getTempSavedData("workaddr2") + "&roadaddr=" + this.getTempSavedData("roadaddr") + "&workaddr=" + this.getTempSavedData("workaddr");
		}
		//this.setSessionProperty("PAGE", "1"); 페이징 -> 페이지 스크롤로 변경작업 관련 공고 상세 접근시 페이지가 1페이지로 세팅되는문제로 인해 주석처리. (2017.08.25)
		//this.setSessionProperty("PAGE2", "1"); 페이징 -> 페이지 스크롤로 변경작업 관련 공고 상세 접근시 페이지가 1페이지로 세팅되는문제로 인해 주석처리. (2017.08.25)
		this.setSessionProperty("TOTALCOUNT", "0");
		this.setSessionProperty("NEXTADIDS", JSON.stringify([]));

		this.setProperty("USERTYPECD", "");
		this.setProperty("FAQCATECD", "");
		this.setProperty("STORYORDERBY", "");

		if (strUrl.indexOf("/biz/jobdetailpreview.asp") > -1 || strUrl.indexOf("/biz/jobtemplatepreview.asp") > -1) {	//공고 미리보기 새창(2017-12-12 김지훈)
			if ($("#device").val() != "") {
				alert("미리보기는 모바일웹(m.alba.co.kr)에서 가능합니다.");
				return false;
			} else {
				window.open(url, "_blank");
			}
		} else {
			location.href = url;
		}
	},

	goTop:function() {
		try {
			if (document.domain.toLowerCase().indexOf("mbiz") > -1) {
				$('body, html').animate({ scrollTop: $("#Contents").offset().top }, 400);
			} else {
				$('body, html').animate({ scrollTop: $("#Header").offset().top }, 400);
			}
		} catch(e) {}
	},

	// 쿠키 저장
	setCookie:function(cName, cValue, expDay) {
		var strExpires;
		var todayDate = new Date();
		todayDate.setDate(todayDate.getDate() + expDay);
		strExpires = " expires=" + todayDate.toGMTString() + ";"
		document.cookie = cName + "=" + cValue + "; domain=" + document.domain + "; path=/;" + strExpires;
	},

	// 쿠키 반환
	getCookie:function(sName) {
		var aCookie = document.cookie.split("; ");
		for (var i = 0; i < aCookie.length; i++) {
			var aCrumb = aCookie[i].split("=");
			if (sName == aCrumb[0]) return unescape(aCrumb[1]);
		}
		return null;
	},

	/**
	* 로그인 스크립트
	*
	* @param msg Confirm메시지
	* @param url 로그인 후 Target페이지URL
	*/
	goLogin:function(msg, url) {
		var strUrl = "";
		if (url != "") {
			strUrl = encodeURIComponent(url);
		} else {
			strUrl = encodeURIComponent(document.location.href);
		}
		if (msg != "") {
			if (confirm(msg)) {
				location.href = "/login/Login.asp?gourl=" + strUrl;
			}
		} else {
			location.href = "/login/Login.asp?gourl=" + strUrl;
		}
	},

	/**
	* 로그인 상태확인
	*
	*/
	getLoginInfo:function(prty) {
		var d = new Date();
		var ts = d.getTime();
		$.ajax({
			type : "GET",
			async : false,
			url : "/rsc/lib/getLoginInfo.asp?ts=" + ts,
			success: function(result) {
				var jsonData = eval("(" + result + ")");
				_lsCtrl.strLoginInfo = eval("jsonData." + prty);
			},
			error: function() {
			}
		});
		return this.strLoginInfo;
	},

	/**
	* 개인회원 현황정보 가져오기
	*
	*/
	getPersonInfo:function(infotype) {
		var d = new Date();
		var ts = d.getTime();
		var strResult = "";
		$.ajax({
			dataType : "json",
			type : "GET",
			async : false,
			url : "/rsc/lib/getPersonInfo.asp?ts=" + ts,
			success : function(result) {
				if (result.RESULT == "SUCCESS") {
					strResult = eval("result." + infotype);
				} else {
					strResult = "";
				}
			}
		});
		return strResult;
	},

	/**
	* 개인회원 맞춤알바정보 카운트 가져오기
	*
	*/
	getCustomJobListCount:function(index) {
		var d = new Date();
		var ts = d.getTime();
		var strResult = "";
		var strUrl = "";

		index = (index == "1" ? "" : index)

		if (JSON.parse(_lsCtrl.getProperty("CUSTOM_WORKAREAMULTI"+index)).length != 0)	strUrl += ("&workareamulti=" + _lsCtrl.getProperty("CUSTOM_WORKAREAMULTI"+index));
		if (JSON.parse(_lsCtrl.getProperty("CUSTOM_JOBKINDMULTI"+index)).length != 0)	strUrl += ("&jobkindmulti=" + _lsCtrl.getProperty("CUSTOM_JOBKINDMULTI"+index));
		if (JSON.parse(_lsCtrl.getProperty("CUSTOM_WORKPERIODCD"+index)).length != 0)	strUrl += ("&workperiodcd=" + _lsCtrl.getProperty("CUSTOM_WORKPERIODCD"+index));
		if (_lsCtrl.getProperty("CUSTOM_WORKPERIODINCYN"+index) != "")					strUrl += ("&workperiodincyn=" + _lsCtrl.getProperty("CUSTOM_WORKPERIODINCYN"+index));
		//if (_lsCtrl.getProperty("CUSTOM_WORKWEEKCD"+index) != "")						strUrl += ("&workweekcd=" + _lsCtrl.getProperty("CUSTOM_WORKWEEKCD"+index));
		if (JSON.parse(_lsCtrl.getProperty("CUSTOM_WORKWEEKCD"+index)).length != 0)		strUrl += ("&workweekcd=" + _lsCtrl.getProperty("CUSTOM_WORKWEEKCD"+index));
		if (JSON.parse(_lsCtrl.getProperty("CUSTOM_WEEKDAY"+index)).length != 0)		strUrl += ("&weekdays=" + _lsCtrl.getProperty("CUSTOM_WEEKDAY"+index));
		if (JSON.parse(_lsCtrl.getProperty("CUSTOM_WORKTIMECD"+index)).length != 0)		strUrl += ("&worktimecd=" + _lsCtrl.getProperty("CUSTOM_WORKTIMECD"+index));
		if (_lsCtrl.getProperty("CUSTOM_WORKTIMEINCYN"+index) != "")					strUrl += ("&worktimeincyn=" + _lsCtrl.getProperty("CUSTOM_WORKTIMEINCYN"+index));
		if (_lsCtrl.getProperty("CUSTOM_GENDERCD"+index) != "")							strUrl += ("&gendercd=" + _lsCtrl.getProperty("CUSTOM_GENDERCD"+index));
		if (_lsCtrl.getProperty("CUSTOM_GENDERINCYN"+index) != "")						strUrl += ("&genderincyn=" + _lsCtrl.getProperty("CUSTOM_GENDERINCYN"+index));
		if (_lsCtrl.getProperty("CUSTOM_AGE"+index) != "")								strUrl += ("&age=" + _lsCtrl.getProperty("CUSTOM_AGE"+index));
		if (_lsCtrl.getProperty("CUSTOM_AGEINCYN"+index) != "")							strUrl += ("&ageincyn=" + _lsCtrl.getProperty("CUSTOM_AGEINCYN"+index));
		if (_lsCtrl.getProperty("CUSTOM_REGIONCD"+index) != "")							strUrl += ("&regioncd=" + _lsCtrl.getProperty("CUSTOM_REGIONCD"+index));
		if (_lsCtrl.getProperty("CUSTOM_LINECD"+index) != "")							strUrl += ("&linecd=" + _lsCtrl.getProperty("CUSTOM_LINECD"+index));
		if (_lsCtrl.getProperty("CUSTOM_STATIONCD"+index) != "")						strUrl += ("&stationcd=" + _lsCtrl.getProperty("CUSTOM_STATIONCD"+index));
		if (_lsCtrl.getProperty("CUSTOM_WORKPAYCD"+index) != "")						strUrl += ("&paycd=" + _lsCtrl.getProperty("CUSTOM_WORKPAYCD"+index));
		if (_lsCtrl.getProperty("CUSTOM_WORKPAYTERM"+index) != "")						strUrl += ("&payterm=" + _lsCtrl.getProperty("CUSTOM_WORKPAYTERM"+index));
		if (_lsCtrl.getProperty("CUSTOM_WORKPAYINCYN"+index) != "")						strUrl += ("&payincyn=" + _lsCtrl.getProperty("CUSTOM_WORKPAYINCYN"+index));
		if (_lsCtrl.getProperty("CUSTOM_WORKPAYSTART"+index) != "")						strUrl += ("&paystart=" + _lsCtrl.getProperty("CUSTOM_WORKPAYSTART"+index));
		if (_lsCtrl.getProperty("CUSTOM_WORKPAYEND"+index) != "")						strUrl += ("&payend=" + _lsCtrl.getProperty("CUSTOM_WORKPAYEND"+index));

		$.ajax({
			dataType : "json",
			type : "GET",
			async : false,
			url : "/rsc/lib/getCustomJobListCount.asp?ts=" + ts + strUrl,
			success : function(result) {
				if (result.RESULT == "SUCCESS") {
					strResult = eval("result.CUSTOMLISTCOUNT");
				} else {
					strResult = "";
				}
			}
		});
		return strResult;
	},

	/**
	* 기업회원 현황정보 가져오기
	*
	*/
	getBizInfo:function(infotype) {
		var d = new Date();
		var ts = d.getTime();
		var strResult = "";
		$.ajax({
			dataType : "json",
			type : "GET",
			async : false,
			url : "/rsc/lib/getBizInfo.asp?ts=" + ts,
			success : function(result) {
				if (result.RESULT == "SUCCESS") {
					strResult = eval("result." + infotype);
				} else {
					strResult = "";
				}
			}
		});
		return strResult;
	},

	formatNumber:function(n) {
		//return Number(String(n).replace(/\..*|[^\d]/g,"")).toLocaleString().slice(0,-3);
		var reg = /(^[+-]?\d+)(\d{3})/;
		n += "";
		while(reg.test(n)) {
			n = n.replace(reg, '$1' + ',' + '$2');
		}
		return n;
	},

	/**
	* Paging String
	*
	* @param intCurrentPage    현재페이지
	* @param intTotalRowCnt    총 개수
	* @param intRowCntPerPage  한페이지당 보여줄 리스트 개수
	*/
	getPagingString:function(intCurrentPage, intTotalRowCnt, intRowCntPerPage) {
		var strReturn	= "";
		var strReplace	= "";
		var intBlock	= 2; // 페이지표시를 7개로 하고 싶다면, 3로 변경
		var intMinPage	= 0;
		var intMaxPage	= 0;
		var intFinalPage= 0;

		/* 마직막페이지를 계산 */
		intFinalPage = ((intTotalRowCnt%intRowCntPerPage) == 0) ? parseInt(intTotalRowCnt/intRowCntPerPage) : parseInt(intTotalRowCnt/intRowCntPerPage) + 1;

		/* 숫자를 보여줄 페이지를 설정 */
		intMinPage = (intCurrentPage > intBlock) ? intCurrentPage - intBlock : 1;
		intMaxPage = ((intCurrentPage + intBlock) < intFinalPage) ? intCurrentPage + intBlock : intFinalPage;

		if ((intMaxPage - intMinPage) < ((intBlock * 2) + 1)) {
			intMinPage = ((intFinalPage - intMinPage) < ((intBlock * 2) + 1)) ? (intFinalPage - (intBlock * 2)) : intMinPage;
			intMinPage = (intMinPage < 1) ? 1 : intMinPage;
			intMaxPage = (intMinPage == 1) ? ((intBlock * 2) + 1) : intMaxPage;
			intMaxPage = (intMaxPage > intFinalPage) ? intFinalPage : intMaxPage;
		}

		strReturn = "";
		if (intTotalRowCnt > 0) {
			if (intCurrentPage > 1) {
				strReturn = "<a href='#' onclick='" + _ScriptClass + ".refreshList(" + (intCurrentPage - 1) + ", true, " + intTotalRowCnt + ");return false;' class='prev'><span>&lt;</span></a>";
			} else {
				strReturn = "<a href='#' onclick='return false' class='prev off'><span>&lt;</span></a>";
			}

			for (var i = intMinPage; i <= intMaxPage; i++) {
				var OnOff = (i == intCurrentPage) ? " class='pageNum on'" : "class='pageNum'";
				strReturn += " <a href='#' onclick='" + _ScriptClass + ".refreshList(" + i + ", true, " + intTotalRowCnt + ");return false;'" + OnOff + ">" + i + "</a>";
			}

			if (intCurrentPage < intFinalPage) {
				strReturn += " <a href='#' onclick='" + _ScriptClass + ".refreshList(" + (intCurrentPage + 1) + ", true, " + intTotalRowCnt + ");return false;' class='next'><span>&gt;</span></a>";
			} else {
				strReturn += " <a href='#' onclick='return false' class='next off'><span>&gt;</span></a>";
			}
		}
		return strReturn;
	},

	/**
	* Paging String
	*
	* @param strUrl				현재페이지 URL
	* @param intCurrentPage		현재페이지
	* @param intTotalRowCnt		총 개수
	* @param intRowCntPerPage	한페이지당 보여줄 리스트 개수
	* @param strExtraParam		이동할 페이지에 추가로 넘길 파라미터("&index=1&a=1&b=2")
	*/
	getPagingString2:function(intCurrentPage, intTotalRowCnt, intRowCntPerPage, strExtraParam) {
		var strReturn	= "";
		var strReplace	= "";
		var intBlock	= 2; // 페이지표시를 7개로 하고 싶다면, 3로 변경
		var intMinPage	= 0;
		var intMaxPage	= 0;
		var intFinalPage= 0;
		var strUrl = location.pathname;
		var strParam = "";
		if (typeof strExtraParam != "undefined") {
			strParam = strExtraParam;
		}

		/* 마직막페이지를 계산 */
		intFinalPage = ((intTotalRowCnt%intRowCntPerPage) == 0) ? parseInt(intTotalRowCnt/intRowCntPerPage, 10) : parseInt(intTotalRowCnt/intRowCntPerPage, 10) + 1;

		/* 숫자를 보여줄 페이지를 설정 */
		intMinPage = (intCurrentPage > intBlock) ? intCurrentPage - intBlock : 1;
		intMaxPage = ((intCurrentPage + intBlock) < intFinalPage) ? intCurrentPage + intBlock : intFinalPage;

		if ((intMaxPage - intMinPage) < ((intBlock * 2) + 1)) {
			intMinPage = ((intFinalPage - intMinPage) < ((intBlock * 2) + 1)) ? (intFinalPage - (intBlock * 2)) : intMinPage;
			intMinPage = (intMinPage < 1) ? 1 : intMinPage;
			intMaxPage = (intMinPage == 1) ? ((intBlock * 2) + 1) : intMaxPage;
			intMaxPage = (intMaxPage > intFinalPage) ? intFinalPage : intMaxPage;
		}

		strReturn = "";
		if (intTotalRowCnt > 0) {
			if (intCurrentPage > 1) {
				strReturn = "<a href='" + strUrl + "?page=" + (intCurrentPage - 1) + strParam + "' class='prev'><span>&lt;</span></a>";
			} else {
				strReturn = "<a href='#' onclick='return false' class='prev off'><span>&lt;</span></a>";
			}

			for (var i = intMinPage; i <= intMaxPage; i++) {
				var OnOff = (i == intCurrentPage) ? " class='pageNum on'" : "class='pageNum'";
				strReturn += " <a href='" + strUrl + "?page=" + i + strParam + "' " + OnOff + ">" + i + "</a>";
			}

			if (intCurrentPage < intFinalPage) {
				strReturn += " <a href='" + strUrl + "?page=" + (intCurrentPage + 1) + strParam + "' class='next'><span>&gt;</span></a>";
			} else {
				strReturn += " <a href='#' onclick='return false' class='next off'><span>&gt;</span></a>";
			}
		}
		return strReturn;
	},

		/**
	* Paging String
	*
	* @param strUrl				현재페이지 URL
	* @param intCurrentPage		현재페이지
	* @param intTotalRowCnt		총 개수
	* @param intRowCntPerPage	한페이지당 보여줄 리스트 개수
	* @param strExtraParam		이동할 페이지에 추가로 넘길 파라미터("&index=1&a=1&b=2")
	*/
	getPagingStringApp:function(intCurrentPage, intTotalRowCnt, intRowCntPerPage, strExtraParam) {
		var strReturn	= "";
		var strReplace	= "";
		var intBlock	= 2; // 페이지표시를 7개로 하고 싶다면, 3로 변경
		var intMinPage	= 0;
		var intMaxPage	= 0;
		var intFinalPage= 0;
		var strUrl = location.pathname;
		var strParam = "";
		if (typeof strExtraParam != "undefined") {
			strParam = strExtraParam;
		}

		/* 마직막페이지를 계산 */
		intFinalPage = ((intTotalRowCnt%intRowCntPerPage) == 0) ? parseInt(intTotalRowCnt/intRowCntPerPage, 10) : parseInt(intTotalRowCnt/intRowCntPerPage, 10) + 1;

		/* 숫자를 보여줄 페이지를 설정 */
		intMinPage = (intCurrentPage > intBlock) ? intCurrentPage - intBlock : 1;
		intMaxPage = ((intCurrentPage + intBlock) < intFinalPage) ? intCurrentPage + intBlock : intFinalPage;

		if ((intMaxPage - intMinPage) < ((intBlock * 2) + 1)) {
			intMinPage = ((intFinalPage - intMinPage) < ((intBlock * 2) + 1)) ? (intFinalPage - (intBlock * 2)) : intMinPage;
			intMinPage = (intMinPage < 1) ? 1 : intMinPage;
			intMaxPage = (intMinPage == 1) ? ((intBlock * 2) + 1) : intMaxPage;
			intMaxPage = (intMaxPage > intFinalPage) ? intFinalPage : intMaxPage;
		}

		strReturn = "";
		if (intTotalRowCnt > 0) {
			if (intCurrentPage > 1) {
				strReturn = "<a href='#' onclick='SetAppPaging(" + (intCurrentPage - 1) + ");return false;' class='prev'><span>&lt;</span></a>";
			} else {
				strReturn = "<a href='#' onclick='return false;' class='prev off'><span>&lt;</span></a>";
			}

			for (var i = intMinPage; i <= intMaxPage; i++) {
				var OnOff = (i == intCurrentPage) ? " class='pageNum on'" : "class='pageNum'";
				strReturn += " <a href='#' onclick='SetAppPaging(" + i + ");return false;' " + OnOff + ">" + i + "</a>";
			}

			if (intCurrentPage < intFinalPage) {
				strReturn += " <a href='#' onclick='SetAppPaging(" + (intCurrentPage + 1) + ");return false;'  class='next'><span>&gt;</span></a>";
			} else {
				strReturn += " <a href='#' onclick='return false;' class='next off'><span>&gt;</span></a>";
			}
		}
		return strReturn;
	},

	/*****************************************************************************
	*
	* 오늘 본 채용공고
	*
	****************************************************************************/
	// 날짜 포맷
	getTodayDate:function(){
		function DatePad(num) {
			num = num + "";
			return num.length < 2 ? "0" + num : num;
		}
		return DatePad(new Date().getFullYear()) + "" + DatePad(new Date().getMonth() + 1) + "" + DatePad(new Date().getDate());
	},
	// LocalStorage TodayAdid 포맷변경으로 이전 포맷일경우 날짜 삽입
	setTodayAdid:function() {
		var arrTodayJobAdid = (localStorage.TODAYJOBADID + this.strScrapEnter).split(this.strScrapEnter);
		arrTodayJobAdid.pop();
		var intGetDate = this.getTodayDate();

		for (var i = 0; i < arrTodayJobAdid.length; i++) {
			if (arrTodayJobAdid[i].indexOf(_lsCtrl.strScrapPipe) <= 0) {
				if (arrTodayJobAdid[i] != "") {
					arrTodayJobAdid[i] = arrTodayJobAdid[i] + this.strScrapPipe + intGetDate;
				}
			}
		}
		localStorage.TODAYJOBADID = arrTodayJobAdid.join(this.strScrapEnter);
	},
	// 오늘 본 공고 개수 반환
	getTodayJobAdidCount:function() {
		this.clearTodayJobAdid();
		var strScrapEnter = this.strScrapEnter;
		var strTodayJobAdid = this.getProperty("TODAYJOBADID");
		if (strTodayJobAdid == "") {
			return 0;
		} else {
			var arrTodayJobAdid = (strTodayJobAdid + strScrapEnter).split(strScrapEnter);
			arrTodayJobAdid.pop();
			return arrTodayJobAdid.length;
		}
	},
	// 오늘 본 공고 데이터 정리(날짜가 지난 경우)
	clearTodayJobAdid:function() {
		this.setTodayAdid();
		var arrTodayJobAdid = (localStorage.TODAYJOBADID + this.strScrapEnter).split(this.strScrapEnter);
		arrTodayJobAdid.pop();

		var intGetDate = this.getTodayDate();
		var edDate = new Date(intGetDate.substring(0,4), intGetDate.substring(4,6), intGetDate.substring(6,8));

		for (var i = 0; i < arrTodayJobAdid.length; i++) {
			if (arrTodayJobAdid[i] != "") {
				var Temp_arrTodayJobAdid = arrTodayJobAdid[i].split(this.strScrapPipe);

				var stDate = new Date(Temp_arrTodayJobAdid[1].substring(0,4), Temp_arrTodayJobAdid[1].substring(4,6), Temp_arrTodayJobAdid[1].substring(6,8));
				var btMs = edDate.getTime() - stDate.getTime();
				var btDay = btMs / (1000*60*60*24);

				if (btDay > 2) {
					arrTodayJobAdid.splice(i, 1);
				}
			}
		}
		localStorage.TODAYJOBADID = arrTodayJobAdid.join(this.strScrapEnter);
	},
	// 오늘 본 공고 저장
	saveTodayJobAdid:function(intAdid) {
		this.clearTodayJobAdid();
		this.dropTodayJobAdid(intAdid);

		var intGetDate = this.getTodayDate();

		var arrTodayJobAdid = (localStorage.TODAYJOBADID + this.strScrapEnter).split(this.strScrapEnter);
		arrTodayJobAdid.pop();
		if (arrTodayJobAdid.length == 20) {
			arrTodayJobAdid.splice(19, 1);
		}
		localStorage.TODAYJOBADID = arrTodayJobAdid.join(this.strScrapEnter);

		if (localStorage.TODAYJOBADID != "") {
			localStorage.TODAYJOBADID = intAdid + this.strScrapPipe + intGetDate + this.strScrapEnter + localStorage.TODAYJOBADID;
		} else {
			localStorage.TODAYJOBADID = intAdid + this.strScrapPipe + intGetDate;
		}
	},
	// 오늘 본 공고 삭제
	dropTodayJobAdid:function(intAdid) {
		var arrTodayJobAdid = (localStorage.TODAYJOBADID + this.strScrapEnter).split(this.strScrapEnter);
		arrTodayJobAdid.pop();

		for (var i = 0; i < arrTodayJobAdid.length; i++) {
			var Temp_arrTodayJobAdid = arrTodayJobAdid[i].split(this.strScrapPipe);
			if (Temp_arrTodayJobAdid[0] == intAdid) {
				arrTodayJobAdid.splice(i, 1);
			}
		}
		localStorage.TODAYJOBADID = arrTodayJobAdid.join(this.strScrapEnter);
	},

	MultidropTodayJobAdid:function(arrAdid) {
		var arrTodayJobAdid = (localStorage.TODAYJOBADID + this.strScrapEnter).split(this.strScrapEnter);
		arrTodayJobAdid.pop();

		var arrDropAdid = arrAdid.split(",");

		for (var j = 0; j < arrDropAdid.length; j++) {
			for (var i = 0; i < arrTodayJobAdid.length; i++) {
				var Temp_arrTodayJobAdid = arrTodayJobAdid[i].split(this.strScrapPipe);

				if (Temp_arrTodayJobAdid[0] == arrDropAdid[j]) {
					arrTodayJobAdid.splice(i, 1);
				}
			}
		}

		localStorage.TODAYJOBADID = arrTodayJobAdid.join(this.strScrapEnter);
	},

	/*****************************************************************************
	*
	* Scrap Module
	*
	****************************************************************************/
	// 현재 스크랩공고 개수 반환
	getScrapCount:function() {
		if (this.getLoginInfo("UTYPE") == "P") {
			return this.getPersonInfo("JOBSCRAPCNT");
		} else {
			return this.getNotLoginScrapCount();
		}
	},

	getNotLoginScrapCount: function() {
		var d = new Date();
		var ts = d.getTime();
		var strResult = "";
		var strParam = "";
		var strUrl = "";

		strParam = localStorage.SCRAPED;

		strUrl = "/rsc/lib/getNotLoginScrapCount.asp?dt=" + ts + "&scrap=" + strParam;

		$.ajax({
			dataType : "json",
			type : "GET",
			async : false,
			url : strUrl,
			success : function(result) {
				if (result.RESULT == "SUCCESS") {
					strResult = eval("result.NOTLOGINSCRAPCOUNT");
				} else {
					strResult = "";
				}
			}
		});

		return strResult;
	},

	// 스크랩날짜가 오래된 공고의 경우 정리
	clearOldScrap:function() {
		if (localStorage.SCRAPED != "") {
			var arrScraped = (localStorage.SCRAPED + this.strScrapEnter).split(this.strScrapEnter);
			arrScraped.pop();
			for (var i = 0; i < arrScraped.length; i++) {
				var row = arrScraped[i].split(this.strScrapPipe);
				var scrapdt = Date.parse(row[6]);
				var curdt = new Date().getTime();
				var datediff = (curdt - scrapdt) / (1000 * 60 * 60 * 24);
				if (datediff > 90) {
					arrScraped.splice(i, 1);
				}
			}
			localStorage.SCRAPED = arrScraped.join(this.strScrapEnter);
		}
	},

	// 공고 스크랩처리
	scrap:function(intAdid) {
		if (this.getLoginInfo("UTYPE") == "C") {
			if (confirm("개인회원으로 로그인 후 이용가능합니다. 지금 로그인 하시겠습니까?")) {
				_lsCtrl.goInOutLink({"url":"/login/Login.asp", "action":"LOGIN"});
				this.dropScrap(intAdid);
				return false;
			} else {
				this.dropScrap(intAdid);
				return false;
			}
		}

		var getAdid = intAdid;
		if (getAdid.length > 10){
			if (getAdid.indexOf("^") > -1){
				intAdid = getAdid.split('^')[0];
			}
		}
		this.scrapPc(intAdid);

		if ($(".adid_" + intAdid)) {
			$(".adid_" + intAdid)
				.addClass("on")
				.attr("href", "javascript:JobListCLS.dropScrap(" + intAdid + ")");
			$(".adid_" + intAdid + " a").attr("href", "javascript:JobListCLS.dropScrap(" + intAdid + ")");
		}
	},

	// 공고 스크랩처리
	newScrap:function(intAdid) {
		if (this.getLoginInfo("UTYPE") == "C") {
			if (confirm("개인회원으로 로그인 후 이용가능합니다. 지금 로그인 하시겠습니까?")) {
				_lsCtrl.goInOutLink({"url":"/login/Login.asp", "action":"LOGIN"});
				this.newDropScrap(intAdid);
				return false;
			} else {
				this.newDropScrap(intAdid);
				return false;
			}
		}
		this.scrapPc(intAdid);

		if ($(".adid_" + intAdid)) {
			$(".adid_" + intAdid).addClass("on").attr("onclick", "JobListCLS.newDropScrap(" + intAdid + ");return false;");
		}
	},

	// 공고 스크랩처리
	newHttpsScrap:function(intAdid) {
		if (this.getLoginInfo("UTYPE") == "C") {
			if (confirm("개인회원으로 로그인 후 이용가능합니다. 지금 로그인 하시겠습니까?")) {
				_lsCtrl.goInOutLink({"url":"/login/Login.asp", "action":"LOGIN"});
				this.newHttpsDropScrap(intAdid);
				return false;
			} else {
				this.newHttpsDropScrap(intAdid);
				return false;
			}
		}
		this.scrapHttpsPc(intAdid);

		if ($(".adid_" + intAdid)) {
			$(".adid_" + intAdid).addClass("on").attr("onclick", "JobListCLS.newHttpsDropScrap(" + intAdid + ");return false;");
		}
	},

	detailScrap:function(intAdid) {
		if (this.getLoginInfo("UTYPE") == "C") {
			if (confirm("개인회원으로 로그인 후 이용가능합니다. 지금 로그인 하시겠습니까?")) {
				_lsCtrl.goInOutLink({"url":"/login/Login.asp", "action":"LOGIN"});
				this.newDropScrap(intAdid);
				return false;
			} else {
				this.newDropScrap(intAdid);
				return false;
			}
		}
		this.scrapPc(intAdid);

		if ($(".adid_" + intAdid)) {
			$(".adid_" + intAdid).addClass("on").attr("onclick", "JobListCLS.detailScrap(" + intAdid + ");_lsCtrl.goInOutLink({'url':'/jobDetail.asp?adid=" + adid + "&=type=Y','action':'JS_SCRAP'});");
		}
	},

	// 공고 스크랩처리(PC)
	scrapHttpsPc:function(intAdid) {
		var d = new Date();
		var ts = d.getTime();
		if (intAdid != "") {
			$.ajax({
				type: "POST",
				url : "https://" + location.host + "/job/PcScrapJobInsProc.asp?ts=" + ts,
				async : false,
				data : {"adid" : intAdid},
				success: function (result) {
					if (result == "Success") {
						var chkUrl = location.href;
						if (chkUrl.toLowerCase().indexOf("/job/jobdetail.asp") > 0) {	//공고 상세 페이지에서만 실행 (2017-08-25 김지훈)
							if ($('.scrapBtn').hasClass('on')==false) {
								$('.complete-scrap').addClass('on');
								setTimeout(function() {
									$('.complete-scrap').removeClass('on');
								}, 2000);
							}
						} else {
							//alert("채용공고가 스크랩 되었습니다.");
						}
					} else if (result == "Err1") {
						alert("공고번호가 없습니다.");
					} else if (result == "Err2") {
						alert("공고스크랩처리가 정상적으로 이루어지지 못했습니다.");
					} else if (result == "Err3") {
						alert("이미 스크랩한 채용공고입니다.");
					}
				},
				error: function() {
					alert("스크랩정보 동기화처리중 오류가 발생했습니다.");
				}
			});
		}
	},

	scrapPc:function(intAdid) {
		var d = new Date();
		var ts = d.getTime();
		if (intAdid != "") {
			$.ajax({
				type: "POST",
				url : "/job/PcScrapJobInsProc.asp?ts=" + ts,
				async : false,
				data : {"adid" : intAdid},
				success: function (result) {
					if (result == "Success") {
						var chkUrl = location.href;
						if (chkUrl.toLowerCase().indexOf("/job/jobdetail.asp") > 0) {	//공고 상세 페이지에서만 실행 (2017-08-25 김지훈)
							if ($('.scrapBtn').hasClass('on')==false) {
								$('.complete-scrap').addClass('on');
								setTimeout(function() {
									$('.complete-scrap').removeClass('on');
								}, 2000);
							}
						} else {
							//alert("채용공고가 스크랩 되었습니다.");
						}
					} else if (result == "Err1") {
						alert("공고번호가 없습니다.");
					} else if (result == "Err2") {
						alert("공고스크랩처리가 정상적으로 이루어지지 못했습니다.");
					} else if (result == "Err3") {
						alert("이미 스크랩한 채용공고입니다.");
					}
				},
				error: function() {
					alert("스크랩정보 동기화처리중 오류가 발생했습니다.");
				}
			});
		}
	},

	// 스크랩데이터 삭제
	dropScrap:function(intAdid) {
		this.dropScrapPc(intAdid);
	},

	newDropScrap:function(intAdid) {
		this.dropScrapPc(intAdid);
	},

	newHttpsDropScrap:function(intAdid) {
		this.dropScrapHttpsPc(intAdid);
	},

	// 선택 스크랩데이터 일괄 삭제
	dropScrapHttpsPc:function(intAdid) {
		if (intAdid != "") {
			$.ajax({
				type: "GET",
				url : "https://" + location.host + "/job/PcScrapJobDeleteProc.asp",
				data : {"adid" : intAdid},
				success: function (result) {
					if (result == "Success") {
						//PcScrapJobListCLS.refreshList(1, true);
					} else if (result == "Err1") {
						alert("삭제할 공고가 없습니다.");
					} else if (result == "Err2") {
						alert("삭제시 오류가 발생하였습니다.");
					} else {
						alert("오류가 발생했습니다.1");
					}
				},
				error: function() {
					alert("오류가 발생했습니다.");
				}
			});
		} else {
			alert("삭제할 공고를 선택하세요.");
		}
	},

	// 선택 스크랩데이터 일괄 삭제
	dropScrapPc:function(intAdid) {
		if (intAdid != "") {
			$.ajax({
				type: "GET",
				url : "/job/PcScrapJobDeleteProc.asp",
				data : {"adid" : intAdid},
				success: function (result) {
					if (result == "Success") {
						//PcScrapJobListCLS.refreshList(1, true);
					} else if (result == "Err1") {
						alert("삭제할 공고가 없습니다.");
					} else if (result == "Err2") {
						alert("삭제시 오류가 발생하였습니다.");
					} else {
						alert("오류가 발생했습니다.1");
					}
				},
				error: function() {
					alert("오류가 발생했습니다.");
				}
			});
		} else {
			alert("삭제할 공고를 선택하세요.");
		}
	},

	// 모든 스크랩정보 삭제
	dropAllScrap:function() {
		localStorage.SCRAPED = "";
	},

	// 채용정보 리스트 스크랩여부에 따라 별표이미지 및 링크처리
	// 채용정보 리스트에 스크랩여부 표시가 제거되었으므로 비활성화처리
	checkScrapedJob:function() {
	},

	// 인재 스크랩처리(PC)
	scrapResumePc:function(intAdid) {
		if (intAdid != "") {
			$.ajax({
				type: "POST",
				url : "/biz/PcScrapResumeInsProc.asp",
				async : false,
				data : {"adid":intAdid},
				success: function (result) {
					if (result == "SUCCESS") {
						_lsCtrl.goAdLink({'action':'hr_scrap'});	//트래킹 추가 - 인재스크랩
					} else if (result == "ERROR") {
						alert("이력서번호가 없습니다.");
					} else if (result == "NOTLOGIN") {
						alert("기업회원으로 로그인되지 않았습니다.");
					}
				},
				error: function() {
					alert("인재스크랩처리중 오류가 발생했습니다.");
				}
			});
		}
	},

	// 인재 스크랩삭제
	dropScrapResumePc:function(intAdid) {
		if (intAdid != "") {
			$.ajax({
				type: "POST",
				url : "/biz/PcScrapResumeDelProc.asp",
				async : false,
				data : {"adid":intAdid},
				success: function (result) {
					if (result == "SUCCESS") {
					} else if (result == "ERROR") {
						alert("이력서번호가 없습니다.");
					} else if (result == "NOTLOGIN") {
						alert("기업회원으로 로그인되지 않았습니다.");
					}
				},
				error: function() {
					alert("인재스크랩처리중 오류가 발생했습니다.");
				}
			});
		}
	},

	// 인재 리스트 스크랩여부에 따라 별표이미지 및 링크처리
	checkScrapedResume:function() {
		var arrScraped = new Array();
		if (_lsCtrl.getLoginInfo("UTYPE") == "C") { // 로그인시에는 PC스크랩
			$.ajax({
				type: "POST",
				url : "/rsc/lib/getScrapAdidResume.asp",
				async : false,
				success: function(result) {
					if (result != "") {
						arrScraped = result.split(",");
					}
				}
			});
		}

		$("a.scrap").removeClass("on");
		for (var i = 0; i < arrScraped.length; i++) {
			//alert($("a.scrap").attr("href"));
			$("a.scrap").each(function() {
				if (arrScraped[i] == $(this).attr("id")) {
					$(".adid_" + $(this).attr("id"))
						.addClass("on")
						.attr("href", "javascript:ResumeListCLS.dropScrap(" + $(this).attr("id") + ")");
				}
			});
		}
	},

	// 현재 스크랩공고 개수 반환
	getScrapResumeCount:function() {
		if (this.getLoginInfo("UTYPE") == "C") {
			return this.getBizInfo("RESUMESCRAPCNT");
		} else {
			return "0";
		}
	},

	// 헤더 부분 현재 스크랩인재 개수 출력
	setScrapResumeCount:function() {
		var intScrapCnt = this.getScrapResumeCount();
		if (intScrapCnt > 0) {
			if (intScrapCnt > 999) {
				$("#HeaderScrapResumeCnt em").html(intScrapCnt + "+");
			} else {
				$("#HeaderScrapResumeCnt em").html(intScrapCnt);
			}
			$("#HeaderScrapResumeCnt em").show();
		} else {
			$("#HeaderScrapResumeCnt em").hide();
		}
	},

	/**
	* 키워드로 검색조건 바로찾기
	*
	*/
	searchKeywordCode:function(type, kw, brandcd) {
		if(typeof brandcd == "undefined") return;

		if (type.length > 0 && kw.length > 0) {
			$("#tongue").parents(".brandSearch").addClass("searching");
			$.ajax({
				type: "GET",
				url : "/rsc/lib/getSearchCodeKeyword.asp",
				data : {"type" : type, "kw" : kw, "code" : brandcd},
				success: function (result) {
					$("#tongue").html(result);
				},
				error: function() {
					$("#tongue").html("");
				}
			});
		} else {
			$("#tongue").parents(".brandSearch").removeClass("searching");
			$("#tongue").html("");
		}
	},

	/**
	* 키워드로 검색조건 바로찾기
	* 지하철 라인, 대학가, 핫플레이스 지역코드 추가
	*/
	searchKeywordCodeAreaLine:function(type, kw, code) {
		if(typeof code == "undefined") return;

		if (type.length > 0 && kw.length > 0 && code.length > 0) {
			$.ajax({
				type: "GET",
				url : "/rsc/lib/getSearchCodeKeyword.asp",
				data : {"type" : type, "kw" : kw, "code" : code},
				success: function (result) {
					$("#tongue").html(result);
				},
				error: function() {
					$("#tongue").html("");
				}
			});
		} else {
			$("#tongue").html("");
		}
	},

	// 이용권 남은 수 가져오기
	getVoucherPushCnt:function(productcd) {
		var d = new Date();
		var ts = d.getTime();
		var intCnt = 0;
		if (productcd == "") return 0;
		$.ajax({
			type: "POST",
			url : "/rsc/lib/getVoucherCnt.asp?ts=" + ts,
			data : {"productcd" : productcd},
			async : false,
			success: function(result) {
				intCnt = parseInt($.trim(result));
			},
			error: function() {}
		});
		return intCnt;
	},

	// 정액권 남은 수 가져오기
	getFlatrateCnt:function(fproductcd) {
		var d = new Date();
		var ts = d.getTime();
		var intCnt = 0;
		if (fproductcd == "") return 0;
		$.ajax({
			type: "POST",
			url : "/rsc/lib/getFlatrateCnt.asp?ts=" + ts,
			data : {"fproductcd" : fproductcd},
			async : false,
			success: function(result) {
				intCnt = parseInt($.trim(result));
			},
			error: function() {}
		});
		return intCnt;
	},

	/**
	* 앱에서 외부 브라우저로 링크 호출시 사용
	*/
	goAppOutLink:function(url) {
		if (url.substr(0, 2) == "//") {
			url = "http:" + url;
		}
		var device = $("#device").val();

		if (device != "") {
			try {
				device = device.toUpperCase();
				if (device == "IOS") {
					var strUrl = "OpenInSafari://" + url;
					location.href = strUrl;
				} else {
					window.browserlink.getWebBrowserLink(url);
				}
			} catch(e) {
				alert("앱에서만 실행 가능합니다.");
			}
		} else {
			window.open(url);
		}
	},

	/**
	* Drawer 및 GNB 앱 외부 브라우저로 링크 호출시 사용
	* action type 정의
	*		HOME									= 알바천국 홈으로 이동
	*		NEW_WINDOW						= 상세(타이틀바 없는 새창)
	*		NEW_WINDOW_TITLE				= 타이틀바 있는 새창 - 햄버거메뉴
	*		NEW_WINDOW_TITLE_BACK		= 타이틀바 있는 새창 - '<' 메뉴
	*		CLOSE_WINDOW			= 새창 닫기
	*		CLOSE_WINDOW_RELOAD		= 새창닫고 부모페이지 RELOAD
	*		CLOSE_WINDOW_LINK		= 새창닫고 부모페이지 링크이동(ios) / 새창닫고 해당 url로 새창 열기(android)
	*		CLOSE_WINDOW_LOAD		= 새창닫고 부모페이지 링크이동(android)
	*		CLOSE_WINDOW_BACKSUPPL	= 새창닫고 부모페이지 링크이동 - 알LIVE 사용
	*								  (BACK 버튼 클릭시 백으로 이동 햄버거 메뉴는 페이지 메뉴로 설정) 신설
	*								  (iOS: 3.2.5 버전 이상. android: 4.7.02 버전 이상 구동)
	*								  iOS 3.2.5 이하 버전에는 아웃링크로 처리
	*								  android 4.7.02 이하 버전에는 CLOSE_WINDOW_LINK으로 처리
	*		CLOSE_APPLY				= 입사지원 창 앱에서 닫기 및 BACK 처리
	*		JOIN_NEWWINDOW			= 회원가입 새창 띄우기
	*		LOGIN					= 로그인
	*		LOGIN_NEWWINDOW			= 로그인 후 URL로 새창띄우기
	*		LOGIN_NEWWINDOW_TITLE			= 로그인 후 URL로 타이틀바 있는 새창띄우기 - 햄버거 메뉴
	*		LOGIN_NEWWINDOW_TITLE_BACK  = 로그인 후 URL로 타이틀바 있는 새창띄우기 - '<' 메뉴
	*		LOGIN_CLOSE				= 로그인페이지 진입 후 BACK 처리
	*		LOGOUT						= 로그아웃
	*		LOGIN_SUCCESS			= 로그인 성공
	*		LOGIN_FAIL					= 로그인 실패
	*		LOGOUT_SUCCESS		= 로그아웃 성공
	*		LOGOUT_FAIL				= 로그아웃 실패
	*		NATIVE						= 네이티브 화면 진입시
	*		EXTERNAL_BROWSER	= 외부 브라우저로 호출
	*		SEARCH_LAYER_CLOSE	= 검색레이어 호출시 하단 메뉴바 보임
	*		SEARCH_LAYER_OPEN	= 검색레이어 호출시 하단 메뉴바 숨김
	*		IMG_DOWNLOAD		= 사진편집스튜디오 이미지 다운로드
	*		FILE_DOWNLOAD		= 텍스트파일 다운로드(hwp, doc, docx, ppt, pptx, xls, xlsx, pdf, txt, zip, alz)
	*		OPEN_POPUP				= 레이어팝업 열기
	*		CLOSE_POPUP				= 레이어팝업 닫기
	*		OPEN_APPLY				= 입사지원 레이어 열기..
	*		CLOSE_WINDOW_JS_CALL	= 새창닫고 백그라운드 자바스크립트콜
	*		CHANGE_LIST_ORDER	= APPJOBLIST 정렬 변경 (ios)
	*		PUSH_INQUERY			= 푸시상태 확인
	*		PUSH_ON					= 푸시 켬
	*		PUSH_OFF					= 푸시 끔
	*		APPSET						= 앱설정
	*		JS_SCRAP					= 공고 스크랩
	*		LOGOUT_FOOTER_SNS	= FooterM.inc에서 사용
	*		LOGOUT_FOOTER			= FooterM.inc에서 사용
	*		MEMBER_INFO			= NEW_WINDOW와 동일, 기업서비스 홈 - 회원 수정, 푸터 - 개인/기업 정보 접근 시 사용
	*/
	goInOutLink:function(param) {
		this.setSessionProperty("TOTALCOUNT", "0");
		this.setSessionProperty("NEXTADIDS", JSON.stringify([]));
		this.setProperty("STORYORDERBY", "");

		var device = $("#device").val().toUpperCase();
		var appname = $("#appname").val().toUpperCase();
		var oldappyn = $("#oldappyn").val();
		var version = $("#version").val();

		if(isEmpty(param.menunm)) param.menunm = "";

		if (param.action == "EXTERNAL_BROWSER") {
			this.goAppOutLink(param.url);
			return;
		}

		if (param.url != "" && typeof(param.url) != "undefined") {
			if (param.url.substr(0, 2) == "//") {
				param.url = "http:" + param.url;
			}

			//알바맵 이동시 예외처리
			if (param.url.toLowerCase().indexOf("locationbasedjoblist.asp") > -1 || param.url.toLowerCase().indexOf("mapjoblist.asp") > -1) {
				this.setProperty("LOCATION", "");
				this.setProperty("LONGITUDE", "");
				this.setProperty("LATITUDE", "");
			}
			//공고 미리보기 예외처리
			if (param.url.toLowerCase().indexOf("/biz/jobdetailpreview.asp") > -1) {
				param.url = param.url + "?lngx=" + this.getTempSavedData("lngx") + "&laty=" + this.getTempSavedData("laty") + "&areacd=" + this.getTempSavedData("areacd") + "&workaddr1=" + this.getTempSavedData("workaddr1") + "&workaddr2=" + this.getTempSavedData("workaddr2") + "&roadaddr=" + this.getTempSavedData("roadaddr") + "&workaddr=" + this.getTempSavedData("workaddr");
			}
		} else {
			param.url = "";
		}

		if (device != "" && appname == "ALBA") {
			try {				
				if(param.action == "NEW_WINDOW_TITLE" && (param.menunm == "최근본알바" || param.menunm == "스크랩알바" || param.menunm == "알바매니저" || param.url.indexOf("/person/") > -1)) {
					param.action = "NEW_WINDOW_TITLE_BACK";
				}				

				if (device == "IOS") {
					var strUrl = "";

					if (param.action == "OPEN_APPLY" || param.action == "CLOSE_POPUP" || param.action == "OPEN_POPUP" || param.action == "CLOSE_WINDOW_JS_CALL" || param.action == "CHANGE_LIST_ORDER" || param.action == "JS_SCRAP" ){
						switch(param.action) {
							case "OPEN_APPLY"						: param.action = "OpenApply"; param.url = param.url.replace("/job/JobDetail.asp?", ""); break;
							case "CLOSE_POPUP"					: param.action = "ClosePopup"; break;
							case "OPEN_POPUP"						: param.action = "OpenPopup"; break;
							case "CHANGE_LIST_ORDER"			: param.action = "ChangeListOrder"; break;
							case "CLOSE_WINDOW_JS_CALL"	: param.action = "CloseWindowJsCall"; break;
							case "JS_SCRAP"							: param.action = "JsScrap"; break;
						}
						strUrl = param.action + "://" + param.url;
					} else{
						strUrl = "OpenInApp://" + param.url + "@menunm=" + param.menunm + "@action=" + param.action;
					}
					
					if (oldappyn == "N" && param.menunm == "기업서비스" && param.action == "NEW_WINDOW_TITLE") {	// 4.3개편후버전 링크이동(기업서비스, ios만 적용) - 박경남
						if (version < "4.8.1") {
							//낮은버전 page 이동
							location.href = param.url;
						}
						else {
							//높은버전 OpenInApp 새창
							location.href = strUrl;
						}
					} else {
						//NEW_WINDOW_TITLE 아닐경우 모든액션 OpenInApp 새창
						location.href = strUrl;
					}
				} else {
					if(param.action == "CLOSE_WINDOW_RELOAD") {
						param.menunm = "";
						param.url = "";
					}
					window.webviewlink.getWebViewLink(param.menunm, param.url, param.action);
				}
			} catch(e) {
				alert("앱에서만 실행 가능합니다.\n" + device + "/" + appname + "/" + e);
			}
		} else {
			if(param.url != "") {
				if (param.url.toLowerCase().indexOf("/job/jobdetail.asp") > -1 || param.url.toLowerCase().indexOf("/resume/resumedetail.asp") > -1) {
					if(navigator.userAgent.toLowerCase().indexOf("iphone") > -1 || navigator.userAgent.toLowerCase().indexOf("ipad") > -1) {
						location.href = param.url;
					} else {
						window.open(param.url, "_blank");
					}
				} else if (param.url.toLowerCase().indexOf("/biz/jobdetailpreview.asp") > -1 || param.url.toLowerCase().indexOf("/biz/jobtemplatepreview.asp") > -1) {	//공고 미리보기 새창(2017-12-12 김지훈)
					window.open(param.url, "_blank");
				} else {
					location.href = param.url;
				}
			}
		}
	},

	goProductLink:function(adid, productcd) {
		var url = "/job/JobDetail.asp?adid=" + adid + "&productcd=" + productcd;
		var menucd = $("#MENUCD").val();
		menucd = !isEmpty(menucd) ? menucd : "";
		url += (menucd != "" ? "&listmenucd=" + menucd : "");
		var action = "NEW_WINDOW";

		this.saveSearchCondition(url);

		this.goInOutLink({"url":url, "action":action});
	},

	// 공고상세 클릭시 검색조건 빅쿼리 저장
	saveSearchCondition:function(url) {
		var menucd = $("#MENUCD").val();
		menucd = !isEmpty(menucd) ? menucd : "";
		var currpage = location.pathname;
		if (menucd != "") {
			var postdata = "";
			if (currpage.toLowerCase().indexOf("/job/webjoblist.asp") >= 0) {
				postdata = $("#JOBSCH").val();
			} else if (currpage.toLowerCase().indexOf("/job/appjoblist.asp") >= 0) {
				postdata = $("#appJobListForm").serialize();
			}

			if (!isEmpty(postdata)) {
				BA.Collect("EVENT", {
					"category1": "공고상세리스트조건"
				,	"pageurl": url
				,	"postdata": postdata
				});
			}
		}
	},

	/**
	*  사용자 트래킹 API
	*		terms_agree_C		= 기업회원가입
	*		terms_agree_P		= 개인회원가입
	*		login_try				= 로그인시도
	*		login_complete	= 로그인완료
	*       try_join_P			= 개인 회원가입 시도
	*       try_join_C			= 기업 회원가입 시도
	*		profile_complete	= 이력서작성완료
	*		profile_recomplete= 이력서수정완료
	*		jobinfo_view		= 채용정보 열람
	*		jobinfo_share		= 채용정보 공유
	*		jobinfo_scrap		= 채용정보 스크랩
	*		apply_call			= 전화지원
	*		apply_online		= 온라인지원
	*		apply_email			= 이메일지원
	*		apply_homepage	= 홈페이지지원
	*		custom_alba1		= 맞춤알바설정1
	*		keyword_search	= 키워드검색
	*/
	goAdLink:function(param) {
		this.goAppboyLink(param);		//braze
		this.goAlbaAnalytics(param);		//bigquery
		this.goAppsFlyerLink(param);		//appsflyer

		//Adbrix 2020/01/30 제거
	},

	/**
	* Appboy - Braze 앱연동
	* action type 정의
	*
	**/
	goAppboyLink:function(param) {
		var version = $("#version").val();
		var device = $("#device").val();
		var appname = $("#appname").val();

		if(typeof(param.data) == "undefined" || param.data == "") {
			param.data = "";
		} else if(typeof(param.data) == "object") {
			if(device == "ANDROID" && version >= "5.3.28" || device == "IOS" && version >= "5.0.1") {
				param.data = JSON.stringify(param.data);
			} else {
				return;
			}
		}

		if(appname != "" && typeof(appname != "undefined")) appname = $("#appname").val().toUpperCase();

		if (device != "" && appname == "ALBA") {
			try {
				device = device.toUpperCase();
				if (device == "IOS") {
					this.iosWkWebViewCall("getAppboyLink", param);
				} else {
					window.SSO.getAppboyLink(param.action, param.data);
				}
			} catch(e) {}
		}
	},

	/**
	* 앱스플라이어 연동
	* action type 정의
	**/
	goAppsFlyerLink:function(param) {
		if (isEmpty(param.data)) param.data = "";

		var version = $("#version").val();
		var device = $("#device").val();
		var appname = $("#appname").val();

		if(appname != "" && typeof(appname != "undefined")) appname = $("#appname").val().toUpperCase();

		if (device != "" && appname == "ALBA") {
			try {
				device = device.toUpperCase();
				if (device == "IOS") {
					this.iosWkWebViewCall("getAppsFlyerLink", param);				
				} else {
					window.SSO.getAppsFlyerLink(param.action, param.data);
				}
			} catch(e) {}
		}
	},

	//Alba Analytics
	goAlbaAnalytics:function(param) {
		var category1 = param.action;
		var category2 = param.action;
		var pageurl = "";
		var postdata = param.data;
		var arr = "";

		if(param.data != "" && typeof(param.data) != "undefined") postdata = param.data;

		if(param.action != "" && typeof(param.action) != "undefined") 	{
			switch (param.action) {
				case "login_complete"				: pageurl = ""; category1 = "로그인완료"	; break;
				case "profile_open"					: pageurl = ""; category1 = "이력서열람실행" ; break;
				case "hr_scrap"						: pageurl = ""; category1 = "인재스크랩"	; break;
				case "custom_hr_complete"		: pageurl = ""; category1 = "맞춤인재설정실행"	; break;
				case "jobinfo_apply_call"			: pageurl = ""; category1 = "전화지원"	 ; break;
				case "jobinfo_apply_email"			: pageurl = ""; category1 = "이메일지원" ; break;
				case "jobinfo_apply_simple"		: pageurl = ""; category1 = "간편지원" ; break;
				case "jobinfo_apply_homepage"	: pageurl = ""; category1 = "홈페이지지원" ; break;
				case "jobinfo_apply_online"		: pageurl = ""; category1 = "온라인지원"	; break;
				case "jobinfo_apply_sms"			: pageurl = ""; category1 = "문자지원" ; break;
				case "jobinfo_scrap"					: pageurl = ""; category1 = "채용공고스크랩" ; break;
				case "jobinfo_share"					: pageurl = ""; category1 = "채용공고공유" ; break;
				case "eventset_albarequest"		: pageurl = ""; category1 = "알바의뢰서설정" ; break;
				case "region_opt_in"					: pageurl = ""; category1 = "지역설정완료" ; break;
				case "category_opt_in"				: pageurl = ""; category1 = "직종설정완료" ; break;
				case "pushoptin_safetynumber"	: pageurl = "/person/resume/RegistComplete.asp"; category1 = "본인인증후 인재정보공개"		; break;
				default									: pageurl = ""; category1 = "";
			}
		}

		if (category1 != "") {
			var tmp = {};
			if(param.data != "") {
				if(param.action.indexOf("jobinfo_") > -1) {
					arr = param.data.split("_");
					postdata = "region=" + arr[0] + "&age=" + arr[1] + "&sex=" + arr[2] + "&category=" + arr[3] + "&period=" + arr[4] + "&adid=" + arr[5];
				} else {
					if(param.data.indexOf("_") > -1) {
						arr = param.data.split("_");
						$.each(arr, function(i,row) {
							tmp["key"+(i+1)] = arr[i];
						});
						postdata = $.param(tmp);
					}
				}
			}

			try {
				if (category2 != "") {
					BA.Collect("EVENT", {
							"category1": category1
						,	"category2": category2
						,	"pageurl": pageurl
						,	"postdata": postdata
					});
				}
			} catch(e) {}			
		}
	},

	// 드로워 메뉴 개인별 맞춤채용정보 카운트 노출
	showCustomListcount: function() {
		var count = 0;
		var tmpHtml = "";
		var arrIndex = JSON.parse(_lsCtrl.getProperty("CUSTOM_INDEX"));
		if(arrIndex.length > 0) {
			for(var i=0;i<arrIndex.length;i++) {
				if(i < 2) {
					count = this.getCustomJobListCount(arrIndex[i]);
					tmpHtml += "<li";

					if (arrIndex.length == 0) {
						tmpHtml += " class='noline'";
					}
					tmpHtml += "><a href='#' onclick='location.href=\"/job/CustomJobDetailList.asp?index=" +arrIndex[i]  + "&order=" + (i+1) + "\";return false;'>맞춤알바" + (i+1) + " (<em>" + count + "건</em>)</a></li>";
				}
			}
		} else {
			tmpHtml = "<li class='noInfo noline'><a href='/job/CustomJobList.asp'><em>지금 맞춤알바를 설정하세요!</em></a></li>";
		}

		$("#customJobDetailInfo").html(tmpHtml);
	},

	// 알뽀현황 불러오기
	getAlpoInfo:function() {
		var d = new Date();
		var ts = d.getTime();
		var objJson;

		$.ajax({
			dataType : "json",
			type : "GET",
			async : false,
			url : "/rsc/lib/getAlpoInfo.asp?ts=" + ts,
			success : function(result) {
				objJson = result;
			}
		});
		return objJson;
	},

	// 드로워메뉴 알뽀현황 출력
	printAlpoInfo:function() {
		var result = this.getAlpoInfo();
		var nowpoint = result.NOWPOINT;
		var exinctplan = result.EXINCTPLAN;
		var changeable_adsee = result.ADSEE_AVAILABLEPOINT;
		var changeable_yes24 = result.YES24_AVAILABLEPOINT;
		var adsee_mileage = result.ADSEE_MILEAGE;

		$("em.alpo_nowpoint").html(_commonctrl.formatNumber({num:nowpoint}) + "<span>P</span>");
		$("em.alpo_changeable").html(_commonctrl.formatNumber({num:changeable_adsee}) + "<span>P</span>");
		$("em.alpo_exinctplan").html(_commonctrl.formatNumber({num:exinctplan}) + "<span>P</span>");
		$("em.alpo_changeableyes24").html(_commonctrl.formatNumber({num:changeable_yes24}) + "<span>P</span>");
		$("em.adsee_mileage").html(_commonctrl.formatNumber({num:adsee_mileage}) + "<span>원</span>");
	},

	// 프로필사진 출력
	getUserPhoto: function() {
		var d = new Date();
		var ts = d.getTime();

		$.ajax({
			dataType : "json",
			type : "GET",
			async : false,
			url : "/rsc/lib/getUserPhoto.asp?ts=" + ts,
			success : function(result) {
				if (result.RESULT == "SUCCESS") {
					strResult = eval("result.USERPHOTO");
				}
				$(".servicePersonal>.info>.photo").css("background-image", "url('" + strResult + "')");
			}
		});
	},

	getUserPhotoStory: function() {
		var d = new Date();
		var ts = d.getTime();

		$.ajax({
			dataType : "json",
			type : "GET",
			async : false,
			url : "/rsc/lib/getUserPhoto.asp?ts=" + ts,
			success : function(result) {
				if (result.RESULT == "SUCCESS") {
					strResult = eval("result.USERPHOTO");
				}
				$(".storyMainPersonal-nick-photo #divProfile").attr("src", strResult );
			}
		});
	},

	// 활동알림트리
	getNotifyCountData : function(mType){
		var mUrl;
		if (mType = "C")
		{
			mUrl = "/aside/NotifyCountDataLoader.asp";
		}else{
			mUrl = "/aside/NotifyCompanyCountDataLoader.asp.asp";
		}
		$.ajax({
			  cache: false
			, type: "post"
			, url: mUrl
			, dataType: "json"
			, timeout: 5000
			, success: function( data ) {
				if (data.result == true)
				{
					if (parseInt(data.total_cnt, 10)  > 0)
					{
						$("#HeaderNotifyCnt em").html( ((parseInt(data.total_cnt, 10) > 99) ? "99+" : data.total_cnt) ) ;
						$("#HeaderNotifyCnt em").show();
					}else{
						$("#HeaderNotifyCnt em").hide();
					}
				}else{
					$("#HeaderNotifyCnt em").hide();
				}
			}
			, error: function(request, exception) {
			}
		});
	},

	getTempSavedData:function(name) {
		if (name == "") return "";
		var strRegistSavedData = _lsCtrl.getProperty("JOBREGISTSAVEDATA");
		if (strRegistSavedData == "") return "";
		var jsonData = JSON.parse(strRegistSavedData);
		var strRet = "";

		$.each(jsonData, function(i, entry) {
			if (entry["name"] == name) {
				//alert(entry["name"] + "=" + entry["value"]);
				if (strRet != "") {
					strRet = strRet + ",";
				}
				strRet += entry["value"];
			}
		});
		return strRet;
	},

	// ios 앨범 및 사진 권한 확인
	getCameraAccessIOS: function() {
		var ret = false;
		var device = $("#device").val();
		var appname = $("#appname").val();
		var version = $("#version").val();
		var json = new Object();

		if(appname == "ALBA" && device == "IOS") {
			this.iosWkWebViewCall("getPhotoCameraAccess");
			return true;
		} else {
			ret = true;
		}

		return ret;
	},

	// ios WkWebview 전환에 따른 script call 수정
	iosWkWebViewCall: function(func, params) {
		var json = new Object();
		json.func = func;

		switch(func) {
			case "getAppsFlyerLink" :
			case "getAppboyLink" : json.name = params.action; json.params = params.data; break;
			case "setQuery" : json.query = params.query; json.rtype = params.rtype; break;
			case "setQueryJson" : json.query = params.query; json.json = params.json; break;
			case "setSelectedJobFilter" : json.json = params.json; break;
			case "setSelectedJobFilterBrand" : json.code = params.code; break;
			case "removeTodayAd" :
			case "removeScrapAd" : json.adids = params.adids; break;
			case "applyChanged" : json.adid = "" + params.jobadid; json.flag = params.flag; break;
			case "selectCustomArea" : json.area = params.area; json.workareadongview = params.workareadongview; break;
			case "selectCustomJobKind" : json.jobkind = params.jobkind; json.barexclusion = params.barexclusion; break;
			case "getGeolocation" : break;
			case "getGeolocationOrFail" : break;
		    case "getPhotoCameraAccess": break;
			case "setDetailInit": break;
			case "changeListOrder": json.order = params.order; break;
		    //SSO
		    case "put": json.name = params.name; json.token = params.token; break;
		    case "get": json.prefix = params.prefix; json.order = params.order; break;
		    case "getAll": break;
		    case "remove": json.name = params.name; break;
		    case "removeAll": break;
		    case "signIn": json.name = params.name; json.keep = params.keep; break;
		    case "signOut": break;
		    case "success": break;
		    case "fail": break;
		    case "putSignature": json.name = params.name; json.Signature = params.Signature; break;
		    case "shareSNS": json.json = params; break;
			case "brandSignIn": json.providercd = params.providercd; json.storecd = params.storecd; json.keep = params.keep; break;
		}

		try {
			window.webkit.messageHandlers.callBackHandler.postMessage(JSON.stringify(json));
		} catch(e) {
			alert(e);
		}
	},

	removeEmojis: function(strId) {
		var strVal	= $("#" + strId).val();

		const regex = /(?:[\u2700-\u27bf]|(?:\ud83c[\udde6-\uddff]){2}|[\ud800-\udbff][\udc00-\udfff]|[\u0023-\u0039]\ufe0f?\u20e3|\u3299|\u3297|\u303d|\u3030|\u24c2|\ud83c[\udd70-\udd71]|\ud83c[\udd7e-\udd7f]|\ud83c\udd8e|\ud83c[\udd91-\udd9a]|\ud83c[\udde6-\uddff]|\ud83c[\ude01-\ude02]|\ud83c\ude1a|\ud83c\ude2f|\ud83c[\ude32-\ude3a]|\ud83c[\ude50-\ude51]|\u203c|\u2049|[\u25aa-\u25ab]|\u25b6|\u25c0|[\u25fb-\u25fe]|\u00a9|\u00ae|\u2122|\u2139|\ud83c\udc04|[\u2600-\u26FF]|\u2b05|\u2b06|\u2b07|\u2b1b|\u2b1c|\u2b50|\u2b55|\u231a|\u231b|\u2328|\u23cf|[\u23e9-\u23f3]|[\u23f8-\u23fa]|\ud83c\udccf|\u2934|\u2935|[\u2190-\u21ff])/g;

		$("#" + strId).val(strVal.replace(regex, ''));
		return true;
	}
};