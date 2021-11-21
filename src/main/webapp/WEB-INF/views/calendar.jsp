<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
document.addEventListener('DOMContentLoaded', 
		function() { var calendarEl = document.getElementById('calendar'); // new FullCalendar.Calendar(��� DOM��ü, {�Ӽ�:�Ӽ���, �Ӽ�2:�Ӽ���2..}) 
		var calendar = new FullCalendar.Calendar(calendarEl, { 
			headerToolbar: { 
				left: 'prev,next today', 
				center: 'title', 
				right: 'dayGridMonth,timeGridWeek,timeGridDay' }, 
				initialDate: '2021-04-12', // �ʱ� �ε� ��¥. 
				navLinks: true, // can click day/week names to navigate views 
				selectable: true, 
				selectMirror: true, // �̺�Ʈ�� : function(){} : �� ��¥�� ���� �̺�Ʈ�� ���� ó���� ����.. 
				select: function(arg) { 
					console.log(arg); 
					var title = prompt('�Է��� ����:'); // title ���� ������, ȭ�鿡 calendar.addEvent() json�������� ������ �߰� 
					if (title) { 
						calendar.addEvent({ 
							title: title, 
							start: arg.start, 
							end: arg.end, 
							allDay: arg.allDay, 
							backgroundColor:"yellow", 
							textColor:"blue" 
							}) 
							} 
					calendar.unselect() 
					}, 
					eventClick: function(arg) { // �ִ� ���� Ŭ����, 
						console.log("#��ϵ� ���� Ŭ��#"); 
					console.log(arg.event);
					if (confirm('Are you sure you want to delete this event?')) { 
						arg.event.remove() 
						} 
					}, 
						editable: true, 
						dayMaxEvents: true, // allow "more" link when too many events 
						events: function(info, successCallback, failureCallback){ // ajax ó���� �����͸� �ε� ��Ų��. 
							$.ajax({ 
								type:"get", 
								url:"${path}/calendar?method=data", 
										dataType:"json" 
										}); 
						}

						}); 
		calendar.render(); 
						});

</script>
</head>
<body>
<div id='calendar'></div>
</body>
</html>