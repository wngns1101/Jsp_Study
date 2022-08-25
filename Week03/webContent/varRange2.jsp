<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>변수의 범위</h3>
	<%!
		//선언문 - 선언문 내에서 정의된 변수는 전역변수이다
		/* String strVal = "전역변수입니다"; */
		String strVal;
	%>
	<%!
		//선언문 - 메소드 선안
		String getStr(){
		return strVal;
	}
	%>
	<%
		//선언문 - 선언문 내에서 정의된 변수는 지역변수이다
		/* String strVal2 = "지역변수입니다"; */
		String strVal2;
	%>
	<%!
		//String strVal2(){
		//return strVal2
	//}
	%>
	<br>
	선언문에서 선언한 변수 strVar = <%= getStr() %><br>
	<%--스크립틀릿에서 선언한 변수 strVar2 = <%= strVar2 %><br>--%>
</body>
</html>