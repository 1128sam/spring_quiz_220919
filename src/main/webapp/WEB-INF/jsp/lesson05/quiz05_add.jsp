<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날씨 입력</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="/css/lesson05/style.css">
</head>
<body>
<div class="container">
	<section class="id d-flex">
		<aside class="col-2">
			<jsp:include page="quiz05_nav.jsp" />
		</aside>
		<div class="col-10 h-100 pt-3">
			<%-- <jsp:include page="quiz05_section.jsp" /> --%>
			<h2>날씨 입력</h2>
			<form method="post" action="/lesson05/quiz05_after_add">
			<div class="d-flex pt-5 pb-4">
				<div class="col-5 d-flex">
					<label for="date" class="m-2">날짜</label>
					<div class="d-flex justify-content-end col-10">
						<input type="text" id="date" name="date" class="form-control" placeholder="yyyy-MM-dd">
						<%-- <fmt:formatDate var="pattern1" value="${date1}" pattern="yyyy-MM-dd" /> --%>
						<fmt:parseDate value="${date}" pattern="yyyy-MM-dd" var="date"/>
						<c:set var="date" value="${date}" />
					</div>
				</div>
				<div class="col-4 d-flex">
					<label for="weather" class="m-2">날씨</label>
					<div class="d-flex justify-content-end ml-2">
						<select name="weather" class="form-control">
							<option value="맑음" selected>맑음
							<option value="구름조금">구름조금
							<option value="흐림">흐림
							<option value="비">비
						</select>
					</div>
				</div>
				<div class="col-3 d-flex">
					<label for="microDust" class="m-2">미세먼지</label>
					<div class="d-flex justify-content-end ml-2">
						<select name="microDust" class="form-control">
							<option value="좋음" selected>좋음
							<option value="보통">보통
							<option value="나쁨">나쁨
							<option value="최악">최악
						</select>
					</div>
				</div>
			</div>
			<div class="d-flex pt-4">
				<div class="d-flex col-5">
					<label for="temperatures" class="m-2">기온</label>
					<div class="d-flex justify-content-end">
						<input type="text" id="temperatures" name="temperatures" class="form-control inputShape">
					</div>
				</div>
				<div class="d-flex col-4">
					<label for="precipitation" class="mt-2 mr-2">강수량</label>
					<div class="d-flex justify-content-end">
						<input type="text" id="precipitation" name="precipitation" class="form-control inputShape">
					</div>
				</div>
				<div class="d-flex col-3">
					<label for="windSpeed" class="mt-2 mr-2">풍속</label>
					<div class="d-flex justify-content-end col-8">
						<input type="text" id="windSpeed" name="windSpeed" class="form-control inputShape">
					</div>
				</div>
			</div>
			<section class="mt-3">
				<div class="d-flex justify-content-end">
					<input type="submit" class="btn btn-success form-control" value="저장">
				</div>
			</section>
			</form>
		</div>
	</section>
		<footer class="d-flex">
			<jsp:include page="quiz05_footer.jsp" />
		</footer>
</div>
</body>
</html>