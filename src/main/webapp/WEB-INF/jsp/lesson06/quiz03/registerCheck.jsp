<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- datepicker 라이브러리 위에 있어야 한다.  -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        

        <!-- datepicker 라이브러리 -->
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        
        <!-- bootstrap CDN link -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <!-- jquery slim 제거-->
        <!--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="/css/lesson06/registercheck_style.css">
</head>
<body>
<div id="wrap" class="container">
            <jsp:include page="booking_menu.jsp" />
            <section class="banner bg-info">
                <img src="/img/lesson06/test06_banner1.jpg" alt="banner" width="100%" id="bannerImage">
            </section>
            <section class="reserve bg-primary d-flex">
                <section class="real-time-reserved col-4 d-flex justify-content-center align-items-center">
                    <div class="display-4 text-white">실시간<br>예약하기</div>
                </section>
                <section class="confirm col-4">
                        <span class="reserve-confirm mr-3">예약 확인</span>

                    <!-- 아이디 비밀번호(비회원용)-->
                    <div id="nonMemberInputBox">
                        <div class="d-flex justify-content-end mr-4">
                            <label class="subject" for="name">이름 : </label>
                            <input type="text" class="form-control input-form col-8" name="name">
                        </div>
                        <div class="d-flex mt-2 justify-content-end mr-4">
                            <label class="subject" for="phoneNumber">전화번호 : </label>
                            <input type="text" class="form-control input-form col-8" name="phoneNumber">
                        </div>

                        <div class="text-right mt-2 mr-4">
							<button type="button" id="checkBtn"	class="btn btn-success submit-btn">조회 하기</button>
                        </div>
                    </div>
                </section>
                <section class="inquiry col-4 d-flex justify-content-center align-items-center">
                    <div class="text-white">
                        <h4 class="font-weight-bold">예약문의:</h4>
                        <h1>010-<br>0000-1111</h1>
                    </div>
                </section>
            </section>
            <footer class="d-flex align-items-center pl-3">
                <jsp:include page="booking_footer.jsp" />
            </footer>
        </div>
        
        <script>
        $(document).ready(function() {
        	$('#checkBtn').on('click', function() {
        		let name = $('input[name=name]').val().trim();
        		let phoneNumber = $('input[name=phoneNumber]').val().trim();
        		if (name.length < 1) {
					alert("예약자 이름을 입력하세요.");
					return;
				}
				if (phoneNumber.length < 1) {
					alert("전화번호를 선택하세요.");
					return;
				} else if (phoneNumber.startsWith('010-') != true) {
					alert("010으로 시작하는 전화번호를 입력하세요.");
					return;
				}
				
				$.ajax({
					// Request
					type:"POST"
					, url:"/lesson06/quiz03/check_register"
					, data:{"name":name, "phoneNumber":phoneNumber}

					// Response
					, success:function(data) {
						if (data.code == 1) {
							let message = "이름: " + data.booking.name + "\n날짜 : " + data.booking.date.slice(0,10) + "\n일수 : " + data.booking.day + "\n인원 : " + data.booking.headcount + "\n상태 : " + data.booking.state;
							alert(message);
							// alert(data.booking.name);
							location.href = "/lesson06/quiz03/check_register_view";
						} else {
							alert("조회 내역이 없습니다.");
						}
					}
					, error:function(e) {
						alert("error" + e);
					}
				});
        	});
        	
        	var bannerArr = ['/img/lesson06/test06_banner1.jpg', '/img/lesson06/test06_banner2.jpg', '/img/lesson06/test06_banner3.jpg', '/img/lesson06/test06_banner4.jpg'];
            var currentIndex = 0;
            setInterval(function() {
                $('#bannerImage').attr('src', bannerArr[currentIndex]);
                currentIndex++;

                if (currentIndex > bannerArr.length) {
                    currentIndex = 0;
                }
            }, 15000);
        });
        </script>
</body>
</html>