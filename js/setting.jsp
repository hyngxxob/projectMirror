	
<%
	String x = request.getParameter("timeFormat");
	String y = request.getParameter("Seconds");
	String z = request.getParameter("showPer");
	String k = request.getParameter("type");
	String l = request.getParameter("location");
%>
<%= x%><br>
<%= y%><br>
<%= z%><br>
<%= k%><br>
<%= l%><br>


<%
	switch(k){
	case "clock":
		
		break;
	case "weather":
		break;
	case "newsfeed":
		break;
	}
%>