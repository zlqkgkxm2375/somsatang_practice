<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ include file="./jsp_header.jsp"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>COMPANY25 </title>

<meta name="viewport" content="width=device-width, initial-scale=1">

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
<link rel="stylesheet" href="resources/main_css/main.css" />
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
							<a href="/pany/aedit?adminId=${aid}">회원관리</a>
						</li>
						<li class="gnb2">
							<a href="/pany/AgoList?aid=${aid}">근태관리</a>
						</li>
						<li class="gnb3">
							<a href="/pany/ahomeList?aid=${aid}">재택근무</a>
						</li>
						<li class="gnb4">
							<a href="/pany/avacationList">휴가일정</a>
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
							<a href="/pany/aedit?adminId=${aid}">회원관리</a>
						</li>
						<li class="gnb2">
							<a href="AgoList?aid=${aid}">근태관리</a>
						</li>
						<li class="gnb3">
							<a href="/pany/ahomeList?aid=${aid}">재택근무</a>
						</li>
						<li class="gnb4">
							<a href="/pany/avacationList">휴가일정</a>
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
          <div class="container">

        <!-- 일자 클릭시 메뉴오픈 -->
        <div id="contextMenu" class="dropdown clearfix">
            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu"
                style="display:block;position:static;margin-bottom:5px;">
                <li><a tabindex="-1" href="#">카테고리1</a></li>
                <li><a tabindex="-1" href="#">카테고리2</a></li>
                <li><a tabindex="-1" href="#">카테고리3</a></li>
                <li><a tabindex="-1" href="#">카테고리4</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
            </ul>
        </div>

        <div id="wrapper">
            <div id="loading"></div>
            <div id="calendar"></div>
        </div>

 <form:form modelAttribute="calen" Name='AcalenForm' Method='post'>
<input type="hidden" name="dno" value="${calen.dno}" />
        <!-- 일정 추가 MODAL -->
        <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title"></h4>
                        
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-allDay">하루종일</label>
                                <input class='allDayNewEvent' id="allDay" name="allDay" type="checkbox"></label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-title">일정명</label>
                                <input class="inputModal" type="text" name="title" id="title"
                                    required="required" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-start">시작</label>
                                <input class="inputModal" type="text" name="start_date" id="edit-start" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-end">끝</label>
                                <input class="inputModal" type="text" name="end_date" id="edit-end" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type">구분</label>
                                <select class="inputModal" type="text" name="type" id="edit-type">
                                    <option value="카테고리1">카테고리1</option>
                                    <option value="카테고리2">카테고리2</option>
                                    <option value="카테고리3">카테고리3</option>
                                    <option value="카테고리4">카테고리4</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-color">색상</label>
                                <select class="inputModal" name="color" id="edit-color">
                                    <option value="#D25565" style="color:#D25565;">빨간색</option>
                                    <option value="#9775fa" style="color:#9775fa;">보라색</option>
                                    <option value="#ffa94d" style="color:#ffa94d;">주황색</option>
                                    <option value="#74c0fc" style="color:#74c0fc;">파란색</option>
                                    <option value="#f06595" style="color:#f06595;">핑크색</option>
                                    <option value="#63e6be" style="color:#63e6be;">연두색</option>
                                    <option value="#a9e34b" style="color:#a9e34b;">초록색</option>
                                    <option value="#4d638c" style="color:#4d638c;">남색</option>
                                    <option value="#495057" style="color:#495057;">검정색</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-desc">설명</label>
                                <textarea rows="4" cols="50" class="inputModal" name="description"
                                    id="edit-desc"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modalBtnContainer-addEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary" id="save-event">저장</button>
                        <a href="#" onclick="fnCmdSave()">저장</a>
          
                    </div>
                    <div class="modal-footer modalBtnContainer-modifyEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        <button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
                        <button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

</form:form>
      
    </div>
       
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
