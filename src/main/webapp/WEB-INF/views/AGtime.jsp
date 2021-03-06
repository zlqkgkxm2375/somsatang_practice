<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ include file="./jsp_header.jsp"%>
<%@ page session="true"%>
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
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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

<%=session.getAttribute("aid")%> 
     <!-- Required meta tags -->
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">

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

<!-- ??????????????? ?????? -->
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
var _nasa={};
if(window.wcs) _nasa["cnv"] = wcs.cnv("1","10"); 
</script> 
<script>
    	function SearchName(){
    		document.SForm.action = "AgoSList";
    		document.SForm.submit();
    	}
    </script>
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
	<a href="#mainContainer">??????????????????</a>
</div>
<!-- //accessibility -->

<!-- code -->
<div id="wrap">
		<!-- header -->

		<header id="header" class="font-gmarket">
			<div class="gnb-overlay-bg"></div>
			<div id="headerInnerWrap">
				<!-- ?????? ?????? -->
				<div id="headerInner" class="clearfix">
					<div class="partner">
						<dl>
							<dt>COMPANY25</dt>
							<dd><a href="/pany/amain?aid=${aid}" >????????????</a></dd>
						</dl>
					</div>
					<h1 class="logo"><a href="/pany/chatting" title="??????"><img src="resources/images/face_ic.svg" alt="" width="30" height="24" class="d-inline-block align-text-top"></a></h1>
					<div class="header-util-box">
						<ul class="up-list clearfix">
							<li><a href="/pany/alogout">????????????</a></li>
						</ul>
					</div>
				</div>
				<iframe src="" style="display:none;" name="ifm"></iframe>
	
				<nav id="gnb" class="each-menu">
					<h2 class="blind">?????????</h2>
					<ul class="clearfix menu6 area">
						<li class="gnb1">
							<a href="#">????????????</a>
						</li>
						<li class="gnb2">
							<a href="/pany/AgoList?aid=${aid}">????????????</a>
						</li>
						<li class="gnb3">
							<a href="/pany/ahomeList?aid=${aid}">????????????</a>
						</li>
						<li class="gnb4">
							<a href="#">????????????</a>
						</li>
						<li class="gnb5">
							<a href="/pany/apay">????????????</a>
						</li>
					</ul>
				</nav>
			</div>
			<!-- GNB Mobile -->
			<button class="nav-open-btn" title="??????????????? ??????">
				<span class="line line1"></span><span class="line line2"></span><span class="line line3"></span>
			</button>
			<div class="gnb-overlay-bg-m"></div>
			<nav id="gnbM" class="gnb-style-full">
				<h2 class="blind">?????????</h2>
				<div class="header-util-menu-box">
					<!-- ???????????? -->
					<ul class="clearfix member-menu-box">
						<li><a href="/pany/elogout">????????????</a></li>
					</ul>
				</div>
				<!-- // -->
				<div class="gnb-navigation-wrapper">
					<div class="gnb-navigation-inner">
						<ul id="navigation">
							<li class="gnb1">
								<a href="/#">????????????</a>
							</li>
							<li class="gnb2">
								<a href="/pany/AgoList?aid=${aid}">????????????</a>
							</li>
							<li class="gnb3">
								<a href="/pany/ahomeList?aid=${aid}">????????????</a>
							</li>
							<li class="gnb4">
								<a href="#">????????????</a>
							</li>
						<li class="gnb5">
							<a href="/pany/apay">????????????</a>
						</li>
						</ul>
					</div>
				</div>
			</nav>

		</header>
	
	<!-- //header -->
	<!-- container -->
	<br><br><br><br>
	<div id="mainContainer">
		<!-- ?????? ??????-->
<br><br><br><br>
  <div class="content">
    <div class="container">
      <div class="row">
         <div class="col-md-6">
           <img src="resources/main_img/main_bg04_new.png" alt="Image" class="img-fluid">
        </div>

  
    <form:form name='AgtimeForm' id='AgtimeForm' method='get'  modelAttribute="searchVO">
	<input type="hidden" name="gno" />
	
	<br><br><br><br>
	<table class="table">
  <thead>
    <tr>
      <th scope="col">??????</th>
      <th scope="col">??????</th>
      <th scope="col">??????</th>
      <th scope="col">??????</th>
    </tr>
  </thead>
  <tbody>
<c:forEach var="result" items="${aglist}" varStatus="status">
    <tr>
 <td>${result.numb}</td>
<td>${result.ename}</td>
<td>${result.edate}</td>
<td>${result.gu}</td>
    </tr>
</c:forEach>
  </tbody>
</table>
${pageHttp}

</form:form>
 <form:form name='SForm' id='SForm' method='get' modelAttribute="Astime">
  	<select class="select-lg" >
  		<option value="sname">??????</option>
  	</select>
  	<input type="text" id="ename" name="ename" />
  	<input type="button" class="btn btn-dark btn-sm" onclick="SearchName()" value="??????"/>
  	
  </form:form>
  

       
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
			<!-- ?????? ?????? -->
			<article id="footerTop">
				<div class="area-box clearfix">
					<!-- ???????????? ?????? -->
					<div class="footer-left-con">
						<ul class="foot-menu clearfix">
							<li><a href="javascript:;" onclick="javascript:layerLoad('#'); return false;">???????????? ????????????</a></li>
							<li><a href="javascript:;" onclick="javascript:layerLoad('#'); return false;">????????????</a></li>
							<li><a href="javascript:;" onclick="javascript:layerLoad('#'); return false;">????????????????????? ???????????? </a></li>
						</ul>
					</div>
					<!-- ???????????? ????????? -->
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
			<!-- ?????? ?????? -->
			<article id="footerBottom">
				<div class="area-box clearfix">
					<div class="foot-sns-menu m-ver">
						<ul class="clearfix">
							<li><a href="" target="_blank"><i class="xi-facebook-official"></i></a></li>
							<li><a href="" target="_blank"><i class="xi-twitter"></i></a></li>
							<li><a href="" target="_blank"><i class="xi-naver-square"></i></a></li>
						</ul>
					</div>
					<!-- ?????? ?????? ?????? -->
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
