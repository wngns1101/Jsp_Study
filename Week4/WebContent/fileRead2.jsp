<%@ page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>상대 경로를 이용한 상대 읽기</h3>
	<%
		String real = application.getRealPath("test.txt");
		BufferedReader br = new BufferedReader(new FileReader(real));
	
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