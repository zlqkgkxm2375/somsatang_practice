<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ include file="./jsp_header.jsp"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>COMPANY25 </title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="preconnect" href="http://www.google-analytics.com" />
<link rel="preconnect" href="https://www.google-analytics.com" />
<link rel="preconnect" href="https://stats.g.doubleclick.net" />
<link rel="preconnect" href="//gen.alba.co.kr" crossorigin />
<link rel="stylesheet" href="resources/pay/css/Sub.css" />
<link rel="stylesheet" href="resources/pay/css/Story.css" />
<link rel="stylesheet" href="resources/pay/css/Repute.css" />
	
<link rel="preload" as="script" href="resources/pay/rsc/js/jquery-1.8.3.min.js" />
<script src="resources/pay/rsc/js/jquery-1.8.3.min.js"></script>

<script>
// 업직종개편
var JOBKIND_CHANGE_BIZ = true;					// 기업서비스
var JOBKIND_CHANGE_BIZ_REG = true;			// 공고등록
var JOBKIND_CHANGE_JOB = true;					// 채용정보
var JOBKIND_CHANGE_PERSON = true;			// 개인서비스
var JOBKIND_CHANGE_PERSON_REG = true;	// 이력서등록
var JOBKIND_CHANGE_RESUME = true;			// 인재목록
var JOBKIND_CHANGE_ETC = true;					// 기타
</script>

<script src="resources/pay/rsc/js/CommonCtrl.js?202109171300"></script>
<script src="resources/pay/js/LocalStorageController.js?202109171300"></script>
<script src="resources/pay/rsc/js/CommonUI.js?202109171300"></script>

<script src="resources/pay/rsc/js/swiper.min.js"></script>

<style>
.calculator__setup-alert {display:block;margin-top:5px;font-size:12px;color:#ff2a2a}
</style>
<script>
var _commonctrl		= new CommonCtrl("");
var _lsCtrl			= new LocalStorageCtrl();
</script>
    <link rel=" shortcut icon" href="resources/fullcalenda/image/favicon.ico">

    <link rel="stylesheet" href="resources/fullcalenda/vendor/css/fullcalendar.min.css" />
    <link rel="stylesheet" href="resources/fullcalenda/vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href='resources/fullcalenda/vendor/css/select2.min.css' />
    <link rel="stylesheet" href='resources/fullcalenda/vendor/css/bootstrap-datetimepicker.min.css' />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <link rel="stylesheet" href="resources/fullcalenda/css/main.css">
    
<link rel="stylesheet" href="resources/main_css/default.css">
<link rel="stylesheet" href="resources/main_css/layout.css">
<link rel="stylesheet" href="resources/main_css/content.css">
<link rel="stylesheet" href="resources/main_css//main.css" />
<link rel="stylesheet" href="resources/kr/css/language.css" />
<link rel="stylesheet" href="resources/main_css/layout_responsive.css">
<link rel="stylesheet" href="resources/main_css/content_responsive.css">
<link rel="stylesheet" href="resources/main_css/main_responsive.css" />
<!-- Board Skin -->
<link rel="stylesheet" href="resources/main_css/common/cm_bbs_common.css">
<link rel="stylesheet" href="resources/main_css/common/cm_board.css">
<link rel="stylesheet" href="resources/main_css/common/cm_gallery.css" />
<link rel="stylesheet" href="resources/main_css/common/cm_faq.css" />
<link rel="stylesheet" href="resources/main_css/common/cm_online.css" />

<link rel="stylesheet" href="resources/login_main/loginfonts/icomoon/style.css">
<link rel="stylesheet" href="resources/login_main/logincss/owl.carousel.min.css">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="resources/login_main/logincss/bootstrap.min.css">
    
<!-- Style -->
<link rel="stylesheet" href="resources/login_main/logincss/style.css">

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="https://jobcan.co.kr/js/vendor/jquery.easing.1.3.js"></script>
<script>window.jQuery || document.write('<script src="/resources/main_js/vendor/jquery-1.8.3.min.js"><\/script>')</script>

<script src="<%=request.getContextPath()%>/resources/main_js/common.js"></script>
<script src="<%=request.getContextPath()%>/resources/main_js/layer_popup.js"></script>

<!-- Icon Font -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"  rel="stylesheet"><!-- google -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"><!-- naver -->

<!-- Slick Plugin -->
<link rel="stylesheet" type="text/css" href="resources/main_css/plugin/slick.css">
<script src="<%=request.getContextPath()%>/resources/main_js/plugin/slick.js"></script>

<!-- CustomScrollbar Plugin -->
<link rel="stylesheet" href="resources/main_css/plugin/jquery.mCustomScrollbar.css">
<script src="<%=request.getContextPath()%>/resources/main_js/plugin/jquery.mCustomScrollbar.concat.min.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-104405843-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'UA-104405843-1');
</script>

<!-- Aos Plugin -->
<link rel="stylesheet" href="resources/main_css/plugin/aos.css" />
<script src="<%=request.getContextPath()%>/resources/main_js/plugin/aos.js"></script>
<script>
	$(window).load(function() {
		/* AOS Plugin */
		aosInit ();
	});
</script>

<!-- Global site tag (gtag.js) - Google Ads: 842139747 -->
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'AW-842139747');
</script>

<script>
	function gtag_report_conversion(url) {
	  var callback = function () {
		if (typeof(url) != 'undefined') {
		  window.location = url;
		}
	  };
	  gtag('event', 'conversion', {
		  'send_to': 'AW-842139747/nPFqCMq3r-wBEOOQyJED',
		  'value': 1000.0,
		  'currency': 'KRW',
		  'event_callback': callback
	  });
	  return false;
	}
</script>

<!-- 전환페이지 설정 -->
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
var _nasa={};
if(window.wcs) _nasa["cnv"] = wcs.cnv("1","10"); 
</script> 
<%=session.getAttribute("aid")%> 
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/main_js/nav.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/main_js/main.js"></script>
<style>
.login {
  min-height: 100vh;
}


.login-heading {
  font-weight: 300;
}

.btn-login {
  font-size: 0.9rem;
  letter-spacing: 0.05rem;
  padding: 0.75rem 1rem;
}

</style>

</head>

<body id="Calculator" class="story sub">
<!-- accessibility -->
<div class="cm-accessibility">
	<a href="#mainContainer">본문바로가기</a>
</div>
<!-- //accessibility -->

