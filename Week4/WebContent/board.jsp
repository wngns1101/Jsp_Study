<%@ page import="java.io.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>게시판 글쓰기 결과화면</h3>
	<%
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String board = request.getParameter("board");
		
		Date date = new Date();
		Long time = date.getTime();
		String fileName = time + ".txt";
		String filePath = application.getRealPath("/WEB-INF/board/" + fileName);
	
		FileWriter writer = new FileWriter(filePath);
		
		try{
			String str = "제목; " + title + " \n";
			str += "글쓴이: " + name + " \n";
			str += board;
			writer.write(str);
			out.println(filePath);
			out.println(str);
			out.println("저장되었습니다.");
		}catch(IOException e){
			out.println("파일에 데이터를 저장할 수 없습니다.");
		}finally{
			writer.close();
		}
	%>
</body>
</html>