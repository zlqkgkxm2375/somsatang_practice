<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>COMPANY25 공지사항</title>
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
					<h3 class="content-tit font-gmarket"><b>공지</b>사항</h3>
					<a href="http://localhost:8080/pany/service1" class="sub-page-controls-btn sub-prev-page-btn"  data-aos="fade-left"><span><i class="xi-angle-left"></i></span></a>
					<a href="http://localhost:8080/pany/faq" class="sub-page-controls-btn sub-next-page-btn"  data-aos="fade-right"><span><i class="xi-angle-right"></i></span></a>
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

<article class="bbs-list-con">
	<aside class="bbs-top-list-box clearfix">
		<p class="total-list-con">TOTAL : <b>17</b> </p>
			</aside>
	<div class="bbs-list-tbl">
		<p class="bbs-list-head">
			<span style="width:7%;">번호</span>
			<span style="width:59%;">제목</span>
			<span style="width:12%;">작성자</span>
			<span style="width:12%;">등록일</span>
			<span style="width:10%;">조회수</span>
		</p>
			   <div class="bbs-list-row notice-row">
			<div class="column bbs-block" data-label="no"><span class="notice-tit">공지사항</span></div>
			<div class="column bbs-title">
				<a href="#">
					<div class="bbs-subject-con">
						<strong class="bbs-subject-txt">COMPANY25 어플리케이션 권장 사양 안내</strong>
						<div class="bbs-subject-icons">
						</div>
					</div>
				</a>
			</div>
			<div class="column bbs-inline" data-label="작성자">관리자</div>
			<div class="column bbs-inline" data-label="등록일">2020-04-03</div>
			<div class="column bbs-inline" data-label="조회수">9</div>
	   </div>
			   <div class="bbs-list-row notice-row">
			<div class="column bbs-block" data-label="no"><span class="notice-tit">공지사항</span></div>
			<div class="column bbs-title">
				<a href="#">
					<div class="bbs-subject-con">
						<strong class="bbs-subject-txt">홈페이지를 새롭게 바꾸었습니다.</strong>
						<div class="bbs-subject-icons">
						</div>
					</div>
				</a>
			</div>
			<div class="column bbs-inline" data-label="작성자">관리자</div>
			<div class="column bbs-inline" data-label="등록일">2020-03-31</div>
			<div class="column bbs-inline" data-label="조회수">17</div>
	   </div>
			   <div class="bbs-list-row notice-row">
			<div class="column bbs-block" data-label="no"><span class="notice-tit">공지사항</span></div>
			<div class="column bbs-title">
				<a href="#">
					<div class="bbs-subject-con">
						<strong class="bbs-subject-txt">COMPANY25 근태관리 솔루션 안내</strong>
						<div class="bbs-subject-icons">
																					<span class="bbs-icons" title="파일첨부"><i class="material-icons">&#xE149;</i></span>
						</div>
					</div>
				</a>
			</div>
			<div class="column bbs-inline" data-label="작성자">관리자</div>
			<div class="column bbs-inline" data-label="등록일">2019-04-18</div>
			<div class="column bbs-inline" data-label="조회수">5</div>
	   </div>
			   <div class="bbs-list-row notice-row">
			<div class="column bbs-block" data-label="no"><span class="notice-tit">공지사항</span></div>
			<div class="column bbs-title">
				<a href="#">
					<div class="bbs-subject-con">
						<strong class="bbs-subject-txt">[COMPANY25] 공지사항 사용 안내.</strong>
						<div class="bbs-subject-icons">
						</div>
					</div>
				</a>
			</div>
			<div class="column bbs-inline" data-label="작성자">관리자</div>
			<div class="column bbs-inline" data-label="등록일">2018-07-25</div>
			<div class="column bbs-inline" data-label="조회수">9</div>
	   </div>
			<!-- 공지사항 -->

	<!-- bbs loop start -->
			<div class="bbs-list-row">
			<div class="column bbs-no-data">17</div>
			<div class="column bbs-title">
		<a href="#">
					<div class="bbs-subject-con">
						<strong class="bbs-subject-txt">【공지】회사25신 OPEN!</strong>
						<div class="bbs-subject-icons">
																											</div>
					</div>
				</a>
			</div>
			<div class="column bbs-inline" data-label="작성자">관리자</div>
			<div class="column bbs-inline" data-label="등록일">2021-10-22</div>
			<div class="column bbs-inline" data-label="조회수">2</div>
	   </div>
				<div class="bbs-list-row">
			<div class="column bbs-no-data">16</div>
			<div class="column bbs-title">
															<a href="#">
														<div class="bbs-subject-con">
						<strong class="bbs-subject-txt">COMPANY25 사용하는 방법!</strong>
						<div class="bbs-subject-icons">
																											</div>
					</div>
				</a>
			</div>
			<div class="column bbs-inline" data-label="작성자">관리자</div>
			<div class="column bbs-inline" data-label="등록일">2021-09-29</div>
			<div class="column bbs-inline" data-label="조회수">74</div>
	   </div>
				<div class="bbs-list-row">
			<div class="column bbs-no-data">15</div>
			<div class="column bbs-title">
															<a href="#">
														<div class="bbs-subject-con">
						<strong class="bbs-subject-txt">【2021년 이벤트!】 회사25시에서 준비한</strong>
						<div class="bbs-subject-icons">
																											</div>
					</div>
				</a>
			</div>
			<div class="column bbs-inline" data-label="작성자">관리자</div>
			<div class="column bbs-inline" data-label="등록일">2021-08-30</div>
			<div class="column bbs-inline" data-label="조회수">93</div>
	   </div>
				<div class="bbs-list-row">
			<div class="column bbs-no-data">14</div>
			<div class="column bbs-title">
															<a href="#">
														<div class="bbs-subject-con">
						<strong class="bbs-subject-txt">COMPANY25 근태관리 사용해보세요</strong>
						<div class="bbs-subject-icons">
																					<span class="bbs-icons" title="파일첨부"><i class="material-icons">&#xE149;</i></span>
																				</div>
					</div>
				</a>
			</div>
			<div class="column bbs-inline" data-label="작성자">관리자</div>
			<div class="column bbs-inline" data-label="등록일">2021-07-27</div>
			<div class="column bbs-inline" data-label="조회수">82</div>
	   </div>
				<div class="bbs-list-row">
			<div class="column bbs-no-data">13</div>
			<div class="column bbs-title">
															<a href="#">
														<div class="bbs-subject-con">
						<strong class="bbs-subject-txt">[점검 종료] 공지사항에 적을게 없어요</strong>
						<div class="bbs-subject-icons">
																											</div>
					</div>
				</a>
			</div>
			<div class="column bbs-inline" data-label="작성자">관리자</div>
			<div class="column bbs-inline" data-label="등록일">2021-07-07</div>
			<div class="column bbs-inline" data-label="조회수">62</div>
	   </div>
				<div class="bbs-list-row">
			<div class="column bbs-no-data">12</div>
			<div class="column bbs-title">
															<a href="#">
														<div class="bbs-subject-con">
						<strong class="bbs-subject-txt">[종료] 이벤트가 종료 되었습니다</strong>
						<div class="bbs-subject-icons">
																											</div>
					</div>
				</a>
			</div>
			<div class="column bbs-inline" data-label="작성자">관리자</div>
			<div class="column bbs-inline" data-label="등록일">2021-06-28</div>
			<div class="column bbs-inline" data-label="조회수">20</div>
	   </div>
				<div class="bbs-list-row">
			<div class="column bbs-no-data">11</div>
			<div class="column bbs-title">
															<a href="#">
														<div class="bbs-subject-con">
						<strong class="bbs-subject-txt">글로벌로 나아갈 COMPANY25</strong>
						<div class="bbs-subject-icons">
																											</div>
					</div>
				</a>
			</div>
			<div class="column bbs-inline" data-label="작성자">관리자</div>
			<div class="column bbs-inline" data-label="등록일">2021-06-17</div>
			<div class="column bbs-inline" data-label="조회수">2</div>
	   </div>
				<div class="bbs-list-row">
			<div class="column bbs-no-data">10</div>
			<div class="column bbs-title">
															<a href="#">
														<div class="bbs-subject-con">
						<strong class="bbs-subject-txt">우리 모두 캠페인 참여해봅시다</strong>
						<div class="bbs-subject-icons">
																											</div>
					</div>
				</a>
			</div>
			<div class="column bbs-inline" data-label="작성자">관리자</div>
			<div class="column bbs-inline" data-label="등록일">2021-06-03</div>
			<div class="column bbs-inline" data-label="조회수">29</div>
	   </div>
				<div class="bbs-list-row">
			<div class="column bbs-no-data">9</div>
			<div class="column bbs-title">
															<a href="#">
														<div class="bbs-subject-con">
						<strong class="bbs-subject-txt">열심히 아무말 대잔치하는 중인데 왜이리 많아요</strong>
						<div class="bbs-subject-icons">
																					<span class="bbs-icons" title="파일첨부"><i class="material-icons">&#xE149;</i></span>
																				</div>
					</div>
				</a>
			</div>
			<div class="column bbs-inline" data-label="작성자">관리자</div>
			<div class="column bbs-inline" data-label="등록일">2020-01-21</div>
			<div class="column bbs-inline" data-label="조회수">10</div>
	   </div>
				<div class="bbs-list-row">
			<div class="column bbs-no-data">8</div>
			<div class="column bbs-title">
															<a href="#">
														<div class="bbs-subject-con">
						<strong class="bbs-subject-txt">COMPANY25 서버 점검 안내 및 직원용 PC 마이페이지 URL 변경</strong>
						<div class="bbs-subject-icons">
																											</div>
					</div>
				</a>
			</div>
			<div class="column bbs-inline" data-label="작성자">관리자</div>
			<div class="column bbs-inline" data-label="등록일">2018-10-01</div>
			<div class="column bbs-inline" data-label="조회수">12</div>
	   </div>
			</div>

	<!-- bbs loop end -->	

<!-- 답변형/공지사항형 종료 -->
				  
	<div class="paging">
		 <a href='javascript:;' class='cur'>1</a>  <a href='#'>2</a> 	</div>

			<form name="bbs_search_form" method="get" action="/kr/notice/notice.php">
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




