<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>COMPANY25 주요기능</title>
<link rel="stylesheet" href="https://jobcan.co.kr/css/default.css">
<link rel="stylesheet" href="https://jobcan.co.kr/css/layout.css">
<link rel="stylesheet" href="https://jobcan.co.kr/css/content.css">
<link rel="stylesheet" href="https://jobcan.co.kr/css/main.css" />
<link rel="stylesheet" href="https://jobcan.co.kr/kr/css/language.css" /><!-- 해당언어에서만 사용하는 css -->
<link rel="stylesheet" href="https://jobcan.co.kr/css/layout_responsive.css">
<link rel="stylesheet" href="https://jobcan.co.kr/css/content_responsive.css">
<link rel="stylesheet" href="https://jobcan.co.kr/css/main_responsive.css" />
<!-- Board Skin -->
<link rel="stylesheet" href="https://jobcan.co.kr/css/common/cm_bbs_common.css">
<link rel="stylesheet" href="https://jobcan.co.kr/css/common/cm_board.css">
<link rel="stylesheet" href="https://jobcan.co.kr/css/common/cm_gallery.css" />
<link rel="stylesheet" href="https://jobcan.co.kr/css/common/cm_faq.css" />
<link rel="stylesheet" href="https://jobcan.co.kr/css/common/cm_online.css" />
<!-- // -->

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="https://jobcan.co.kr/js/vendor/jquery.easing.1.3.js"></script>
<script>window.jQuery || document.write('<script src="https://jobcan.co.kr/js/vendor/jquery-1.8.3.min.js"><\/script>')</script>

<script src="https://jobcan.co.kr/js/common.js"></script>
<script src="https://jobcan.co.kr/js/layer_popup.js"></script>

<!-- Icon Font -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"  rel="stylesheet"><!-- google -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"><!-- naver -->

<!-- Slick Plugin -->
<link rel="stylesheet" type="text/css" href="https://jobcan.co.kr/css/plugin/slick.css">
<script src="https://jobcan.co.kr/js/plugin/slick.js"></script>

<!-- CustomScrollbar Plugin -->
<link rel="stylesheet" href="https://jobcan.co.kr/css/plugin/jquery.mCustomScrollbar.css">
<script src="https://jobcan.co.kr/js/plugin/jquery.mCustomScrollbar.concat.min.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-104405843-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'UA-104405843-1');
</script>

<!-- Aos Plugin -->
<link rel="stylesheet" href="https://jobcan.co.kr/css/plugin/aos.css" />
<script src="https://jobcan.co.kr/js/plugin/aos.js"></script>
<script>
	$(window).load(function() {
		/* AOS Plugin */
		aosInit ();
	});
</script>


<!-- Global site tag (gtag.js) - Google Ads: 842139747 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-842139747"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'AW-842139747');
</script>


<!-- End Facebook Pixel Code -->

<!-- Event snippet for 자료요청 conversion page
In your html page, add the snippet and call gtag_report_conversion when someone clicks on the chosen link or button. -->
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


<script>
function request_document_button_click(){
	fbq('track', 'InitiateCheckout', {contents: "paper checkout"});
	gtag_report_conversion();
}

</script>

<!-- 전환페이지 설정 -->
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
var _nasa={};
if(window.wcs) _nasa["cnv"] = wcs.cnv("1","10"); // 전환유형, 전환가치 설정해야함. 설치매뉴얼 참고
</script> 


<script type="text/javascript" src="//wcs.naver.net/wcslog.js"> </script>
<script type="text/javascript">
if (!wcs_add) var wcs_add={};
wcs_add["wa"] = " s_49ce41e25ab8 ";
if (!_nasa) var _nasa={};
if(window.wcs){
wcs.inflow();
wcs_do(_nasa);
}
</script> 
<style>
/* #content{max-width:none;}
@media all and (max-width:1220px){
	#content{margin:0 -15px;}
} */
</style>
<script>
/* js */
$(document).ready(function  () {
/* *********************** 리스트의 높이값 맞추기 ************************ */
	var $autoList = $(".auto-height-list-con .auto-height-item");	// ul > li
	var $autoListInner = $autoList.children(".inner-box");					// ul > li 안에 border가 표시되는 영역
	var heightDiv = ".inner";				// 높이값을 결정하는 영역		
	var listNum = $autoList.length;			
	var resetWidth = 480; // 높이값을 해제하는 구간
		autoHeight();
		$(window).resize(function  () {
			autoHeight();
		}); 

	function  autoHeight(){
		maxHeight = 0;
		for (var i=0; i<listNum; i++) {
			var curHeight = $autoList.eq(i).find(heightDiv).innerHeight();
			if ( curHeight > maxHeight ) {
				maxHeight = curHeight;
			}
		}
		$autoListInner.height(maxHeight);
		
		if ( $(window).innerWidth() < resetWidth + 1 ){
		  $autoListInner.css('height','auto');
		}
	}
});
</script>
<script>
	$(function  () {
		dep1 = 1
		dep2 = 01;
		dep3 = "";
		
	})
</script>
<script type="text/javascript" src="https://jobcan.co.kr/js/nav.js"></script>
<script type="text/javascript" src="https://jobcan.co.kr/js/sub.js"></script>
</head>