<!-- code -->
<div id="wrap">
		<!-- header -->

		<header id="header" class="font-gmarket">
			<div class="gnb-overlay-bg"></div>
			<div id="headerInnerWrap">
				<!-- 헤더 시작 -->
				<div id="headerInner" class="clearfix">
					<div class="partner">
						<dl>
							<dt>COMPANY25</dt>
							<dd><a href="/pany/amain?aid=${aid}" >근태관리</a></dd>
						</dl>
					</div>
					<h1 class="logo"><a href="/pany/chatting" title="채팅"><img src="resources/images/face_ic.svg" alt="" width="30" height="24" class="d-inline-block align-text-top"></a></h1>
					<div class="header-util-box">
						<ul class="up-list clearfix">
							<li><a href="/pany/alogout">로그아웃</a></li>
						</ul>
					</div>
				</div>
				<iframe src="" style="display:none;" name="ifm"></iframe>
	
				<nav id="gnb" class="each-menu">
					<h2 class="blind">주메뉴</h2>
					<ul class="clearfix menu6 area">
						<li class="gnb1">
							<a href="#">회원관리</a>
						</li>
						<li class="gnb2">
							<a href="/pany/AgoList?aid=${aid}">근태관리</a>
						</li>
						<li class="gnb3">
							<a href="/pany/ahomeList?aid=${aid}">재택근무</a>
						</li>
						<li class="gnb4">
							<a href="http://localhost:8080/webTest/index.html">휴가일정</a>
						</li>
						<li class="gnb5">
							<a href="/pany/apay">급여관리</a>
						</li>
					</ul>
				</nav>
			</div>
			<!-- GNB Mobile -->
			<button class="nav-open-btn" title="네비게이션 열기">
				<span class="line line1"></span><span class="line line2"></span><span class="line line3"></span>
			</button>
			<div class="gnb-overlay-bg-m"></div>
			<nav id="gnbM" class="gnb-style-full">
				<h2 class="blind">주메뉴</h2>
				<div class="header-util-menu-box">
					<!-- 회원메뉴 -->
					<ul class="clearfix member-menu-box">
						<li><a href="/pany/alogout">로그아웃</a></li>
					</ul>
				</div>
				<!-- // -->
				<div class="gnb-navigation-wrapper">
					<div class="gnb-navigation-inner">
						<ul id="navigation">
							<li class="gnb1">
							<a href="#">회원관리</a>
						</li>
						<li class="gnb2">
							<a href="AgoList?aid=${aid}">근태관리</a>
						</li>
						<li class="gnb3">
							<a href="/pany/ahomeList?aid=${aid}">재택근무</a>
						</li>
						<li class="gnb4">
							<a href="http://localhost:8080/webTest/index.html">휴가일정</a>
						</li>
						<li class="gnb5">
							<a href="/pany/apay">급여관리</a>
						</li>
						</ul>
					</div>
				</div>
			</nav>

		</header>
	
	<!-- //header -->
	<!-- container -->
	<div id="mainContainer">
		<!-- 메인 시작-->
<br><br><br><br>
  <div class="content">
    <div class="container">
      <div class="row">
 
 <input type="hidden" id="adultCertYn" value="N" />
<input type="hidden" id="device" value="" />
<input type="hidden" id="version" value="" />
<input type="hidden" id="appname" value="" />
<input type="hidden" id="JOBSCH" value="" />
<input type="hidden" id="oldappyn" value="N" />
<input type="hidden" id="nativelogin" value="" />
<input type="hidden" id="mbizlogin" value="" />

<script src="resources/pay/rsc/js/KeyUpFix.js"></script>

<ul class="skipNav">
	<li><a href="#Header">주요 메뉴 바로가기</a></li>
	<li><a href="#Section">본문 바로가기</a></li>
</ul>

		<header id="Header" class="header-sub">
			<h1 class="header-sub__title"></h1>
			<ul class="header-sub__action">
				<li class="header-sub__action-directory"><a href="http://m1.alba.co.kr/aside/Directory.asp">디렉토리</a></li>
				<li class="header-sub__action-search"><a href="http://m1.alba.co.kr/search/Main.asp">검색</a></li>
				<li class="header-sub__action-service"><a href="http://m1.alba.co.kr/aside/Service.asp">서비스</a></li>
			</ul>
	
	</header>
	<script>
	$(".header-sub__action-prev a").on("click", function(e) {
		e.preventDefault();
		
		location.href = 'http://m1.alba.co.kr/aside/Directory.asp';
		
	});
	</script>

<script src="resources/pay/rsc/js/Header.js?202109171300"></script>

