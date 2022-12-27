<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매자 추가 화면</title>
</head>
<body>
<div class="container">
	<h1>판매자 추가</h1>
	<div class="form-group">
		<label for="nickname">닉네임</label>
		<input type="text" id="nickname" name="nickname" class="form-control col-3" placeholder="닉네임">
	</div>
	<div class="form-group">
		<label for="profileUrl">프로필 사진 url</label>
		<input type="text" id="profileUrl" name="profileUrl" class="form-control col-8" placeholder="프로필 사진 url">
	</div>
	<div class="form-group">
		<label for="temp">온도</label>
		<input type="text" id="temp" name="temp" class="form-control col-3" placeholder="매너 온도">
	</div>
	<input type="submit" class="btn btn-primary col-1" value="추가">
</div>
</body>
</html>