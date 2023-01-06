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
				<td>${bookmark.id}</td>
				<td>${bookmark.name}</td>
				<td>${bookmark.address}</td>
				<td>
					<!-- <input type="hidden" value=""> -->
					<%-- 1) name속성 + value속성 삭제 --%>
					<%-- <button type="button" name="delBtn" class="del-btn btn btn-danger" value="${bookmark.id}">삭제</button> --%>
					
				<%-- <input type="button" class="btn btn-danger" id="${bookmark.id}" value="삭제">
					<c:set var="last" value="${bookmark.id}" /> --%>
					
					<!-- 2) data를 이용해 tag에 임시저장하기 -->
					<button type="button" class="del-btn btn btn-danger" data-bookmark-id="${bookmark.id}">삭제</button> <!-- data-뒤에 대문자가 안됨!!(_도) -->
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
<script>
	$(document).ready(function() {
			// 1) name속성 + value속성 삭제
			/* $('button[name=delBtn]').on('click', function(e) {
				// let id = $(this).val();
				// let id = $(this).attr('value');
				let id = e.target.value; // target = 선택된
				alert(id);
			}); */
			
			// 2) data를 이용해 tag에 임시저장하기
			// 태그 : data-favorite-id	data- 뒤에 우리가 이름을 정한다.(대문자 절대 안됨)
			// script: $(this).data('favorite-id');
			$('.del-btn').on('click', function() {
				let id = $(this).data('bookmark-id');
			});
			
			$.ajax({
				type:"delete"
				, url:"/lesson06/quiz02/delete_favorite"
				, data: {"id":id}

				, success:function(data) {
					if (data.code == 1) {
						// 성공
						document.location.reload(true); // 새로고침, 안되면 앞에 window.이나 document.을 붙이면 될 듯
					} else if (data.code == 500) {
						alert(data.error_message);
					}
				}
				, error:function(e) {
					alert("error " + e);
				}
			});
	});
</script>
</body>
</html>