<hr />
<!-- Section -->
<section id="Section">
	<div class="headerWrap">
		<!--<a href="#" class="backBtn" onclick="history.back();return false;"><span>이전</span></a>-->
		<h1>급여계산기</h1>
		<div class="submitAction">
			<a href="#" onclick="init_Clear('recal');return false;">초기화</a>
		</div>
	</div>

	<article id="Contents">
	<form name="calForm" method="post">
        <input type="hidden" name="strPaycd" id="strPaycd" value="4" />
        <input type="hidden" name="intPayOrigin" id="intPayOrigin" value="1700000" />
        <input type="hidden" name="intWorkTime" id="intWorkTime" value="7" />
        <input type="hidden" name="intWorkWeek" id="intWorkWeek" value="5" />
		<p class="calculator__notice">2021년 최저시급 <strong>8,720</strong>원 입니다.</p>

		<div class="calculator__setting">
			<div class="calculator__select">
				<div class="calculator__select-column calculator__select-column--pay-type">
					<select id="payTypeBefore" name="payTypeBefore" title="급여 형태" onchange="getpayTypeAfter(this.value,'');reCalculate();">
						<option value="1">시급</option>
						<option value="2">일급</option>
						<option value="3">주급</option>
						<option value="4">월급</option>
						<option value="5">연봉</option>
					</select>
				</div>
				<div class="calculator__select-column calculator__select-column--write">
					<input type="number" inputmode="numeric" pattern="[0-9]*" id="payOrigin" title="값을 입력하세요" onkeyup="RePayCalculate();" />
					<span class="calculator__select-unit">원</span>
					<span class="calculator__select-space">을</span>
					<span id="payOriginAlert" class="calculator__setup-alert"></span>
				</div>
				<div class="calculator__select-column calculator__select-column--full">
					<select id="payTypeAfter" name="payTypeAfter" title="급여 형태" onchange="getpayTypeAfter($('#payTypeBefore').val(), $(this).val());reCalculate()"></select>
					<span class="calculator__select-space">으로 환산</span>
				</div>
			</div>

			<div id="PCal_cont" class="calculator__setup">
				<ul class="calculator__setup-list">
					<!-- <li id="li_perTime"><span class="item" id="payment">시급</span></li> -->
					<li id="li_perDay"><span class="item">일일 근무시간 <a href="#ModalMemoDay" class="icon-help" onclick="$('#ModalMemoDay').appendTo($(this).parent()).addClass('on');return false;">?</a></span>
						<select id="perDay" name="perDay" title="일일 근무시간 선택" style="ime-mode:active;" onchange="reCalculate();">
							<option value="">선택</option>
						</select>
						<span id="perDayAlert" class="calculator__setup-alert"></span>
					</li>
					<li id="li_perWeek"><span class="item">일주 근무일수</span>
						<select id="perWeek" name="perWeek" title="일주 근무일수 선택" style="ime-mode:active;" onchange="reCalculate();">
							<option value="">선택</option>
						</select>
						<span id="perWeekAlert" class="calculator__setup-alert"></span>
					</li>
					<li id="li_perMonth"><span class="item">한달 근무일수</span>
						<select id="perMonth" name="perMonth" title="한달 근무일수 선택" style="ime-mode:active;" onchange="reCalculate();">
							<option value="">선택</option>
						</select>
						<span id="perMonthAlert" class="calculator__setup-alert"></span>
					</li>
					<li id="li_perWeekOvertime">
						<span class="item">주 연장 근무 시간 <a href="#ModalLayerOvertime" class="icon-help" onclick="$('#ModalLayerOvertime').show();return false;">?</a></span>
						<select id="perWeekOvertime" name="perWeekOvertime" title="주 연장 근무 시간 선택" style="ime-mode:active;" onchange="reCalculate();">
							<option value="">선택</option>
						</select>
					</li>
					<li id="li_perMonthOvertime">
						<span class="item">월 연장 근무 시간 <a href="#ModalLayerOvertime" class="icon-help" onclick="$('#ModalLayerOvertime').show();return false;">?</a></span>
						<select id="perMonthOvertime" name="perMonthOvertime" title="월 연장 근무 시간 선택" style="ime-mode:active;" onchange="reCalculate();">
							<option value="">선택</option>
						</select>
					</li>
					<li class="holiday">
						<span class="item">주휴수당 <a href="#ModalLayerHoliday" class="icon-help" onclick="$('#ModalLayerHoliday').show();return false;">?</a></span>
						<input type="radio" name="holidayPay" id="holidayPayN" class="hide" value="N" /> <label for="holidayPayN">미포함</label>
						<input type="radio" name="holidayPay" id="holidayPayY" class="hide" value="Y" checked="checked" /> <label for="holidayPayY">포함</label>
					</li>
					<li class="tax"><span class="item">세금 <a href="#ModalLayerTax" class="icon-help" onclick="$('#ModalLayerTax').show();return false;">?</a></span>
						<select id="tax1" name="tax1" title="세금 비율" style="ime-mode:active;" onchange="reCalculate();">
							<option value="0">미적용</option>
							<option value="0.0913">9.13%</option>
							<option value="0.033">3.3%</option>
						</select>
					</li>

				</ul>
				<a href="#" class="calculator__setup-submit" onclick="calculate();return false;">계산하기</a>
			</div>
		</div>

		<div class="calculator__result">
			<div class="calculator__result-rows">
				<div id="cal1" class="calculator__result-item">예상 시급</div>
				<div id="cal2" class="calculator__result-item">예상 일급</div>
				<div id="cal3" class="calculator__result-item">예상 주급</div>
				<div id="cal4" class="calculator__result-item">예상 월급</div>
				<div id="cal5" class="calculator__result-item">예상 연봉</div>
				<div class="calculator__result-pay">
					<span class="calculator__result-price" id="payResult"></span> 원
				</div>
			</div>
			<div class="calculator__result-rows">
				<div class="calculator__result-item">예상 주휴수당</div>
				<div class="calculator__result-pay">
					<span class="calculator__result-space calculator__result-space--holiday">(+)</span>
					<span class="calculator__result-price" id="payResultHoliday"></span>
					<span class="calculator__result-space calculator__result-space--holiday">원</span>
				</div>
			</div>
			<div class="calculator__result-rows" id="WeekOvertime">
				<div class="calculator__result-item">예상 주 연장 수당</div>
				<div class="calculator__result-pay">
					<span class="calculator__result-space">(+)</span>
					<span class="calculator__result-price" id="payResultWeekOvertime">0</span>
					<span class="calculator__result-space">원</span>
				</div>
			</div>
			<div class="calculator__result-rows" id="MonthOvertime">
				<div class="calculator__result-item">예상 월 연장 수당</div>
				<div class="calculator__result-pay">
					<span class="calculator__result-space">(+)</span>
					<span class="calculator__result-price" id="payResultMonthOvertime">0</span>
					<span class="calculator__result-space">원</span>
				</div>
			</div>
			<div class="calculator__result-total">
				<div class="calculator__result-item">최종 환산금액</div>
				<div class="calculator__result-pay">
					<span class="calculator__result-price" id="LastPay"></span> 원
				</div>
			</div>
		</div>

		<ul class="calculator__info">
			<li class="calculator__info-item">상기 급여는 한 달을 약 4.34주로 가정하여 계산한 예상 급여이며, 근로계약 조건에 따라 차이가 있을 수 있습니다. 정확한 급여는 사업장에 문의 하세요.</li>
		</ul>

	</form>
	</article>

	<div id="ModalLayerOvertime" class="formLayer">
		<div class="filter"></div>
		<div class="layer__wrap">
			<h1 class="layer__title">연장 근로</h1>
			<div class="layer__contents">
				<div class="layer__definition-wrap">
					<p class="layer__explain-title">연장근로는 계약서상 정규 근로시간 이외에 초과하여 근로한 행위를 말합니다.</p>
				</div>
				<div class="layer__definition-wrap">
					<h2 class="layer__sub-title">연장근로 계산하기</h2>
					<p class="layer__explain-title">(연장 근무시간 x 계약시급) x 1.5</p>
					<p class="layer__explain-footer layer__explain-footer--overtime">상시 근로자 수 5인 이상 사업장인 경우 통상 임금의 50%를 가산해서 지급<br>(상시 근로자 수 5인 미만인 경우 통상임금만 지급)</p>
				</div>
			</div>
			<button type="button" class="layer__close-button" onclick="formLayerClose();">레이어 닫기</button>
		</div>
	</div>

	<div id="ModalLayerHoliday" class="formLayer">
		<div class="filter"></div>
		<div class="layer__wrap">
			<h1 class="layer__title">주휴수당</h1>
			<div class="layer__contents">
				<div class="layer__definition-wrap">
					<dl class="layer__definition-contents">
						<dt class="layer__definition-title">&middot; 주휴수당이란?</dt>
						<dd class="layer__definition-text">1주일 15시간 이상 소정의 근로일 수를 개근하면 지급되는 수당</dd>

						<dt class="layer__definition-title">&middot; 주휴수당 지급 대상자</dt>
						<dd class="layer__definition-text">일주일 동안 15시간 이상 '개근'한 모든 근로자</dd>

						<dt class="layer__definition-title">&middot; 주휴수당 계산 (1주 기준)</dt>
						<dd class="layer__definition-text">(1주일 총 일한시간 / 40시간 ) x 8 x 시급<br /> 단, 40시간 이상 근무한 경우에도 최대 40시간 까지만 계산 되어 적용 됩니다.</dd>

						<dt class="layer__definition-title">&middot; 주휴수당 지급 기준 시간이 최대 40시간인 이유는?</dt>
						<dd class="layer__definition-text">만 18세 이상 성인근로자의 경우 법정근로시간이 1일 8시간, 1주일 40시간을 의미하기 때문입니다. 법정근로시간에 따라 주휴수당은 최대 40시간까지 계산 가능합니다.</dd>
					</dl>
					<p class="layer__postscript">주휴수당에 대해 좀 더 자세한 문의는 COMPANY25에서 확인하세요 <a href="/pay/story/LaborConsultList.asp" class="layer-postscript-link" onclick="_lsCtrl.goInOutLink({'menunm':'권익센터',url:this.href,action:'NEW_WINDOW_TITLE'});return false;">알바상담센터 바로가기</a></p>
				</div>
			</div>
			<button type="button" class="layer__close-button" onclick="formLayerClose();">레이어 닫기</button>
		</div>
	</div>

	<div id="ModalLayerTax" class="formLayer">
		<div class="filter"></div>
		<div class="layer__wrap">
			<h1 class="layer__title">세금공제</h1>
			<div class="layer__contents">
				<div class="layer__definition-wrap">
					<h2 class="layer__sub-title">1. 4대보험료 공제 9.13%</h2>
					<p class="layer__explain-title">4대보험에 가입하여 세금을 적용할 경우, 공제되는 금액</p>
					<table class="layer__explain-table" cellspacing="0" cellpadding="0">
						<colgroup>
							<col width="90px">
							<col width="*">
							<col width="90px">
						</colgroup>
						<thead>
							<th scope="col">4대 보험</th>
							<th scope="col">근로자(급여공제)</th>
							<th scope="col">사업주</th>
						</thead>
						<tbody>
							<tr>
								<td>국민연금 (9%)</td>
								<td>4.5%</td>
								<td>4.5%</td>
							</tr>
							<tr>
								<td>건강보험 (6.86%)</td>
								<td>3.43%</td>
								<td>3.43%</td>
							</tr>
							<tr>
								<td>장기요양보험<br>(11.52%)</td>
								<td>건강보험료<br>*11.52%</td>
								<td>건강보험료<br>*11.52%</td>
							</tr>
							<tr>
								<td>고용보험</td>
								<td>0.8%</td>
								<td>기업규모별 상이</td>
							</tr>
							<tr>
								<td>산재보험</td>
								<td>없음<br>(전액회사부담)</td>
								<td>업종별 상이</td>
							</tr>
						</tbody>
					</table>
					<p class="layer__explain-sub-text">※ 주 15시간 (월 60시간) 미만 근로자는 4대보험 가입대상이 아닙니다.</p>
				</div>

				<div class="layer__definition-wrap">
					<h2 class="layer__sub-title">2. 소득세 공제 3.3%</h2>
					<p class="layer__explain-title">소득세 3% + 지방소득세 (소득세의 10%)</p>
					<p class="layer__explain-text">소득세를 공제받은 경우, 5월 종합소득세 신고기간에 소득을 신고하여,신고금액에 따라 환급이 가능합니다.</p>
					<p class="layer__explain-footer">2021년도 기준이며, 각종 수당에 따라 계산되는 금액이 다를 수 있습니다.</p>
				</div>
			</div>
			<button type="button" class="layer__close-button" onclick="formLayerClose();">레이어 닫기</button>
		</div>
	</div>

	<div id="ModalMemoDay" class="modal-memo">
		<h1 class="modal-memo__h1">일일 근무시간</h1>
		<ul class="modal-memo__list">
			<li>휴게시간을 제외한 근무시간</li>
		</ul>
		<a href="#ModalMemoDay" class="modal-memo__close" onclick="$('#ModalMemoDay').removeClass('on');return false;">닫기</a>
	</div>


