	
<%
	String x = request.getParameter("timeFormat");
	String y = request.getParameter("Seconds");
	String z = request.getParameter("showPer");
	String k = request.getParameter("type");
	String l = request.getParameter("location");
%>
<%= x%>
<%= y%>
<%= z%>
<%= k%>
<%= l%>


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