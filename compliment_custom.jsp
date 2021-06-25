<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>메세지</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<style>
p {
	margin: 20px 0px;
}
</style>

</head>
<body>
	<jsp:include page="/menu_bar.jsp" flush="true"></jsp:include>
	<!-- 
	<%=request.getParameter("location")%>
	<%=request.getParameter("module")%>
 -->
	<select name='time' id='time'>
		<option value='anytime'>언제나</option>
		<option value='morning'>아침</option>
		<option value='afternoon'>오후</option>
		<option value='evening'>야간</option>
	</select>
	<input type='text' id='addValue' />
	<input type='button' value='추가' onclick='addList()' />
	<script>
		function addList() {
			const addTime = document.getElementById('time').value;
			const addValue = document.getElementById('addValue').value;

			switch (addTime) {
			case 'anytime':
				console.log('언제나');
				const li = document.createElement("li");
				li.setAttribute('id', addValue);
				const textNode = document.createTextNode(addValue);
				li.appendChild(textNode);
				document.getElementById('anytime').appendChild(li);
				break;

			case 'morning':
				console.log('아침');
				const li1 = document.createElement("li");
				li1.setAttribute('id', addValue);
				const textNode1 = document.createTextNode(addValue);
				li1.appendChild(textNode1);
				document.getElementById('morning').appendChild(li1);
				break;

			case 'afternoon':
				console.log('오후');
				const li2 = document.createElement("li");
				li2.setAttribute('id', addValue);
				const textNode2 = document.createTextNode(addValue);
				li2.appendChild(textNode2);
				document.getElementById('afternoon').appendChild(li2);
				break;

			case 'evening':
				console.log('야간');
				const li3 = document.createElement("li");
				li3.setAttribute('id', addValue);
				const textNode3 = document.createTextNode(addValue);
				li3.appendChild(textNode3);
				document.getElementById('evening').appendChild(li3);
				break;
			break;

		}

	}
	</script>
	<form action="test.jsp" method="post">
		<div id="ohshit">
			<ul id='anytime'>언제나
			</ul>
			<ul id='morning'>아침
			</ul>
			<ul id='afternoon'>오후
			</ul>

			<ul id='evening'>야간
			</ul>
			<input type="submit" value="제출">
		</div>
	</form>
	
	<input type="button" value="버튼이다 뭐" onclick="fuck()">
	<script>
		function fuck() {
			var lis = document.getElementById("ohshit").getElementsByTagName("li");
			for(var i=0;i<lis.length;i++)
				{
				alert(lis[i].id);
				}
		}
	</script>

</body>
</html>