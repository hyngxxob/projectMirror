<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int adplus = 0;
	List<String> listPage = new ArrayList<>(); //array선언
	BufferedReader reader = null;
	try {
		String filePath = application.getRealPath("/WEB-INF/lib/config.js");
		reader = new BufferedReader(new FileReader(filePath));

		while (true) {
			String str = reader.readLine();
			String x = str;
			listPage.add(x);
			if (str == null)
		break;

		}
	} catch (FileNotFoundException fnfe) {
		out.println("파일이 존재하지 않습니다.");
	} catch (IOException ioe) {
		out.println("파일을 읽을수 없습니다.");
	}

	finally {
		try {
			reader.close();
		} catch (Exception e) {

		}
	}
	String test = new String("module: \"undatenotification\","); //바꿀내용
	for (int i = 0; i < listPage.size() - 1; i++) { //바꾸기 모듈 파일 읽기		모듈화 필요
		String stt = listPage.get(i).replaceAll("\t", ""); //탭 제거
		if (stt == null)
			break;
		if (stt.equals(test)) {
			adplus = i - 1; //포지션 변경위치
		}
	}

	listPage.set(adplus, "position: \"top_left\","); //바꾸는 과증	모듈화 필요

	for (int i = 0; i < listPage.size() - 1; i++) { //확인
		String stt = listPage.get(i).replaceAll("\t", ""); //탭 제거
		if (stt == null)
			break;
		out.println(stt + "<br>");
		if (stt.equals(test)) {
			out.println("O    "); //확인
			adplus = i; //포지션 변경위치
		} else
			out.println("X    ");
	}
	out.println(adplus);
	%>
	<%																				//데이터 수정 완료
	File file = new File("test1.js");
	FileWriter writer=null;
	
	try{
		writer = new FileWriter(file,true);
		for(int i=0;i<listPage.size()-1;i++){
			String stt=listPage.get(i).replaceAll("\t","");
			writer.write(stt+"\n");
		}
		writer.flush();
		
	}catch(IOException e){
		e.printStackTrace();
	}finally{
		try{
			if(writer!=null) writer.close();
		}catch(IOException e){
			e.printStackTrace();
		}
	}
	
	
	%>
</body>
</html>