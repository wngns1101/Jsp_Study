<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "connectDB.jsp" %>
<%
	String empno = String.valueOf(session.getAttribute("no"));
	String empdept = request.getParameter("updatecode");
	String empjob = request.getParameter("updatejob");
	int empsal = Integer.parseInt(request.getParameter("updatesal"));
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	int result = 0;
	
	String sql = "update emp set empdept=?, empjob=?, empsal=? where empno=?";
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, empdept);
	pstmt.setString(2, empjob);
	pstmt.setInt(3, empsal);
	pstmt.setString(4, empno);
	
	result = pstmt.executeUpdate();
	
	request.setAttribute("result", result);
	
	pstmt.close();
	conn.close();
%>
<%
	if(result > 0){
%>
		<script>
			alert("사원 수정 성공");
			location.href="menu.jsp";
		</script>
<%		
	}else if(result == 0 ){
%>
		<script>
			alert("사원 수정 실패");
			location.href="viewEmpForm.jsp";
		</script>
<%
	}
%>
</body>
</html>