</section>
<!-- //section -->
<hr />

<script>
	function option_create(oSelect, sNum, eNum, step, defVal, strEnd){
		var i;

		//일일 근무시간 30분 단위 추가
		if (eNum == 24) {
			oSelect.options[oSelect.length] = new Option("30분", 0.5);
			for (i=sNum; i<=eNum; i+=step) {
				oSelect.options[oSelect.length] = new Option(i+strEnd, i);
				if (String(i) == String(defVal)) oSelect.options[oSelect.length-1].selected = true;
				if (i < 24) oSelect.options[oSelect.length] = new Option(i+strEnd+"30분", i+0.5);
			}
		} else {
			for (i=sNum; i<=eNum; i+=step) {
				oSelect.options[oSelect.length] = new Option(i+strEnd, i);
				if (String(i) == String(defVal)) oSelect.options[oSelect.length-1].selected = true;
			}
		}
	}

	//환산할 급여타입
	function getpayTypeAfter(val,sel) {
		var strSelected = "";

		$("#payTypeAfter option").remove();

		$.each($("#payTypeBefore option"),function(){
			if (val != $(this).val()){
				strSelected = (sel == $(this).val()) ? "selected = 'selected'" : ""
				$("#payTypeAfter").append("<option value='" + $(this).val() + "' " + strSelected + ">" + $(this).text() + "</option>");
			}
		});

		if (val == "1")
		{
			$("#payment").text("시급");
		}
		else if (val == "2")
		{
			$("#payment").text("일급");
		}
		else if (val == "3")
		{
			$("#payment").text("주급");
		}
		else if (val == "4")
		{
			$("#payment").text("월급");
		}
		else if (val == "5")
		{
			$("#payment").text("연봉");
		}

		// 근무시간/근무일수 display 처리
		displayDayTime();

		//예상 시급/일급/주급/월급 텍스트
		displayLayerText();
	}

	// 변환값에 따른 스타일정의
	function displayDayTime() {
		var PTypeB	= $.trim($("#payTypeBefore").val());
		var PTypeA	= $.trim($("#payTypeAfter").val());

		//일일 근무시간
		$("#li_perDay").css("display",((PTypeB != "1" && PTypeA != "1") ? "none":"block"));
		//일주 근무일수
		$("#li_perWeek").css("display",(((PTypeB != PTypeA && PTypeB < "3" && PTypeA < "3") || ((PTypeB != PTypeA && PTypeB > "2" && PTypeA > "2"))) ? "none":"block"));
		//한달 근무일수
		$("#li_perMonth").css("display",(("1" < PTypeB < "4" && "1" < PTypeA < "4" || (PTypeB =="5" && PTypeA =="4" || PTypeB =="4" && PTypeA =="5")) ? "none":"block"));
		//주 연장 근무시간
		$("#li_perWeekOvertime").css("display",((PTypeB =="1" && PTypeA =="3") ? "block":"none"));
		//월 연장 근무시간
		$("#li_perMonthOvertime").css("display",((PTypeB =="1" && PTypeA =="4") ? "block":"none"));

		//숨김일때 옵션초기화
		option_init(  $("#li_perDay").css("display")
					, $("#li_perWeek").css("display")
					, $("#li_perMonth").css("display"));

	}

	// 변환된 값에 따른 result 텍스트 정의
	function displayLayerText() {
		var PTypeB	= $.trim($("#payTypeBefore").val());
		var PTypeA	= $.trim($("#payTypeAfter").val());

		$('[id^="cal"]').hide();
		$("#cal" + $.trim($("#payTypeAfter").val())).show();

		$("#WeekOvertime").css("display",((PTypeB =="1" && PTypeA =="3") ? "block":"none"));
		$("#MonthOvertime").css("display",((PTypeB =="1" && PTypeA =="4") ? "block":"none"));
	}

	//환산하기
	function calculate() {
		var PTypeB		=  $.trim($("#payTypeBefore").val());
		var PTypeA		=  $.trim($("#payTypeAfter").val());
		var PayOrigin	=  $.trim($("#payOrigin").val());
		var perDay		=  $.trim($("#perDay").val());
		var perWeek		=  $.trim($("#perWeek").val());
		var perMonth	=  $.trim($("#perMonth").val());
		var perWeekOT	=  $.trim($("#perWeekOvertime").val());
		var perMonthOT	=  $.trim($("#perMonthOvertime").val());

		var payResult	= 0;
		var payResultHoliday = 0;

		var payResultWeekOvertime = 0;		//주 연장수당
		var payResultMonthOvertime = 0;		//월 연장수당

		if ((PayOrigin == "") || (PayOrigin == "0")) {
			$("#payOriginAlert").html($("#payTypeBefore option:selected").text()+"을 입력해주세요");
			$('#payOrigin').focus();
			return;
		} else {
			$("#payOriginAlert").empty();
		}

		if ($("#perDay").val() == "" && $("#li_perDay").css("display") == "block"){
			$("#perDayAlert").html("일일 근무시간을 선택해주세요.");
			$("#perDay").focus();
			return;
		} else {
			$("#perDayAlert").empty();
		}
		if ($("#perWeek").val() == "" && $("#li_perWeek").css("display") == "block"){
			$("#perWeekAlert").html("일주 근무일수를 선택해주세요.");
			$("#perWeek").focus();
			return;
		} else {
			$("#perWeekAlert").empty();
		}
		if ($("#perMonth").val() == "" && $("#li_perMonth").css("display") == "block"){
			$("#perMonthAlert").html("한달 근무일수를 선택해주세요.");
			$("#perMonth").focus();
			return;
		} else {
			$("#perMonthAlert").empty();
		}

		PayOrigin	= PayOrigin.replace(/,/g, "");
		perDay		= (perDay == "") ? 1 : parseFloat(perDay);
		perWeek		= (perWeek == "") ? 1 : parseInt(perWeek);
		perMonth	= (perMonth == "") ? 1 : parseInt(perMonth);

		switch (PTypeB) {
			case "1" :	//시급
				if (PTypeA == "2" )
				{
					payResult = Math.round(PayOrigin * perDay);
				}
				else if (PTypeA == "3")
				{
					payResult = PayOrigin * perDay * perWeek;

					if (perDay * perWeek >= 15) {
						payResultHoliday = Math.floor((((perDay * perWeek > 40) ? 40 : perDay * perWeek) / 40) * 8 * PayOrigin);
					}
					payResultWeekOvertime = PayOrigin * perWeekOT * 1.5;
				}
				else if (PTypeA == "4")
				{
					payResult = Math.round(PayOrigin * perDay * perWeek * (365/7/12));

					if (perDay * perWeek >= 15) {
						if (perDay * perWeek / 40 >= 1) {
							payResultHoliday =  Math.round((PayOrigin * 8) * (365/7/12));
						} else {
							payResultHoliday =  Math.round(((perDay * perWeek / 40) * PayOrigin * 8) * (365/7/12));
						}
						payResultMonthOvertime = PayOrigin * perMonthOT * 1.5;
					}
				}
				else if (PTypeA == "5")
				{
					payResult =  Math.round(PayOrigin * perDay * perWeek * (365/7));

					if (perDay * perWeek >= 15) {
						if (perDay * perWeek / 40 >= 1) {
							payResultHoliday =  Math.round((PayOrigin * 8) * (365/7));
						} else {
							payResultHoliday =  Math.round(((perDay * perWeek / 40) * PayOrigin * 8) * (365/7));
						}
					}
				}
				break;
			case "2" :	//일급
				if (PTypeA == "1" )
				{
					payResult = Math.round(PayOrigin / perDay);
				}
				else if (PTypeA == "3")
				{
					payResult = Math.round(PayOrigin * perWeek);

					var temptime
					if (perWeek * 8 >= 15) {
						if (perWeek * 8 / 40 >= 40)
						{
							temptime = 40
						}
						else
						{
							temptime = perWeek * 8 / 40;
						}
						payResultHoliday = Math.round(((temptime > 40) ? 40 : temptime) * PayOrigin);
					}
				}
				else if (PTypeA == "4")
				{
					payResult = Math.round(PayOrigin * perWeek * (365/7/12));

					if (perWeek * 8 >= 15) {
						if (8 * perWeek / 40 >= 1) {
							payResultHoliday =  Math.round(PayOrigin * (365/7/12));
						} else {
							payResultHoliday =  Math.round((PayOrigin * 8 * perWeek) / 40 * (365/7/12));
						}
					}
				}
				else if (PTypeA == "5")
				{
					payResult =  Math.round(PayOrigin * perWeek * 12 * (365/7/12));
					if (perWeek * 8 >= 15) {
						if (8 * perWeek / 40 >= 1) {
							payResultHoliday =  Math.round((PayOrigin * 8) * (365/7));
						} else {
							payResultHoliday =  Math.round(((perDay * perWeek / 40) * PayOrigin * 8) * (365/7));
						}
					}
				}
				break;
			case "3" :	//주급
				if (PTypeA == "1" ) //보류
				{
					payResult = Math.floor(PayOrigin / perWeek / perDay);
				}
				else if (PTypeA == "2")
				{
					payResult = Math.round(PayOrigin / perWeek);
				}
				else if (PTypeA == "4")
				{
					payResult = Math.round(PayOrigin * (365/7/12));
				}
				else if (PTypeA == "5")
				{
					payResult = Math.round(PayOrigin * (365/7));
				}
				break;
			case "4" :	//월급
				if (PTypeA == "1" )
				{
					payResult = Math.round((PayOrigin / perWeek / perDay) / (365/7/12));
				}
				else if (PTypeA == "2")
				{
					payResult = Math.round(PayOrigin / perWeek / (365/7/12));
				}
				else if (PTypeA == "3")
				{
					payResult = Math.round(PayOrigin / (365/7/12));
				}
				else if (PTypeA == "5")
				{
					payResult = Math.round(PayOrigin * 12);
				}
				break;
			case "5" :	//연봉
				if (PTypeA == "1" )
				{
					payResult = Math.round(PayOrigin / (365/7) / perWeek / perDay);
				}
				else if (PTypeA == "2")
				{
					payResult = Math.round(PayOrigin / (365/7) / perWeek);
				}
				else if (PTypeA == "3")
				{
					payResult = Math.round((PayOrigin / (365/7) / perWeek) * perWeek);
				}
				else if (PTypeA == "4")
				{
					payResult = Math.round(PayOrigin / 12);
				}
				break;
		}

		$("#how1").hide();
		$("#how2").show();

		$("#payResult").text(numberFormat(tax(payResult)));
		$("#payResultWeekOvertime").text(numberFormat(tax(payResultWeekOvertime)));
		$("#payResultMonthOvertime").text(numberFormat(tax(payResultMonthOvertime)));

		$('.calculator__result-space--holiday').show();
		if($('#holidayPayY').attr('checked')){
			$("#payResultHoliday").text(numberFormat(tax(payResultHoliday)));
			$("#LastPay").text(numberFormat(tax(payResult + payResultHoliday + payResultWeekOvertime + payResultMonthOvertime)));
		}else{
			$("#payResultHoliday").text('-');
			$('.calculator__result-space--holiday').hide();
			$("#LastPay").text(numberFormat(tax(payResult + payResultWeekOvertime + payResultMonthOvertime)));
		}

		$("#pc").text(Math.floor(tax(payResult) / 1100));
		$("#song").text( Math.floor(tax(payResult) / 20000));
		$("#movie").text(Math.floor(tax(payResult) / 9000));
		$("#play").text(Math.floor(tax(payResult) / 37000));
		$('.calculator__setup-submit').text('다시 계산하기');
	}

	// 세금계산
	function tax(val) {
		var taxResult = Math.round(val);

		var tempTax = $("#tax1 option:selected").val();
		taxResult = taxResult * (1 - parseFloat(tempTax)); //세금 계산결과 금액 표시

		var tempProbation = $("input[name=probation]:checked").val();
		if (tempProbation == "1") {
			taxResult = taxResult * 0.9; //수습 계산결과 금액 표시
		}

		return Math.round(taxResult);
	}

	//콤마변환
	function cvtMoney(obj, val){
		val = val.replace(/,/g, "");
		obj.val(numberFormat(val));
	}

	// 3자리 마다 콤마찍기
	function numberFormat(nStr){
		nStr += '';
		x = nStr.split('.');
		x1 = x[0];
		x2 = x.length > 1 ? '.' + x[1] : '';
		var rgx = /(\d+)(\d{3})/;
		while (rgx.test(x1)) x1 = x1.replace(rgx, '$1' + ',' + '$2');
		return x1 + x2;
	}

	//옵션 초기화
	function option_init(displayDay, displayWeek, displayMonth) {
		if(displayDay=="none") $("#perDay option:eq(0)").attr("selected", "selected");;
		if(displayWeek=="none") $("#perWeek option:eq(0)").attr("selected", "selected");
		if(displayMonth=="none")$("#perMonth option:eq(0)").attr("selected", "selected");
		if(displayMonth=="none")$("#perWeekOvertime option:eq(0)").attr("selected", "selected");
		if(displayMonth=="none")$("#perperMonthOvertime option:eq(0)").attr("selected", "selected");
	}

	//전체초기화
	function init(val) {
		var PayOriginVal = $("#intPayOrigin").val().replace(/,/g, "");

		var WorkTime = $.trim($("#intWorkTime").val());
		var WorkWeek = $.trim($("#intWorkWeek").val());

		var str_adid_link = "Y";

		var payCd = parseInt($("#strPaycd").val()) - 1;
		//상세페이지에서 넘어왔을경우 변환전금액처리
		if($("#intPayOrigin").val()) {
			//cvtMoney($("#payOrigin"),$("#intPayOrigin").val());
			//$("#payOrigin").val($("#intPayOrigin").val());
			$("#payOrigin").val(PayOriginVal);
			//I01:시급/I02:일급/I03:주급/I04:월급/I05:연봉
			$("#payTypeBefore option:eq(" + payCd + ")").attr("selected", "selected");
			//시급일경우 월급으로.월급/일급/주급/연봉일경우 시급으로 환산.
			if (payCd == 0 || payCd == 4) {
				getpayTypeAfter($("#payTypeBefore").val(), 4);
			} else {
				getpayTypeAfter($("#payTypeBefore").val(), 1);
			}
		}
		else{
			$("#payOrigin").val("");
			$("#payTypeBefore option:eq(0)").attr("selected", "selected");
			//getpayTypeAfter($("#payTypeBefore").val(), 4);
		}

		$("#tax1").attr("checked",false);
		$("#tax2").attr("checked",false);
		$("#perDay option:eq(0)").attr("selected", "selected");
		$("#perWeek option:eq(0)").attr("selected", "selected");
		$("#perMonth option:eq(0)").attr("selected", "selected");
		$("#perWeekOvertime option:eq(0)").attr("selected", "selected");
		$("#perMonthOvertime option:eq(0)").attr("selected", "selected");

		$("#holidayPayY").attr("checked", true);
		$("#probation_no").attr("checked", true);
		//getpayTypeAfter($("#payTypeBefore").val(), 4);
		$("#pc").text(0);
		$("#song").text(0);
		$("#movie").text(0);
		$("#play").text(0);
		if (val !="recal") {
			if (WorkTime != "") {
				option_create(document.getElementById("perDay"), 1, 24, 1, WorkTime, "시간");
			} else {
				option_create(document.getElementById("perDay"), 1, 24, 1, "", "시간");
			}
			if (WorkWeek != "")
			{
				option_create(document.getElementById("perWeek"), 1, 7, 1, WorkWeek, "");
			} else {
				option_create(document.getElementById("perWeek"), 1, 7, 1, "", "");
			}
			option_create(document.getElementById("perMonth"), 1, 31, 1, "", "일");
			option_create(document.getElementById("perWeekOvertime"), 1, 24, 1, "", "시간");
			option_create(document.getElementById("perMonthOvertime"), 1, 24, 1, "", "시간");
		}
		$("#payResult").text(0);

		$("#payResultHoliday").text(0);
		$("#LastPay").text(0);

		$("#how1").show();
		$("#how2").hide();
		$('.calculator__result-space--holiday').show();
		$('.calculator__setup-submit').text('계산하기');
		selectEmptyCheck();

		if (str_adid_link == "Y")
		{
			calculate();
		}
	}

	//전체초기화
	function init_Clear(val) {
		$("#payOrigin").val("");
		$("#payTypeBefore option:eq(0)").attr("selected", "selected");
		getpayTypeAfter(1, 4);


		$("#tax1").attr("checked",false);
		$("#tax2").attr("checked",false);
		$("#perDay option:eq(0)").attr("selected", "selected");
		$("#perWeek option:eq(0)").attr("selected", "selected");
		$("#perMonth option:eq(0)").attr("selected", "selected");
		$("#perWeekOvertime option:eq(0)").attr("selected", "selected");
		$("#perMonthOvertime option:eq(0)").attr("selected", "selected");
		$("#holidayPayY").attr("checked", true);
		$("#probation_no").attr("checked", true);
		$("#pc").text(0);
		$("#song").text(0);
		$("#movie").text(0);
		$("#play").text(0);

		if (val !="recal") {
			option_create(document.getElementById("perDay"), 1, 24, 1, "", "시간");
			option_create(document.getElementById("perWeek"), 1, 7, 1, "", "");
			option_create(document.getElementById("perMonth"), 1, 31, 1, "", "일");
			option_create(document.getElementById("perWeekOvertime"), 1, 24, 1, "", "시간");
			option_create(document.getElementById("perMonthOvertime"), 1, 24, 1, "", "시간");
		}

		$("#payResult").text(0);

		$("#payResultHoliday").text(0);
		$("#LastPay").text(0);

		$("#how1").show();
		$("#how2").hide();
		$('.calculator__result-space--holiday').show();
		$('.calculator__setup-submit').text('계산하기');
	}

	// 숫자 1부터 입력
	function num_only(obj){
		evt = window.event; // Window의 event를 잡는다.
		if(evt.keyCode == 16){
			alert("shift키는 사용할 수 없습니다.");
		}
		//숫자열 0 ~ 9 : 48 ~ 57, 키패드 0 ~ 9 : 96 ~ 105 ,8 : backspace, 46 : delete -->키코드값을 구분
		if(evt.keyCode >= 48 && evt.keyCode <= 57 || evt.keyCode >= 96 && evt.keyCode <= 105 || evt.keyCode == 8 || evt.keyCode == 46 || evt.keyCode == 16 ){
			if(evt.keyCode == 48 || evt.keyCode == 96)//0을 눌렀을경우
			{
				if(obj.value == "" ) //아무것도 없는상태에서 0을 눌렀을경우
					evt.returnValue=false; //-->입력되지않는다.
				else //다른숫자뒤에오는 0은
					return; //-->입력시킨다.
			}
			else //0이 아닌숫자
				return; //-->입력시킨다.
		}
			else //숫자가 아니면 넣을수 없다.
				evt.returnValue=false;
	}

	function RePayCalculate() {
		if ($("#payOrigin").val() != "") {
			if ($("#LastPay").text() != "" && $("#LastPay").text() != "0") {
				calculate();
			}
		} else {
			init_Clear();
		}
	}

	function reCalculate() {
		if ($("#LastPay").text() != "" && $("#LastPay").text() != "0") {
			calculate();
		}
	}

	$("input[name='probation']").change(function() {
		if ($("#LastPay").text() != "" && $("#LastPay").text() != "0") {
			calculate();
		}
	});

	$("input[name='holidayPay']").change(function() {
		if ($("#LastPay").text() != "" && $("#LastPay").text() != "0") {
			calculate();
		}
	});

	function selectEmptyCheck(){
		$('option:selected').each(function(){
			var target = $(this);
			( target.val() === '' )
			? target.parent().addClass('invalid')
			: target.parent().removeClass('invalid')
		});
	}
	$(document).ready(function(){
		init('');
		$('select').on('change', selectEmptyCheck);
	});

	document.addEventListener('keydown', function(event) {
		if (event.keyCode === 13) {
		event.preventDefault();
		};
	}, true);
