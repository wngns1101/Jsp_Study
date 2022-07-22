<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>두 수의 곱 구하기</h3>
	<%!
		public int multiply(int x, int y){
		return x * y;
	}
	%>
	<h1>13 * 19 = <%=multiply(13, 19)%></h1>
</body>
</html>