<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
     <!-- Required meta tags -->
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Bootstrap CSS -->
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link href='resources/fullcalendar/core/main.css' rel='stylesheet' />
<link href='resources/fullcalendar/daygrid/main.css' rel='stylesheet' />
<link href='resources/fullcalendar/timegrid/main.min.css' rel='stylesheet' />
<script src='resources/fullcalendar/core/main.js'></script>
<script src='resources/fullcalendar/daygrid/main.js'></script>
<script src="resources/fullcalendar/interaction/main.min.js"></script>
<script src="resources/fullcalendar/timegrid/main.min.js"></script>
<script src='resources/fullcalendar/core/locales/ko.js'></script>
</head>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

</style>


   <!-- 캘린더 한글 설정 -->
   <script src="js/calendar/calmain.js"></script>
   <style>
    
     html, body {
       margin: 0;
       padding: 0;
       font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
       font-size: 14px;
     }
    
     #external-events {
       position: fixed;
       z-index: 2;
       top: 300px;
       left: 140px;
       width: 150px;
       padding: 0 10px;
       border: 1px solid #ccc;
       background: #eee;
     }
    
     .demo-topbar + #external-events { /* will get stripped out */
       top: 60px;
     }
    
     #external-events .fc-event {
       margin: 1em 0;
       cursor: move;
     }
    
     #calendar-container {
       position: relative;
       z-index: 1;
       margin-left: 200px;
     }
    
     #calendar {
       max-width: 900px;
       margin: 20px auto;
     }
    
   </style>

        
     <!-- navbar-->
     <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #FFA7A7;">
        <div class="container-fluid">
        <img src="resources/images/face_ic.svg" alt="" width="30" height="24" class="d-inline-block align-text-top">
          <a class="navbar-brand" href="#" onclick="window.location.reload(true);">Company25</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">회원관리</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="">근태관리</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  재택근무관리
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                  <li><a class="dropdown-item" href="/pany/ahomework1">재택근무 일정</a></li>
                  <li><a class="dropdown-item" href="#">재택근무 생성</a></li>
                </ul>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  휴가관리
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                  <li><a class="dropdown-item" href="#">휴가 일정</a></li>
                  <li><a class="dropdown-item" href="#">휴가 생성</a></li>
                </ul>
              </li>
            </ul>
            
          </div>
          <form class="d-flex">
            
           <a href="/pany/alogout" class="btn btn-sm btn-outline-secondary">LOGOUT</a>  
         </form>
        </div>
      </nav>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Company25 Main</title>
</head>
<body>
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
                                <input class='allDayNewEvent' id="edit-allDay" type="checkbox"></label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-title">일정명</label>
                                <input class="inputModal" type="text" name="edit-title" id="edit-title"
                                    required="required" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-start">시작</label>
                                <input class="inputModal" type="text" name="edit-start" id="edit-start" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-end">끝</label>
                                <input class="inputModal" type="text" name="edit-end" id="edit-end" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type">구분</label>
                                <select class="inputModal" type="text" name="edit-type" id="edit-type">
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
                                <textarea rows="4" cols="50" class="inputModal" name="edit-desc"
                                    id="edit-desc"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modalBtnContainer-addEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary" id="save-event" onclick="fullcalendar_init">저장</button>
                    <input type="button" id="btnAJax" value="AJax" onclick="goDataList();">
                    </div>
                    <div class="modal-footer modalBtnContainer-modifyEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        <button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
                        <button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

<div id="external-events">
       <p>
         <strong>Draggable Events</strong>
       </p>
       <div class="fc-event">My Event 1</div>
       <div class="fc-event">My Event 2</div>
       <div class="fc-event">My Event 3</div>
       <div class="fc-event">My Event 4</div>
       <div class="fc-event">My Event 5</div>
       <p>
         <input type="checkbox" id="drop-remove">
         <label for="drop-remove">remove after drop</label>
       </p>
     </div>
   <div id='calendar'></div>
   <input type="button" id="btnAddTest" value="추가">

    
    <!-- bootom-->
    <div>
        <p class="text-center">Copyright ⓒ 2021 Cotton Candy. All Rights Reserved.</p>
    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
    -->

    <script src="resources/fullcalenda/vendor/js/jquery.min.js"></script>
    <script src="resources/fullcalenda/vendor/js/bootstrap.min.js"></script>
    <script src="resources/fullcalenda/vendor/js/moment.min.js"></script>
    <script src="resources/fullcalenda/vendor/js/fullcalendar.min.js"></script>
    <script src="resources/fullcalenda/vendor/js/ko.js"></script>
    <script src="resources/fullcalenda/vendor/js/select2.min.js"></script>
    <script src="resources/fullcalenda/vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="resources/fullcalenda/js/main.js"></script>
    <script src="resources/fullcalenda/js/addEvent.js"></script>
    <script src="resources/fullcalenda/js/editEvent.js"></script>
    <script src="resources/fullcalenda/js/etcSetting.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
  </body>
</html>