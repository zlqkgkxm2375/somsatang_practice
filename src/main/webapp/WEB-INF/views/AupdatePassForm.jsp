<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./jsp_header.jsp"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>패스워드 변경 </title>
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
<SCRIPT> 
    function Check_Pre() 
    {
        if (AfindPassForm.aid.value.length < 1 ){ 
            alert ("아이디를 입력하세요.");
            AfindPassForm.aid.value="";
            AfindPassForm.aid.focus(); 
            return false;
        }
        if (AfindPassForm.aemail.value.length < 1){ 
            alert ("email 주소를 정확히 입력하세요.");
            AfindPassForm.aemail.value="";
            AfindPassForm.aemail.focus();
            return false;
        }
        return true;
    }
function Check_Pass() 
{
	if (AupdatePassForm.apwd.value.length < 1 ){ 
	    alert ("패스워드를 입력하세요.");
	    AupdatePassForm.apwd.focus();
	    return false;
	}
	if (AupdatePassForm.apwd2.value.length < 1){ 
		alert ("패스워드 확인을 입력하세요.");
		AupdatePassForm.apwd.focus();
	    return false;
	}
	if (AupdatePassForm.apwd.value != AupdatePassForm.apwd2.value) {
		alert("패스워드가 일치하지 않습니다.");
		AupdatePassForm.apwd.value="";
		AupdatePassForm.apwd2.value="";
		AupdatePassForm.apwd2.focus();
		return false;
	}
	return true;
}
    </SCRIPT>    
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
<br><br><br><br>
       <div class="content">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <img src="resources/main_img/main_bg04.png" alt="Image" class="img-fluid">
        </div>
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-8">
              <div class="mb-4">
              <h3>Admin Login</h3>
              <p class="mb-4">패스워드 변경</p>
            </div>           
            <form:form action="/pany/aupdatePass" name="AupdatePassForm" method="post" modelAttribute="admin" onsubmit='return Check_Pre()'>
              <div class="form-group first">
                <label for="username">User ID</label>
                <form:input type="text" class="form-control" name="aid" id="aid" value="${adminId}" path="aid"/>
                <span class="fieldError"><form:errors path="aid" /></span>

              </div>
              <div class="form-group last mb-4">
                <label for="apwd">새비밀번호</label>
                <input type="password" class="form-control" name="apwd" id="apwd"  /> 
                <span class="fieldError"><form:errors path="apwd" /></span>
                
              </div>

			  <div class="form-group last mb-4">
                <label for="apwd2">새비밀번호확인</label>
                <input type="password" class="form-control" name="apwd2" id="apwd2" value="" showPassword="true"/> 
                <span class="fieldError"><form:errors path="apwd" /></span>
                
              </div>
            <input type='submit' value='찾기' class="btn btn-primary">
            <input type='button' onClick='Cancel_btn()' class="btn btn-secondary" value='취소'>
            </form:form>
            </div>
          </div>
          
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
</body>
</html>