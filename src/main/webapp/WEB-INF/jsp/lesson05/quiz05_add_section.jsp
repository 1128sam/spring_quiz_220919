<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="d-flex pt-5 pb-4">
	<div class="col-5 d-flex">
		<label for="date" class="m-2">날짜</label>
		<div class="d-flex justify-content-end col-10">
			<input type="text" class="form-control" id="datePicker" name="date1">
			<%-- <fmt:parseDate value="${date}" pattern="yyyy-MM-dd" var="date"/>
						<c:set var="date" value="${date}" /> --%>
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
			<input type="text" id="temperatures" name="temperatures"
				class="form-control" placeholder="°C">
		</div>
	</div>
	<div class="d-flex col-4">
		<label for="precipitation" class="mt-2 mr-2">강수량</label>
		<div class="d-flex justify-content-end">
			<input type="text" id="precipitation" name="precipitation"
				class="form-control" placeholder="mm">
		</div>
	</div>
	<div class="d-flex col-3">
		<label for="windSpeed" class="mt-2 mr-2">풍속</label>
		<div class="d-flex justify-content-end col-8">
			<input type="text" id="windSpeed" name="windSpeed"
				class="form-control" placeholder="km/h">
		</div>
	</div>
</div>
<section class="mt-3">
	<div class="d-flex justify-content-end">
		<input type="submit" class="btn btn-success form-control" value="저장">
	</div>
</section>