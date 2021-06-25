<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시계</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style>
p {
	margin: 20px 0px;
}
</style>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<meta charset="UTF-8">

</head>
<body>

	<jsp:include page="menu_bar.jsp" flush="true"></jsp:include>
<% String location= request.getParameter("location");%>
	<form action="js/setting.jsp" method="post">
		<table class="custom" bordercolor="#505050" cellspacing="0"
			cellpadding="5" width="90%" align="center" border="1">
			<tbody>
				<tr>
					<th class="timeFormat">시간 형식
					<td class="timeFormat"><input type="radio" name="timeFormat"
						value="format12">12 시간 <input type="radio"
						name="timeFormat" value=format24>24 시간</td>
					</th>
				</tr>
				<tr>
					<th class="displaySeconds">초 표시
					<td class="timeFormat"><input type="radio" name="Seconds"
						value="showSec">초 표시 <input type="radio" name="Seconds"
						value="hindSec">초 미표시</td>
					</th>
				</tr>
				<tr>
					<th class="showPeriod">오전/오후 표시
					<td class="showPeriod"><input type="radio" name="showPer"
						value="showPer">AM/PM 표시 <input type="radio"
						name="showPer" value="hindPer">AM/PM 미표시</td>
					</th>
				</tr>
			</tbody>
			<input type="hidden" name="type" value="clock"_>
			<input type="hidden" name="location" value="<%=location%>">
			<input type="submit" value="선택">
		</table>
	</form>
</body>
</html>