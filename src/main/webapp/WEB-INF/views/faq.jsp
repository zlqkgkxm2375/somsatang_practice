<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>COMPANY25 FAQ</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="https://COMPANY25.co.kr/js/vendor/jquery.easing.1.3.js"></script>


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

<script type="text/javascript" src="<%=request.getContextPath()%>/resources/main_js/nav.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/main_js/main.js"></script>
</head>

<body>
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
							<dd><a href="/pany" >근태관리</a></dd>
						</dl>
					</div>
					<h1 class="logo"><a href="/pany/chatting" title="채팅"><img src="resources/images/face_ic.svg" alt="" width="30" height="24" class="d-inline-block align-text-top"></a></h1>
					<div class="header-util-box">
						<ul class="up-list clearfix">
							<li><a href="/pany/alogin">관리자 로그인</a></li>
							<li><a href="/pany/elogin">임직원 로그인</a></li>
						</ul>
					</div>
				</div>
				<iframe src="" style="display:none;" name="ifm"></iframe>
	
				<nav id="gnb" class="each-menu">
					<h2 class="blind">주메뉴</h2>
					<ul class="clearfix menu6 area">
						<li class="gnb1">
							<a href="http://localhost:8080/pany/service1">주요기능</a>
						</li>
						<li class="gnb4">
							<a href="http://localhost:8080/pany/notice">공지사항</a>
						</li>
						<li class="gnb5">
							<a href="http://localhost:8080/pany/faq">FAQ</a>
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
						<li><a href="/pany/alogin">관리자 로그인</a></li>
						<li><a href="/pany/elogin">임직원 로그인</a></li>
					</ul>
				</div>
				<!-- // -->
				<div class="gnb-navigation-wrapper">
					<div class="gnb-navigation-inner">
						<ul id="navigation">
							<li class="gnb1">
								<a href="http://localhost:8080/pany/service1">주요기능</a>
							</li>
							<li>
								<a href="http://localhost:8080/pany/notice">공지사항</a>
							</li>
							<li>
								<a href="http://localhost:8080/pany/faq">FAQ</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
	
	<!-- //header -->
	<div id="container">
		<!-- middleArea -->
		<div id="middleArea">
			<!-- ****************** 상단정보 ********************** -->
			<!-- 상단정보 (센터정렬) -->
			<aside id="contentInfoCon" class="content-info-style01" data-aos="fade-down">
				<div class="area">
					<h3 class="content-tit font-gmarket"><b>FAQ</b></h3>
					<a href="http://localhost:8080/pany/notice" class="sub-page-controls-btn sub-prev-page-btn"  data-aos="fade-left"><span><i class="xi-angle-left"></i></span></a>
					<a href="http://localhost:8080/pany/service1" class="sub-page-controls-btn sub-next-page-btn"  data-aos="fade-right"><span><i class="xi-angle-right"></i></span></a>
				</div>
			</aside>
			<!-- content -->
			<section id="content" class="area" data-aos="fade-down" data-aos-delay="100" >				<!-- 컨텐츠 내용 -->
				<div class="sub-page notice-page">
					<script type="text/javascript">
$(document).ready(function  () {
	$(".faq-list-con .faq-item > dt").click(function  () {
		var $faqCon = $(this).siblings();
		
		if ($faqCon.css("display") == "block") {
			$(this).siblings().slideUp();
			$(".faq-item").removeClass("open");
			
		}else {
			$(".faq-item > dd:visible").slideUp();
			$(".faq-item").removeClass("open");
			$(this).parent("dl").addClass("open");
			$faqCon.slideDown();	
		}
	});
});
</script>
<!-----------------------------------------------------  게시판 리스트 시작 ------------------------------------------------------------------------------------------------------------------------------------->

