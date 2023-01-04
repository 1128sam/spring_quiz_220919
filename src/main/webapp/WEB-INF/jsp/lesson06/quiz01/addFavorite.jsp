<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Bookmark View</title>
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
	<h1>즐겨찾기 추가하기</h1>
	<div>
		<label for="name">제목</label>
		<input type="text" id="name" name="name" class="form-control w-100" placeholder="사이트 이름을 입력하세요.">
	</div>
	<div class="pt-2 pb-4">
		<label for="address">주소</label>
		<input type="text" id="address" name="address" class="form-control w-100" placeholder="사이트 주소를 입력하세요.">
	</div>
	<div class="pt-2">
		<input type="button" id="insert" class="btn btn-success w-100" value="추가">
	</div>
</div>

	<script>
		$(document).ready(function() {
			$('#insert').on('click', function() {
				let name = $('#name').val().trim();
				if (name.length < 1) {
					alert("사이트 이름을 입력하세요.");
					return;
				}
				let address = $('#address').val().trim();
				if (address.length < 1) {
					alert("사이트 주소를 입력하세요.");
					return;
				} else if (address.startsWith("http") != true) {
					alert("http 또는 https로 시작하는 주소를 입력하세요.")
				}
				
				// AJAX
				$.ajax({
					// Request
					type:"POST"
					, url:"/lesson06/quiz01/add_favorite"
					, data:{"name":name, "address":address}
					
					// Response
					, success:function(data) {
						alert(data);
						location.href = "/lesson06/quiz01/after_add_favorite_view";
					}
					, complete:function(data) {
						alert("완료");
					}
					, error:function(e) {
						alert("error");
					}
				})
			});
		});
	</script>
</body>
</html>