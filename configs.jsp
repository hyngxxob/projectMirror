<%@page import="dao.configRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.typeConfig"%>
<jsp:useBean id="configDAO" class="dao.configRepository" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>config 목록</title>
</head>
<body>
	<jsp:include page="menu_bar.jsp"></jsp:include>
	<div class="jumbotron">
		<div class="container">
			<h1>목록	</h1>
		</div>
	</div>
	<%
		//ArrayList<configRepository> listOfConfig= configDAO.getAllConfig();
	%>

</body>
</html>