<!-- FAQ형 시작 -->
	<article class="bbs-faq-list">
	<aside class="bbs-top-list-box clearfix">
		<p class="total-list-con">TOTAL : <b>36</b> </p>
			</aside>
	<article class="faq-list-con" style="display:;">
			<dl class="faq-item">
			<dt>
				<div class="faq-subject">
					<span class="question-icon">Q</span>
										<strong class="faq-title">COMPANY25이 다른 근태관리 시스템에 비해 어떤 점이 더 좋은가요?</strong>
					<span class="arrow"><i class="material-icons">&#xE313;</i></span>
				</div>
			</dt>
			<dd>
				<span class="answer-icon">A</span>
				<div class="answer-con">
					<div class="editor">
						<span style="font-size: 10pt;">수많은 회사가 저마다의 환경에서 근태를 관리하고 인사 관리를 합니다.</span><br>
						<span style="font-size: 10pt;">솔루션을 통한 근태관리에 있어서의 핵심은 수많은 경험과 노하우를 통한 유연한 기능 적용 입니다.</span><br>
						<span style="font-size: 10pt;">모든 업체가&nbsp;저마다 최상의 서비스를 제공하긴 하지만&nbsp;잡캔의 노하우를 능가할만한 솔루션은 없다고 자부합니다.</span><br>
						<span style="font-size: 10pt;">회사25시 선택에 후회가 없으시도록 최선을 다하겠습니다. 감사합니다.</span><br><br><br></div>
					</div>
			</dd>
		</dl>
				<dl class="faq-item">
			<dt>
				<div class="faq-subject">
					<span class="question-icon">Q</span>
					<strong class="faq-title">과거 데이터를 수정하거나 할 수 있나요?</strong>
					<span class="arrow"><i class="material-icons">&#xE313;</i></span>
				</div>
			</dt>
			<dd>
				<span class="answer-icon">A</span>
				<div class="answer-con">
										<div class="editor">
						더이상 수정할 필요가 없는 데이터에 대해서는 마감 기능을 통해 확정할 수 있습니다.<br>마감된 데이터는 수정 신청 등을 통해 변경할 수 없습니다.<br>					</div>
									</div>
			</dd>
		</dl>
				<dl class="faq-item">
			<dt>
				<div class="faq-subject">
					<span class="question-icon">Q</span>
										<strong class="faq-title">근태 프로그램을 어떻게 활용하면 될까요?</strong>
					<span class="arrow"><i class="material-icons">&#xE313;</i></span>
				</div>
			</dt>
			<dd>
				<span class="answer-icon">A</span>
				<div class="answer-con">
					<div class="editor">
						<p class="MsoNormal">자신의 직원들의 출퇴근, 재택근무, 연차등을 관리할 수 있습니다<span lang="EN-US">.<o:p></o:p></span><br>
					</div>
				</div>
			</dd>
		</dl>
				<dl class="faq-item">
			<dt>
				<div class="faq-subject">
					<span class="question-icon">Q</span>
						<strong class="faq-title">근무별 활용 가능할까요?</strong>
					<span class="arrow"><i class="material-icons">&#xE313;</i></span>
				</div>
			</dt>
			<dd>
				<span class="answer-icon">A</span>
				<div class="answer-con">
										<div class="editor">
						<span style="font-size: 10pt;">네 근무별 활용 가능합니다</span><span lang="EN-US" style="font-size: 10pt;"> PC</span><span style="font-size: 10pt;">에서 뿐만 아니라
모바일도 기획예정되어있습니다</span><span lang="EN-US" style="font-size: 10pt;">.</span><br>

<p class="MsoNormal">단<span lang="EN-US">, </span>PC에서 활용 범위가 높을 수 있습니다<span lang="EN-US">.<o:p></o:p></span><br><br><br>					</div>
									</div>
			</dd>
		</dl>
				<dl class="faq-item">
			<dt>
				<div class="faq-subject">
					<span class="question-icon">Q</span>
										<strong class="faq-title">남은 휴가를 어디서 확인할 수 있나요?</strong>
					<span class="arrow"><i class="material-icons">&#xE313;</i></span>
				</div>
			</dt>
			<dd>
				<span class="answer-icon">A</span>
				<div class="answer-con">
										<div class="editor">
						<p class="MsoNormal">나의 소중한 휴가는<span lang="EN-US"> PC</span>에서 언제든지 확인 가능합니다<span lang="EN-US">.<o:p></o:p></span><br>

<p class="MsoNormal">이제 인사팀과 휴가일수가 맞지 않아 곤란한 상황은 벌어지지 않습니다<span lang="EN-US">.</span><br><p class="MsoNormal"><span lang="EN-US">휴가일정에서 확인 하실 수 있습니다.</span><br><br>					</div>
									</div>
			</dd>
		</dl>
				<dl class="faq-item">
			<dt>
				<div class="faq-subject">
					<span class="question-icon">Q</span>
										<strong class="faq-title">출퇴근체크는 언제 가능하도록 설정이 되나요?</strong>
					<span class="arrow"><i class="material-icons">&#xE313;</i></span>
				</div>
			</dt>
			<dd>
				<span class="answer-icon">A</span>
				<div class="answer-con">
										<div class="editor">
						<span lang="EN-US" style="font-size:10.0pt;mso-bidi-font-size:
11.0pt;line-height:107%;font-family:&quot;맑은 고딕&quot;;mso-ascii-theme-font:minor-latin;
mso-fareast-theme-font:minor-fareast;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:KO;mso-bidi-language:AR-SA">COMPANY25</span>

<span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;맑은 고딕&quot;;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:minor-fareast;
mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
KO;mso-bidi-language:AR-SA">에 접속 가능한<span lang="EN-US"> IP </span>주소를 등록하여<span lang="EN-US">, </span>특정 장소에서만&nbsp;</span><br>


<span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;맑은 고딕&quot;;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:minor-fareast;
mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
KO;mso-bidi-language:AR-SA">마이페이지에 접속이 가능하도록 설정하는 것이 가능합니다<span lang="EN-US">.</span></span><br>

<span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;맑은 고딕&quot;;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:minor-fareast;
mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
KO;mso-bidi-language:AR-SA"><span lang="EN-US"><br></span></span><br>


<span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;맑은 고딕&quot;;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:minor-fareast;
mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
KO;mso-bidi-language:AR-SA"><span lang="EN-US">예를 들어 사내에서 사용하시는 IP주소를 등록해 주시면</span></span><br>


<span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;맑은 고딕&quot;;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:minor-fareast;
mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
KO;mso-bidi-language:AR-SA"><span lang="EN-US">모바일 폰의 경우도 해당 IP가 설정된 Wi-Fi 내에서만 사용이 가능해 집니다.</span></span><br>


<span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;맑은 고딕&quot;;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:minor-fareast;
mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
KO;mso-bidi-language:AR-SA"><span lang="EN-US"><br></span></span><br>


<span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;맑은 고딕&quot;;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:minor-fareast;
mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
KO;mso-bidi-language:AR-SA"><span lang="EN-US">자세한 사항은 언제든지 문의 주십시오. 감사합니다.</span></span><br>
					</div>
							</div>
			</dd>
		</dl>
				<dl class="faq-item">
			<dt>
				<div class="faq-subject">
					<span class="question-icon">Q</span>
										<strong class="faq-title">클라우드 서비스인데, 근태 데이터는 보안상 안전한가요?</strong>
					<span class="arrow"><i class="material-icons">&#xE313;</i></span>
				</div>
			</dt>
			<dd>
				<span class="answer-icon">A</span>
				<div class="answer-con">
										<div class="editor">
						COMPANY25은 고객사의 소중한 정보를 안전하게 관리하고자 최선을 다하고 있습니다.<br>업계 유일 정보보안관리체계에 대한 국제 인증 ISO27001:2013 ISMS를 취득 했으며,<br>세계적인 클라우드 서비스인 Amazon Web Service를 이용하여 최상의 보안 환경으로<br>서비스를 제공해 드리고 있습니다. 안심 하셔도 됩니다.<br><br><br>자세한 내용은 아래 링크의 보안페이지를 참고해 주십시오.<br>#&nbsp;<br>					</div>
									</div>
			</dd>
		</dl>
				<dl class="faq-item">
			<dt>
				<div class="faq-subject">
					<span class="question-icon">Q</span>
										<strong class="faq-title">조기 출근 시간에 대해서도 한도를 설정할 수 있나요?</strong>
					<span class="arrow"><i class="material-icons">&#xE313;</i></span>
				</div>
			</dt>
			<dd>
				<span class="answer-icon">A</span>
				<div class="answer-con">
										<div class="editor">
						네 가능합니다.<br>통상의 출근시간보다 일찍 출근하여 업무를 하는 조기출근 신청의 경우<br>신청가능한 한도를 설정하여 근무 신청 및 근로시간을 효율적으로 관리하실 수 있습니다.<br>					</div>
									</div>
			</dd>
		</dl>
				<dl class="faq-item">
			<dt>
				<div class="faq-subject">
					<span class="question-icon">Q</span>
										<strong class="faq-title">휴가나 연장근무 등을 신청할 때 결재라인은 어떻게 지정하나요?</strong>
					<span class="arrow"><i class="material-icons">&#xE313;</i></span>
				</div>
			</dt>
			<dd>
				<span class="answer-icon">A</span>
				<div class="answer-con">
										<div class="editor">
						직원이 속한 메인 부서 및 서브 부서 별로 근태에 대한 승인자 설정을 할 수 있습니다.<br>최대 5명까지 4가지 방식의 결재 옵션을 통해 관리자 설정이 가능하며<br>신청 시에는 별도로 지정하지 않고 간편하게 신청할 수 있습니다.<br><br><br>자세한 승인설정 및 신청 방법은 저희 COMPANY25으로 문의 주시면<br>언제든지 원하시는 내용대로 설정 가능하도록 안내 드리겠습니다.<br>감사합니다.<br>					</div>
									</div>
			</dd>
		</dl>
				<dl class="faq-item">
			<dt>
				<div class="faq-subject">
					<span class="question-icon">Q</span>
										<strong class="faq-title">연차의 사용 가능 기간을 지정할 수 있나요? 미리 등록도 가능한지요?</strong>
					<span class="arrow"><i class="material-icons">&#xE313;</i></span>
				</div>
			</dt>
			<dd>
				<span class="answer-icon">A</span>
				<div class="answer-con">
										<div class="editor">
						<span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;