</script>
<!-- Footer -->
<script>
(function($) {
	$(window).load(function() {
		loadJS("resources/pay/rsc/js/FooterCLS.js", function() {});
	});
})(jQuery);
</script>

<script>
// 정렬조건에 따른 넓이 조정
var valueOrderby = $("#orderby");
if (valueOrderby.length > 0) {
	if (valueOrderby.val() == "") {
		$("#Contents").addClass("orderby--default");
	}
}


// 페이지 스크롤시 상단 메뉴 고정
if ($("#Header").length > 0 && !$("body").hasClass("biz") && !$("body").hasClass("sub")) {
	var headerHeight = $("#Header").outerHeight();
	var navHeight;
	var ObjHeader

	if ($(".navPrimary").length > 0) {
		navHeight = $(".navPrimary").outerHeight();
	} else if ($(".header-sub").length > 0) {
		navHeight = $(".header-sub").outerHeight();
	}

	if ($("#Header").hasClass("header-main")) {
		var topBanner = 0;
		if ($(".appdown-banner").length > 0) {
			topBanner = $(".appdown-banner").height();
		}
		ObjHeader = headerHeight - navHeight + topBanner;
	} else {
		var headerOffset = $(".header-sub").offset().top;
		ObjHeader = headerOffset;
	}

	function ScrollHeader() {
		var ScrTop = $(this).scrollTop();

		if (ScrTop > ObjHeader) {
			if ($("#Header").hasClass("header-main")) {
				$("body").addClass("scroll-main");
				$("#Section").css("padding-top",navHeight);
			} else {
				$("body").addClass("scroll-sub");
				$("#Section").css("padding-top",navHeight);
			}
		} else {
			if ($("#Header").hasClass("header-main")) {
				$("body").removeClass("scroll-main");
			} else {
				$("body").removeClass("scroll-sub");
			}
			$("#Section").css("padding-top","0");
		}
	}

	$(window).scroll(function(){
		ScrollHeader();
	});
	ScrollHeader();
}


