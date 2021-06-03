<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap 4</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style>
p {
	margin: 20px 0px;
}
</style>
<script type="text/javascript" src="js/module.js"></script>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<h1>선택할 옵션</h1>
	<form action="" method="get">
		<button type="button" class="btn btn-primary" onclick="module('mise')">미세먼지</button>
		<button type="button" class="btn btn-primary" onclick="module('clock')">시계</button>
		<button type="button" class="btn btn-primary" onclick="module('news')">뉴스</button>
		<button type="button" class="btn btn-primary" onclick="module('calendar')">달력</button>
		<button type="button" class="btn btn-primary" onclick="module('photo')">사진</button>
		<input type="result">dk
	</form>
	<div id="result"></div>
</body>
</html>