line-height:107%;font-family:&quot;맑은 고딕&quot;;mso-ascii-theme-font:minor-latin;
mso-fareast-theme-font:minor-fareast;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:KO;mso-bidi-language:AR-SA">네<span lang="EN-US">. </span>가능합니다<span lang="EN-US">.&nbsp;</span></span><br><span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;
line-height:107%;font-family:&quot;맑은 고딕&quot;;mso-ascii-theme-font:minor-latin;
mso-fareast-theme-font:minor-fareast;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:KO;mso-bidi-language:AR-SA">휴가 부여 시 사용할
수 있는 기간을 지정할 수 있습니다<span lang="EN-US">.</span></span><br><span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;
line-height:107%;font-family:&quot;맑은 고딕&quot;;mso-ascii-theme-font:minor-latin;
mso-fareast-theme-font:minor-fareast;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:KO;mso-bidi-language:AR-SA"><span lang="EN-US">사용 기간은 시작일과 종료일로 되어 있어서 사전에 미리 등록 해 두시면</span></span><br><span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;
line-height:107%;font-family:&quot;맑은 고딕&quot;;mso-ascii-theme-font:minor-latin;
mso-fareast-theme-font:minor-fareast;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:KO;mso-bidi-language:AR-SA"><span lang="EN-US">사용 개시일 시점에서 해당 휴가의 사용이 가능합니다.</span></span><br><span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;
line-height:107%;font-family:&quot;맑은 고딕&quot;;mso-ascii-theme-font:minor-latin;
mso-fareast-theme-font:minor-fareast;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:KO;mso-bidi-language:AR-SA"><span lang="EN-US"><br></span></span><br><span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;
line-height:107%;font-family:&quot;맑은 고딕&quot;;mso-ascii-theme-font:minor-latin;
mso-fareast-theme-font:minor-fareast;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:KO;mso-bidi-language:AR-SA"><span lang="EN-US">차감의 경우는 먼저 등록된 휴가부터 차감이 되어 미리 등록해 두셔도 문제 없습니다.</span></span><br><span style="font-size:10.0pt;mso-bidi-font-size:11.0pt;
line-height:107%;font-family:&quot;맑은 고딕&quot;;mso-ascii-theme-font:minor-latin;
mso-fareast-theme-font:minor-fareast;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:KO;mso-bidi-language:AR-SA"><span lang="EN-US">파일을 이용해 일괄 등록하시는 방법도 가능합니다.</span></span><br>					</div>
									</div>
			</dd>
		</dl>
			</article>
		
</article>

					  
	<div class="paging">
		 <a href='javascript:;' class='cur'>1</a>  <a href='/kr/faq/faq.php?search_item=&search_order=&startPage=10'>2</a>  <a href='/kr/faq/faq.php?search_item=&search_order=&startPage=20'>3</a>  <a href='/kr/faq/faq.php?search_item=&search_order=&startPage=30'>4</a> 	</div>

			<form name="bbs_search_form" method="get" action="#">
			<div class="board-search-box">
				<select name="search_item">
					<option value="subject" >제목</option>
					<option value="content" >내용</option>
					<!-- <option value="name" >작성자</option> -->
				</select>
				<input placeholder="검색어를 입력해주세요." type="search" name="search_order" class="search-word" value="">
				<button type="submit" class="bbs-search-btn" title="검색"><i class="material-icons">&#xE8B6;</i></button>
			</div>
		</form>
	
</article>				</div>
				<!-- //컨텐츠 내용 -->
			
			</section>
			<!-- //content -->
		</div>
		<!-- //middleArea -->
	</div>
	<!-- //container -->
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
</body>
</html>

