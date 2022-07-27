<%@ page import = "java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>절대 경로를 이용한 파일 읽기</h3>
	<%
		//같은 WebContent 폴더에 있다고 해서 바로 읽어올 수 없다
		//String path = "test.txt"
		
		String path = "/Users/juhoonlee/Desktop/github/Jsp_Study/Week4/WebContent/test.txt";
		
		BufferedReader br = new BufferedReader(new FileReader(path));
		
		while(true){
			String str = br.readLine();
			if(str == null){
				break;
			}
			out.println(str + "<br>");
		}
		br.close();
	%>
</body>
</html>