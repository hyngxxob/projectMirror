<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<html>
<head>
<title>JDK's 블로그</title>
<script language="javascript">
	function input_Text() {
		document.getElementById("test").value = 'JDK\'s blog';
	}
</script>
</head>
<body>
	<input type='hidden' id='test' value='test용' />
	<input type='button' onclick='input_Text()' value='버튼' />
</body>
</html>

