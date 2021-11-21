var eventModal = $('#eventModal');

var modalTitle = $('.modal-title');
var editAllDay = $('#allDay');
var editTitle = $('#title');
var editStart = $('#start_date');
var editEnd = $('#end_date');
var editType = $('#type');
var editColor = $('#color');
var editDesc = $('#description');

var addBtnContainer = $('.modalBtnContainer-addEvent');
var modifyBtnContainer = $('.modalBtnContainer-modifyEvent');


/* ****************
 *  새로운 일정 생성
 * ************** */
var newEvent = function (start, end, eventType) {

    $("#contextMenu").hide(); //메뉴 숨김

    modalTitle.html('새로운 일정');
    editType.val(eventType).prop('selected', true);
    editTitle.val('');
    editStart.val(start);
    editEnd.val(end);
    editDesc.val('');
    
    addBtnContainer.show();
    modifyBtnContainer.hide();
    eventModal.modal('show');

    /******** 임시 RAMDON ID - 실제 DB 연동시 삭제 **********/
    var eventId = 1 + Math.floor(Math.random() * 1000);
    /******** 임시 RAMDON ID - 실제 DB 연동시 삭제 **********/

    //새로운 일정 저장버튼 클릭
    $('#save-event').unbind();
    $('#save-event').on('click', function () {

        var eventData = {
            id: eventId,
            title: editTitle.val(),
            start: $('#start_date'),
            end: editEnd.val(),
            description: editDesc.val(),
            type: editType.val(),
            username: '사나',
            backgroundColor: editColor.val(),
            textColor: '#ffffff',
            allDay: false
        };

        if (eventData.start > eventData.end) {
            alert('끝나는 날짜가 앞설 수 없습니다.');
            return false;
        }

        if (eventData.title === '') {
            alert('일정명은 필수입니다.');
            return false;
        }

        var realEndDay;

        if (editAllDay.is(':checked')) {
            eventData.start = moment(eventData.start).format('YYYY-MM-DD');
            //render시 날짜표기수정
            eventData.end = moment(eventData.end).add(1, 'days').format('YYYY-MM-DD');
            //DB에 넣을때(선택)
            realEndDay = moment(eventData.end).format('YYYY-MM-DD');

            eventData.allDay = true;
        }

        $("#calendar").fullCalendar('renderEvent', eventData, true);
        eventModal.find('input, textarea').val('');
        editAllDay.prop('checked', false);
        eventModal.modal('hide');

        //새로운 일정 저장
        $.ajax({
            type: "post",
            url: "http://localhost:8080/pany/api/addSave",
			headers: {'Content-Type': 'application/json'},
			dataType: "json",
            data: JSON.stringify({ "dno" : $('#dno').val(),
            		"title" : $('#title').val(),
            		"description" : $('#description').val(),
            		"start_date" : $('#start_date').val(),
            		"start_date" : $('#start_date').val(),
            		"end_date" : $('#end_date').val(),
            		"type" : $('#type').val(),
            		"aid" : $('#aid').val(),
            		"color" : $('#color').val(),
            		"allday" : $('#allday').val() }),
            success: function (response) {
                //DB연동시 중복이벤트 방지를 위한
                $('#calendar').fullCalendar('removeEvents');
                $('#calendar').fullCalendar('refetchEvents');
            },
			error: function(response){
				console.log(response);
			}
        });
    });
};