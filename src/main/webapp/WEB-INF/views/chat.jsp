<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ include file="./jsp_header.jsp"%>
<% %>
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
<script type="text/javascript">
	var ws;
	window.onload = function(){
		getRoom();
		createRoom();
	}

	function getRoom(){
		commonAjax('/pany/getRoom', "", 'post', function(result){
			createChatingRoom(result);
		});
	}
	
	function createRoom(){
		$("#createRoom").click(function(){
			var msg = {	roomName : $('#roomName').val()	};

			commonAjax('/pany/createRoom', msg, 'post', function(result){
				createChatingRoom(result);
			});

			$("#roomName").val("");
		});
	}

	function goRoom(number, name){
		location.href="/pany/moveChating?roomName="+name+"&"+"roomNumber="+number;
	}

	function createChatingRoom(res){
		if(res != null){
			var tag = "<tr><th class='num'>순서</th><th class='room'>방 이름</th><th class='go'></th></tr>";
			res.forEach(function(d, idx){
				var rn = d.roomName.trim();
				var roomNumber = d.roomNumber;
				tag += "<tr>"+
							"<td class='num'>"+(idx+1)+"</td>"+
							"<td class='room'>"+ rn +"</td>"+
							"<td class='go'><button type='button' onclick='goRoom(\""+roomNumber+"\", \""+rn+"\")'>참여</button></td>" +
						"</tr>";	
			});
			$("#roomList").empty().append(tag);
		}
	}

	function commonAjax(url, parameter, type, calbak, contentType){
		$.ajax({
			url: url,
			data: parameter,
			type: type,
			contentType : contentType!=null?contentType:'application/x-www-form-urlencoded; charset=UTF-8',
			success: function (res) {
				calbak(res);
			},
			error : function(err){
				console.log('error');
				calbak(err);
			}
		});
	}
</script>

<style>
   *{
         margin:0;
         padding:0;
      }
      .container{
         width: 500px;
         margin: 0 auto;
         padding: 25px
      }
      .container h1{
         text-align: left;
         padding: 5px 5px 5px 15px;
         color: #004AA1;
         border-left: 3px solid #004AA1;
         margin-bottom: 20px;
      }
      .roomContainer{
         background-color: #ECEDF3;
         width: 500px;
         height: 500px;
         overflow: auto;
      }
      .roomList{
         border: none;
      }
      .roomList th{
         border: 1px solid #004AA1;
         background-color: #004AA1;
         color: #fff;
      }
      .roomList td{
         border: 1px solid #004AA1;
         background-color: #FFF;
         text-align: left;
         color: #004AA1;
      }
      .roomList .num{
         width: 75px;
         text-align: center;
      }
      .roomList .room{
         width: 350px;
      }
      .roomList .go{
         width: 71px;
         text-align: center;
      }
      button{
         background-color: #004AA1;
         font-size: 14px;
         color: #FFF;
         border: 1px solid #000;
         border-radius: 5px;
         padding: 3px;
         margin: 3px;
      }
      .inputTable{
      width: 500px;
      }
      .inputTable th{
         padding: 5px;
         background-color: #ECEDF3;
         border: 3px solid #fff;
      }
      .inputTable input{
         width: 330px;
         height: 25px;
         border: 3px solid #fff;
      }
      
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

*{
         margin:0;
         padding:0;
      }
      .container{
         width: 500px;
         margin: 0 auto;
         padding: 25px
   
      }
      .container h1{
         text-align: left;
         padding: 5px 5px 5px 15px;
         color: #004AA1;
         border-left: 3px solid #004AA1;
         margin-bottom: 20px;
      }
      .chating{
         background-color:#ECEDF3;
         width: 500px;
         height: 500px;
         overflow: auto;
      }
      .chating .me{
         color: #a7c3da;
         text-align: right;
         font-size: 30px;
         font-weight: bold;
      }
      .chating .others{
         color: #a7c3da;
         text-align: left;
         font-size: 30px;
         font-weight: bold;
      }
      input{
         width: 330px;
         height: 25px;
      }
      #yourMsg{
         display: none;
      }
      .inputTable{
      width: 500px;
      }
         button{
         background-color:#004AA1;
         font-size: 14px;
         color: #FFF;
         border: 1px solid #000;
         border-radius: 5px;
         padding: 3px;
         margin: 3px;
      }
      
</style>
<script type="text/javascript">
	var ws;

	function wsOpen(){
		//웹소켓 전송시 현재 방의 번호를 넘겨서 보낸다.
		ws = new WebSocket("ws://" + location.host + "/pany/chating/"+$("#roomNumber").val());
		wsEvt();
	}
		
	function wsEvt() {
		ws.onopen = function(data){
			//소켓이 열리면 동작
		}
		
		ws.onmessage = function(data) {
			//메시지를 받으면 동작
			var msg = data.data;
			if(msg != null && msg.trim() != ''){
				var d = JSON.parse(msg);
				if(d.type == "getId"){
					var si = d.sessionId != null ? d.sessionId : "";
					if(si != ''){
						$("#sessionId").val(si); 
					}
				}else if(d.type == "message"){
					if(d.sessionId == $("#sessionId").val()){
						$("#chating").append("<p class='me'>나 :" + d.msg + "</p>");	
					}else{
						$("#chating").append("<p class='others'>" + d.userName + " :" + d.msg + "</p>");
					}
						
				}else{
					console.warn("unknown type!")
				}
			}
		}

		document.addEventListener("keypress", function(e){
			if(e.keyCode == 13){ //enter press
				send();
			}
		});
	}

	function chatName(){
		var userName = $("#userName").val();
		if(userName == null || userName.trim() == ""){
			alert("사용자 이름을 입력해주세요.");
			$("#userName").focus();
		}else{
			wsOpen();
			$("#yourName").hide();
			$("#yourMsg").show();
		}
	}

	function send() {
		var option ={
			type: "message",
			roomNumber: $("#roomNumber").val(),
			sessionId : $("#sessionId").val(),
			userName : $("#userName").val(),
			msg : $("#chatting").val()
		}
		ws.send(JSON.stringify(option))
		$('#chatting').val("");
	}
</script>
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
          	
      	<div id="container" class="container">
		<h1>${roomName}의 채팅방</h1>
		<input type="hidden" id="sessionId" value="">
		<input type="hidden" id="roomNumber" value="${roomNumber}">
		
		<div id="chating" class="chating">
		</div>
		
		<div id="yourName">
			<table class="inputTable">
				<tr>
					<th>사용자명</th>
					<th><input type="text" name="userName" id="userName"></th>
					<th><button onclick="chatName()" id="startBtn">이름 등록</button></th>
				</tr>
			</table>
		</div>
		<div id="yourMsg">
			<table class="inputTable">
				<tr>
					<th>메시지</th>
					<th><input id="chatting" placeholder="보내실 메시지를 입력하세요."></th>
					<th><button onclick="send()" id="sendBtn">보내기</button></th>
				</tr>
			</table>
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
