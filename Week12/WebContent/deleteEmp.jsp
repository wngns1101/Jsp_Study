<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	body{
		text-align: center;
	}
</style>
<body>
<%@ include file = "connectDB.jsp" %>
<%
	String empno = String.valueOf(session.getAttribute("no"));
	
	PreparedStatement pstmt = null;
	int result = 0;
	
	String sql = "delete from emp where empno=?";
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, empno);
	
	result = pstmt.executeUpdate();
	request.setAttribute("result", result);
	
	pstmt.close();
	conn.close();
	
	if(result > 0){
%>
	<script>
		alert("사원 정보 삭제 성공");
		location.href = "queryEmp.jsp"
	</script>
<%
	} else if(result == 0){
%>
	<script>
		alert("사원 정보 삭제 성공");
		history.go(-1);
	</script>
<%
	}
%>
</body>
</html>