<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 목록</title>
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
	
<link rel="stylesheet" type="text/css" href="/css/lesson06/registerlist_style.css">
</head>
<body>
<div class="container">
	<jsp:include page="booking_menu.jsp" />
	<section class="text-center">
		<h2 class="mt-2 mb-4"><b>예약 목록 보기</b></h2>
		<table class="table">
			<thead>
				<tr>
					<th>이름</th>
					<th>예약날짜</th>
					<th>숙박일수</th>
					<th>숙박인원</th>
					<th>전화번호</th>
					<th>예약상태</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="register" items="${bookingList}" varStatus="status">
				<tr>
					<td>${register.name}</td>
					<td>
						<fmt:formatDate value="${register.date}" pattern="yyyy년 M월 d일" />
					</td>
					<td>${register.day}</td>
					<td>${register.headcount}</td>
					<td>${register.phoneNumber}</td>
						<c:if test="${register.state eq '대기중'}">
							<td class="text-info">${register.state}</td>
						</c:if>
						<c:if test="${register.state eq '확정'}">
							<td class="text-success">${register.state}</td>
						</c:if>
					<td><button class="btn btn-danger">삭제</button></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</section>
	<footer>
		<jsp:include page="booking_footer.jsp" />
	</footer>
</div>
</body>
</html>