//마이메뉴
$('.myMenuView').click(function(e){
	e.preventDefault();
	$(this).removeClass("on");
	$('.myMenuListWrap').addClass("on");
	$("html,body").addClass("fixed");
});
$('.myMenuList>.close').click(function(e){
	e.preventDefault();
	$('.myMenuView').addClass("on");
	$('.myMenuListWrap').removeClass("on");
	$("html,body").removeClass("fixed");
});

//푸터 copyright
$('.copyRight').click(function(e){
	e.preventDefault();
	$(this).next('address').slideToggle('fast', function(){
		$('html,body').animate({
			scrollTop: $('address').offset().top
		}, 'fast')
	});
	if ($(this).children('.cssIcon-arrow').hasClass('bottom'))
	{
		$(this).children('.cssIcon-arrow').removeClass('bottom');
		$(this).children('.cssIcon-arrow').addClass('top');
	}
	else if ($(this).children('.cssIcon-arrow').hasClass('top'))
	{
		$(this).children('.cssIcon-arrow').removeClass('top');
		$(this).children('.cssIcon-arrow').addClass('bottom');
	}
});

//설정된 마이메뉴 아이콘 노출
if (_lsCtrl.getProperty("MYMENU") != "") $("#mySelectMenu").html(_lsCtrl.getProperty("MYMENU").replace("현위치","알바맵") + "<li class='add'><a href='/aside/MyMenu.asp'><span>추가하기</span></a></li>");
</script>