<body>

<!-- accessibility -->
<div class="cm-accessibility">
	<a href="#container">본문바로가기</a>
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
						<li><a href="/pany/alogin" target="_blank">관리자 로그인</a></li>
						<li><a href="/pany/elogin" target="_blank">임직원 로그인</a></li>
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
					<li><a href="/pany/alogin" target="_blank">관리자 로그인</a></li>
					<li><a href="/pany/elogin" target="_blank">임직원 로그인</a></li>
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
	<script type="text/javascript">var _TRK_LID = "105835";var _L_TD = "ssl.logger.co.kr";var _TRK_CDMN = ".jobcan.co.kr";</script>
	<script type="text/javascript">var _CDN_DOMAIN = location.protocol == "https:" ? "https://fs.bizspring.net" : "http://fs.bizspring.net";
	(function (b, s) { var f = b.getElementsByTagName(s)[0], j = b.createElement(s); j.async = true; j.src = '//fs.bizspring.net/fs4/bstrk.1.js'; f.parentNode.insertBefore(j, f); })(document, 'script');
	</script>
	<noscript><img alt="Logger Script" width="1" height="1" src="http://ssl.logger.co.kr/tracker.1.tsp?u=105835&amp;js=N"/></noscript>
	<!-- //header -->
	<div id="container">
		<!-- middleArea -->
		<div id="middleArea">
			<!-- 상단정보 -->
			<aside id="contentInfoCon" class="content-info-style01" data-aos="fade-down">
				<div class="area">
					<h3 class="content-tit font-gmarket"><b>주요</b> 기능</h3>
					<a href="http://localhost:8080/pany/faq" class="sub-page-controls-btn sub-prev-page-btn"  data-aos="fade-left"><span><i class="xi-angle-left"></i></span></a>
					<a href="http://localhost:8080/pany/notice" class="sub-page-controls-btn sub-next-page-btn"  data-aos="fade-right"><span><i class="xi-angle-right"></i></span></a>
				</div>
			</aside>
			<!-- content -->
<section id="content" class="area" data-aos="fade-down" data-aos-delay="100" >   
            <div class="sub-page technical-page">
               <div class="technical-con01">
                  <ul class="auto-height-list-con clearfix">
                     <li class="auto-height-item" data-aos="fade-down" data-aos-delay="100">
                        <div class="inner-box">
                           <div class="inner">
                              <div class="img-con"><img src="https://jobcan.co.kr/images/content/manage_img01.jpg" alt=""></div>
                              <div class="txt-con">
                                 <p class="txt01">직원들의 편리한 출퇴근체크로 </p>
                                 <p class="txt02">근태 관리를<br/>손쉽게 가능합니다!</p>
                              </div>   
                           </div>
                        </div>
                     </li>
                     <li class="auto-height-item"  data-aos="fade-down" data-aos-delay="200">
                        <div class="inner-box">
                           <div class="inner">
                              <div class="img-con"><img src="https://jobcan.co.kr/images/content/manage_img02.jpg" alt=""></div>
                              <div class="txt-con">
                                 <p class="txt01">재택근무 기능으로<br/>집에서도 언제든 OK</p>
                                 <p class="txt02">실시간으로 반영, 실시간 확인으로 <br/>간편하게</p>
                              </div>   
                           </div>
                        </div>
                     </li>
                     <li class="auto-height-item"  data-aos="fade-down" data-aos-delay="300">
                        <div class="inner-box">
                           <div class="inner">
                              <div class="img-con"><img src="https://jobcan.co.kr/images/content/manage_img03.jpg" alt=""></div>
                              <div class="txt-con">
                                 <p class="txt01">휴가 계획, <br/>직원들의 연차 관리</p>
                                 <p class="txt02">휴가 등록을 통한<br/>캘린더 일정으로 확인 가능합니다 </p>
                              </div>   
                           </div>
                        </div>
                     </li>
                  </ul>
               </div>
         
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
					<!-- 푸터상단 오른쪽 -->
					<div class="footer-right-con">
						<div class="foot-sns-menu">
							<ul class="clearfix">
								<li><a href="https://www.facebook.com/jobcankr/" target="_blank"><i class="xi-facebook-official"></i></a></li>
								<li><a href="https://blog.naver.com/jobcan" target="_blank"><i class="xi-naver-square"></i></a></li>
								<!-- <li><a href="" target="_blank"><i class="xi-twitter"></i></a></li> -->

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





<script type="text/javascript">
_linkedin_partner_id = "3008828";
window._linkedin_data_partner_ids = window._linkedin_data_partner_ids || [];
window._linkedin_data_partner_ids.push(_linkedin_partner_id);
</script><script type="text/javascript">
(function(){var s = document.getElementsByTagName("script")[0];
var b = document.createElement("script");
b.type = "text/javascript";b.async = true;
b.src = "https://snap.licdn.com/li.lms-analytics/insight.min.js";
s.parentNode.insertBefore(b, s);})();
</script>
<noscript>
<img height="1" width="1" style="display:none;" alt="" src="https://px.ads.linkedin.com/collect/?pid=3008828&fmt=gif" />
</noscript>
	<!-- //footer -->
</div>
<!-- //code -->
</body>
</html>
