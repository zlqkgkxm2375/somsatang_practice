<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./jsp_header.jsp"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>COMPANY25 </title>
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
<script src="https://jobcan.co.kr/js/vendor/jquery.easing.1.3.js"></script>
<script>window.jQuery || document.write('<script src="'+<%=request.getContextPath()%>+'/resources/main_js/vendor/jquery-1.8.3.min.js"><\/script>')</script>

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
	<!-- container -->
	<div id="mainContainer">
		<!-- 메인 시작-->
		<section id="mainContent">
			<!-- 메인 배너 1-->
			<article id="mainInfoCon">
				<span class="main-bg02" data-aos="fade-left" data-aos-delay="800"><img src="resources/main_img/main_bg02.png" alt="" /></span>
				<div class="area">
					<p class="txt01 font-gmarket" data-aos="fade-right">COMPANY25</p>
					<p class="txt02 font-gmarket" data-aos="fade-right" data-aos-delay="200"><b class="fc-b">근태관리시스템</b> <b class="fc-y">솔루션</b></p>
					<p class="txt03" data-aos="fade-right" data-aos-delay="400" style="margin-top:0px;color:#333;font-size:247%;line-height:100%;"><b>관리자와 직원들의 편리한 근태관리 솔루션</b></p>
					<p class="txt03" data-aos="fade-right" data-aos-delay="400">* 솜사탕조 김민석 나재학 주다은</p>
					<div class="btn-group font-gmarket clearfix" data-aos="fade-down" data-aos-delay="600" style="margin-top:20px;">
						<a href="/pany/alogin" target="_blank" onMouseDown="_trk_flashEnvView('_TRK_PI=ODR','_TRK_OA=1');"><span>관리자 로그인</span></a>
						<a href="/pany/elogin" target="_blank"><span>임직원 로그인</span></a>
					</div>
				</div>
			</article>

			<!-- 메인컨텐츠 2 -->
			<article id="mainSolutionCon">
				<div class="area">
					<h3 class="main-tit font-gmarket" data-aos="fade-down" >근태관리 솔루션 도입의 고민거리</h3>
					<div class="main-solution-wrapper" data-aos="fade-down" data-aos-delay="200">
						<ul class="main-solution-list">
							<li class="item clearfix">
								<div class="question">
									<span class="icon"><img src="resources/main_img/icon_user.png" alt="유저 아이콘" /></span>
									<p class="name">김민석</p>
									<div class="talk">
										직원들의 회원관리가 <b>힘들다?!</b>&nbsp;&nbsp;도입후에도 유지관리가 <b>힘들다?!</b>
									</div>
								</div>
								<div class="answer">
									<div class="talk">
										<b>COMPANY25</b>는 <b>편리한 서비스</b>를 제공 중인 근태관리 솔루션 입니다.
									</div>
								</div>
							</li>
							<li class="item clearfix">
								<div class="question">
									<span class="icon"><img src="resources/main_img/icon_user.png" alt="유저 아이콘" /></span>
									<p class="name">나재학</p>
									<div class="talk">
										유연 근무제<b> 관리가 필요하다?!</b> 직원마다  <b>근무 시간이 다르다?!</b>
									</div>
								</div>
								<div class="answer">
									<div class="talk">
										<b>Company25</b>은 직원별 근태 관리할 수 있으며, 근무 스케줄을 관리하실 수 있습니다.
									</div>
								</div>
							</li>
							<li class="item clearfix">
								<div class="question">
									<span class="icon"><img src="resources/main_img/icon_user.png" alt="유저 아이콘" /></span>
									<p class="name">주다은</p>
									<div class="talk">
										재택 근무제<b> 관리가 필요하다?!</b> 직원마다  <b>재택 근무시간이 다르다?!</b>
									</div>
								</div>
								<div class="answer">
									<div class="talk">
										<b>Company25</b>은 재택근무하는 직원들의 스케쥴을 관리할 수 있습니다.
									</div>
								</div>
							</li>
							<li class="item clearfix">
								<div class="question">
									<span class="icon"><img src="resources/main_img/icon_user.png" alt="유저 아이콘" /></span>
									<p class="name">정직원</p>
									<div class="talk">
										휴가 시 <b>어떻게 해야되는 것인가?!</b> 직원들의 휴가 일정은 <b>어떻게 되는 것인가?!</b>
									</div>
								</div>
								<div class="answer">
									<div class="talk">
										<b>Company25</b>의 시스템에서 직원들의 휴가일정 관리를 할 수 있습니다.
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</article>
			<!-- ****************** 메인컨텐츠 3 ********************** -->
			<article id="mainManageCon">
				<span class="main-bg03" data-aos="fade-right" data-aos-delay="1000"><img src="resources/main_img/main_bg03.png" alt="" /></span>
				<div class="area">
					<h3 class="main-tit font-gmarket" data-aos="fade-left">COMPANY25 기능들</h3>
					<ul class="menu-group clearfix">
						<li data-aos="fade-down" data-aos-delay="800">
							<img src="resources/main_img/icon_manage02.png" alt="스케줄 아이콘"><br><br><span>직원정보 관리</span>
		
						</li>
						<li data-aos="fade-down" data-aos-delay="600">
								<img src="resources/main_img/icon_manage02.png" alt="달력 아이콘"><br><br><span>근무 관리</span>
							
						</li>
						<li data-aos="fade-down" data-aos-delay="400">
								<img src="resources/main_img/icon_manage01.png" alt="데이터 아이콘"><br><br><span>휴가 관리</span>
							
						</li>
					</ul>
				</div>
			</article>

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












