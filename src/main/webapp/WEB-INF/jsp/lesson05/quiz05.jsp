<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기상청</title>
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
			<div class="d-flex logo justify-content-center pt-3 mb-5">
				<img src="https://www.kma.go.kr/kma/resources/images/sub/sig2.png" alt="기상청 logo" height="30">
			</div>
			<ul class="nav">
	            <li class="nav-item font-weight-bold"><a href="#" class="nav-link text-white">날씨</a></li>
	            <li class="nav-item font-weight-bold"><a href="#" class="nav-link text-white">날씨입력</a></li>
	            <li class="nav-item font-weight-bold"><a href="#" class="nav-link text-white">테마날씨</a></li>
	            <li class="nav-item font-weight-bold"><a href="#" class="nav-link text-white">관측 기후</a></li>
	        </ul>
		</aside>
		<div class="col-10 h-100 pt-3">
			<h2>과거 날씨</h2>
			<table class="table text-center">
				<thead>
					<tr>
						<th>날짜</th>
						<th>날씨</th>
						<th>기온</th>
						<th>강수량</th>
						<th>미세먼지</th>
						<th>풍속</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>2015-11-22</td>
						<td><img src="/img/lesson05/sunny.jpg"></td>
						<td>21.9</td>
						<td>83.5mm</td>
						<td>보통</td>
						<td>2.9km/h</td>
					</tr>
					<tr>
						<td>2015-11-22</td>
						<td><img src="/img/lesson05/sunny.jpg"></td>
						<td>21.9</td>
						<td>83.5mm</td>
						<td>보통</td>
						<td>2.9km/h</td>
					</tr>
					<tr>
						<td>2015-11-22</td>
						<td><img src="/img/lesson05/sunny.jpg"></td>
						<td>21.9</td>
						<td>83.5mm</td>
						<td>보통</td>
						<td>2.9km/h</td>
					</tr>
				</tbody>
			</table>
			<hr>
		</div>
	</section>
		<footer class="d-flex">
			<div class="col-2 d-flex justify-content-center align-items-center logo">
				<img src="https://www.kma.go.kr/kma/resources/images/sub/sig2.png" alt="기상청 흑백 logo" height="30">
			</div>
			<div class="col-10 text-secondary pt-2 pl-5">
				<small>(07062) 서울시 동작구 여의대방로16길 61</small><br>
				<small>Copyright@2020 KMA. All Rights RESERVED.</small>
			</div>
		</footer>
</div>
</body>
</html>