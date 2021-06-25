<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String module = request.getParameter("module");
	String location = request.getParameter("check_info");
	%>
	
	<%
		switch (module) {
		case "currentweather" :
	%>
	<form action="currentweather_custom.jsp" method="GET" name="jaslun">
		<input type="hidden" name="location" value="<%= location%>">
		<input type="hidden" name="module" value="<%out.print(module);%>">
	</form>
	<%
		break;

	case "compliment" :
	%>
	<form action="compliment_custom.jsp" method="GET" name="jaslun">
		<input type="hidden" name="location" value="<%out.print(location);%>">
		<input type="hidden" name="module" value="<%out.print(module);%>">
	</form>
	<%
		break;
	case "weatherforecast" :
	%>
	<form action="weatherforecast_custom.jsp" method="GET" name="jaslun">
		<input type="hidden" name="location" value="<%out.print(location);%>">
		<input type="hidden" name="module" value="<%out.print(module);%>">
	</form>
	<%
		break;
	
	case "newsfeed" :
	%>
	<form action="newsfeed_custom.jsp" method="GET" name="jaslun">
		<input type="hidden" name="location" value="<%out.print(location);%>">
		<input type="hidden" name="module" value="<%out.print(module);%>">
	</form>
	<%
		break;

	case "clock" :
	%>
	<form action="clock_custom.jsp" method="GET" name="jaslun">
		<input type="hidden" name="location" value="<%out.print(location);%>">
		<input type="hidden" name="module" value="<%out.print(module);%>">
	</form>
	<%
		break;
	}
	%>
	<script>
		document.jaslun.submit();
	</script>
</body>
</html>

