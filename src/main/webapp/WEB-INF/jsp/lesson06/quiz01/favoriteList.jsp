<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bookmark List</title>
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
</head>
<body>
<div class="container">
	<h1>즐겨찾기 목록</h1>
	<div class="d-flex justify-content-end"><a href="/lesson06/quiz01/add_favorite_view">즐겨찾기 추가하기</a></div>
	<table class="table">
		<thead>
			<tr>
				<th><b>NO.</b></th>
				<th><b>이름</b></th>
				<th><b>주소</b></th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="bookmark" items="${bookmarkList}" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td>${bookmark.name}</td>
				<td class="d-flex">
						<span class="mr-5"><a href="${bookmark.address}">${bookmark.address}</a></span>
						<div class="d-flex justify-content-end bg-secondary">
							<input type="button" class="btn btn-danger" id="${bookmark.id}" value="삭제">
						</div>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
<script>
	$(document).ready(function() {
		$('').on('click', function() {
			
		});
	});
</script>
</body>
</html>