<script>
	_lsCtrl.setSessionProperty("PAGEURL", "resources/pay/story/calculator.asp");
</script>


<script>
/* google-analytics start */

(function($) {
	$(function() {
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

		ga('create', 'UA-34867276-2', 'auto');
		ga('require', 'displayfeatures');
		ga('require', 'ecommerce', 'ecommerce.js');
	
		//모바일 커뮤니티 부분 url구분 파라미터가 없어서 따로 추가
		if(document.location.pathname.toLowerCase() == '/story/storydetail.asp' && _lsCtrl.getProperty("BTYPECD") != ""){
			var page = document.location.pathname.toLowerCase() + "?btypecd=" + _lsCtrl.getProperty("BTYPECD");
			ga('send', 'pageview', page);
		}else{
			ga('send', 'pageview');
		}
	
		loadJS("resources/pay/rsc/js/GoogleAnalyticsEventHandler.js?202109171300", function() {});
	});
})(jQuery);

/* google-analytics end */
</script>

<!-- Global site tag (gtag.js) - Google Ads: 874558621 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-874558621"></script>
<script>
window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());

gtag('config', 'AW-874558621');
</script>


<!-- Alba Analytics Start -->
<script src="//trk.alba.co.kr/TA.js?202109171300"></script>

<script>
	BA.Collect("VIEW", {
		"servicetype":"MWEB"
	,	"osversion":""
	,	"category1":""
	,	"category2":""
	,	"category3":""
	,	"category4":""
	,	"category5":""
	,	"refertype":""
	,	"refersrc":""
	,	"keyword":""
	,	"refermedium":""
	,	"refercampaign":""
	,	"refercontent":""
	,	"referterm":""
	,	"referidx":""
	,	"adid":""
	,	"ordercd":""
	
	});
