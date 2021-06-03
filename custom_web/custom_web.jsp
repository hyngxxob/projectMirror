<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/base.css">
</head>
<body>
	<form action="requestModule.jsp" method="post">
		<table class="templateTable2" bordercolor="#505050" cellspacing="0"
			cellpadding="5" width="90%" align="center" border="1">
			<tbody>
				<tr>
					<th class="loc_th_item">Top Bar
					<td class="loc_td_radio_item"><input type="radio"
						name="check_info" value="top_bar">top_bar
					</th>
				</tr>
				<tr>
					<th class="loc_th_item">Top Section</th>
					<td class="loc_td_radio_item"><input type="radio"
						name="check_info" value="top_left">top_left <input
						type="radio" name="check_info" value="top_center">top_center
						<input type="radio" name="check_info" value="top_right">top_right</td>
				</tr>
				<tr>
					<th class="loc_th_item">Upper Section</th>
					<td class="loc_td_radio_item"><input type="radio"
						name="check_info" value="upper_third">upper_third <input
						type="radio" name="check_info" value="middle_third">middle_third
						<input type="radio" name="check_info" value="lower_third">lower_third</td>
				</tr>
				<tr>
					<th class="loc_th_item">Bottom Section</th>
					<td class="loc_td_radio_item"><input type="radio"
						name="check_info" value="bottom_left">bottom_left <input
						type="radio" name="check_info" value="bottom_center">bottom_center
						<input type="radio" name="check_info" value="bottom_right">bottom_right</td>
				<tr class="loc_th_item">
					<th>Bottom Bar</th>
					<td class="loc_td_radio_item"><input type="radio"
						name="check_info" value="bottom_bar">bottom_bar</td>
				</tr>
			</tbody>
		</table>
		<br>
		<br>
		<select name="module">
			<option value="currentweather">미세먼지</option>
			<option value="compliment">메세지</option>
			<option value="weatherforecast">날씨</option>
			<option value="newsfeed">뉴스</option>
			<option value="clock">시계</option>
			
		</select>
		<input type="submit" value="선택">
	</form>
</body>
</html>