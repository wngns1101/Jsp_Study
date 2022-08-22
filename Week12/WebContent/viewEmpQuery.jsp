<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "connectDB.jsp" %>
	
<%
	String empno = request.getParameter("viewno");

	Statement stat = null;
	ResultSet rs = null;
	
	String sql1 = "select * from emp where empno=" + empno;

	stat = conn.createStatement();
	rs = stat.executeQuery(sql1);
	
	int result = 0;
	
	if(rs.next()){
		result = 1;
		request.setAttribute("empno", rs.getString("empno"));
		session.setAttribute("no", rs.getString("empno"));
		request.setAttribute("empname", rs.getString("empname"));
		request.setAttribute("empdept", rs.getString("empdept"));
		request.setAttribute("empjob", rs.getString("empjob"));
		request.setAttribute("empsal", rs.getInt("empsal"));
	}
		
%>	
<%
	if(result == 0){
%>
	<script>
		alert("사원번호가 존재하지 않습니다.");
		history.go(-1);
	</script>
<%
	} else if(result == 1){
%>
		<h3>사원 정보 조회</h3>
		<br>
		<table border = "1">
			<tr><td>사원번호</td><td>${empno }</td></tr>
			<tr><td>이   름</td><td>${empname }</td></tr>
			<tr><td>부서코드</td><td>${empdept }</td></tr>
			<tr><td>업   무</td><td>${empjob }</td></tr>
			<tr><td>급   여</td><td>${empsal }</td></tr>
		</table>
		<br><br>
		<input type = "button" value="회원정보수정" onclick="location.href='updateEmp.jsp'">
		<input type = "button" value="회원정보삭제" onclick="location.href='menu.jsp'">
		<input type = "button" value="돌아가기" onclick="location.href='menu.jsp'">
<%
	}
%>
</body>
</html>