</script>

       
      </div>
    </div>
  </div>

  
    <script src="resources/login_main/loginjs/jquery-3.3.1.min.js"></script>
    <script src="resources/login_main/loginjs/popper.min.js"></script>
    <script src="resources/login_main/loginjs/bootstrap.min.js"></script>
    <script src="resources/login_main/loginjs/main.js"></script>
          
    </div>
	<!-- footer -->

	<footer id="footer">
		<!-- <a href="#wrap" class="to-top-btn"><i class="material-icons">&#xE316;</i></a> -->
		<div id="footerInner" class="clearfix">
			<!-- 푸터 상단 -->
			<article id="footerTop">
				<div class="area-box clearfix">
					<!-- 푸터상단 왼쪽 -->
					<div class="footer-left-con">
						<ul class="foot-menu clearfix">
							<li><a href="javascript:;" onclick="javascript:layerLoad('#'); return false;">개인정보 처리방침</a></li>
							<li><a href="javascript:;" onclick="javascript:layerLoad('#'); return false;">이용약관</a></li>
							<li><a href="javascript:;" onclick="javascript:layerLoad('#'); return false;">위치기반서비스 이용약관 </a></li>
						</ul>
					</div>
					<!-- 푸터상단 오른쪽 -->
					<div class="footer-right-con">
						<div class="foot-sns-menu">
							<ul class="clearfix">
								<li><a href="#" target="_blank"><i class="xi-facebook-official"></i></a></li>
								<li><a href="#" target="_blank"><i class="xi-naver-square"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</article>
			<!-- 푸터 하단 -->
			<article id="footerBottom">
				<div class="area-box clearfix">
					<div class="foot-sns-menu m-ver">
						<ul class="clearfix">
							<li><a href="" target="_blank"><i class="xi-facebook-official"></i></a></li>
							<li><a href="" target="_blank"><i class="xi-twitter"></i></a></li>
							<li><a href="" target="_blank"><i class="xi-naver-square"></i></a></li>
						</ul>
					</div>
					<!-- 푸터 하단 왼쪽 -->
					<article class="footer-left-con">
						<div class="footer-copyright">Copyright &copy; 2021 - Company25</div>
					</article>
					
				</div>
			</article>
		</div>
	</footer>
<noscript>
<img height="1" width="1" style="display:none;" alt="" src="#" />
</noscript>
	<!-- //footer -->
</div>
<!-- //code -->

    <script src="<%=request.getContextPath()%>/resources/fullcalenda/vendor/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/fullcalenda/vendor/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/fullcalenda/vendor/js/moment.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/fullcalenda/vendor/js/fullcalendar.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/fullcalenda/vendor/js/ko.js"></script>
    <script src="<%=request.getContextPath()%>/resources/fullcalenda/vendor/js/select2.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/fullcalenda/vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/fullcalenda/js/main.js"></script>
    <script src="<%=request.getContextPath()%>/resources/fullcalenda/js/addEvent.js"></script>
    <script src="<%=request.getContextPath()%>/resources/fullcalenda/js/editEvent.js"></script>
    <script src="<%=request.getContextPath()%>/resources/fullcalenda/js/etcSetting.js"></script>

</body>
</html>
