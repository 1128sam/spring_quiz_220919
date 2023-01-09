<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
	
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
<!-- jquery -->

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
	
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
<link rel="stylesheet" type="text/css" href="/css/lesson06/registerlist_style.css">
</head>
<body>
	<div class="container">
		<jsp:include page="booking_menu.jsp" />
		<h2 class="text-center pt-3 pb-3">예약하기</h2>
		<div class="d-flex justify-content-center">
				<div class="reservation-box">
					<div class="my-2 font-weight-bold">이름</div>
					<input type="text" class="form-control" name="name" id="name">
	
					<div class="my-2 font-weight-bold">예약날짜</div>
					<input type="text" class="form-control" name="date" id="date">
	
					<div class="my-2 font-weight-bold">숙박일수</div>
					<input type="text" class="form-control" name="day" id="day">
	
					<div class="my-2 font-weight-bold">숙박인원</div>
					<input type="text" class="form-control" name="headcount" id="headcount">
	
					<div class="my-2 font-weight-bold">전화번호</div>
					<input type="text" class="form-control" name="phoneNumber" id="phoneNumber">
	
					<button type="button" id="reservationBtn"
						class="btn btn-warning w-100 mt-3">예약하기</button>
				</div>
			</div>
			<footer><jsp:include page="booking_footer.jsp" /></footer>
	</div>
	
	<script>
		$(document).ready(function() {
			$('#date').datepicker({
				changeMonth : true, 
				changeYear : true, 
				dateFormat : "yy-mm-dd" 
			});
			
			$('#reservationBtn').on('click', function() {
				let name = $('#name').val().trim();
				if (name.length < 1) {
					alert("예약자 이름을 입력하세요.");
					return;
				}
				let date = $('#date').val().trim();
				if (date.length < 1) {
					alert("날짜를 선택하세요.");
					return;
				}
				let day = $('#day').val().trim();
				if (day.length < 1) {
					alert("숙박 일수를 입력하세요.");
					return;
				}
				let headcount = $('#headcount').val().trim();
				if (headcount.length < 1) {
					alert("숙박인원를 입력하세요.");
					return;
				}
				let phoneNumber = $('#phoneNumber').val().trim();
				if (phoneNumber.length < 1) {
					alert("전화번호를 입력하세요.");
					return;
				} else if (phoneNumber.startsWith('010-') != true) {
					alert("010으로 시작하는 전화번호를 입력하세요.");
					return;
				} else if (phoneNumber.length < 12) {
					alert("정확한 전화번호를 입력하세요.");
					return;
				};
			
			// AJAX
			$.ajax({
				// Request
				type:"POST"
				, url:"/lesson06/quiz03/add_register"
				, data:{"name":name, "date":date, "day":day, "headcount":headcount, "phoneNumber":phoneNumber}
				
				// Response
				, success:function(data) {
					alert(data);
					location.href = "/lesson06/quiz03/register_list_view";
				}
				, error:function(e) {
					alert("error" + e);
				}
			});
		});
	});
	</script>
</body>
</html>