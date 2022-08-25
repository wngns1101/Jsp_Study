<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
	<form action="action.jsp" method="post" enctype="multipart/formdata">
		<p> 제목:	 <input type="text" name="title">
		<p> 파일:	 <input type="file" name="fileName">
		<p> <input type="submit" name="제출">
	</form>
</body>
</html>