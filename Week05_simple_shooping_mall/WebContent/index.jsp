<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.hello{
		text-align:center;
		font-size:40px;
		font-weight: bold;
		background-color: gray;
		padding: 15%;
	}
</style>
<body>
	<jsp:include page = "top.jsp"/>
	
	<div class = "hello">
		<a>웹 쇼핑몰에 오신 것을 환영합니다<a>
	</div>
	
	<jsp:include page = "bottom.jsp"/>
</body>
</html>