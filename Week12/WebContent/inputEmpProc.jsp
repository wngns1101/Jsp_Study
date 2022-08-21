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
		String empno = request.getParameter("inputno");
		String empname = request.getParameter("inputname");
		String empdept = request.getParameter("inputcode");
		String empjob = request.getParameter("inputjob");
		int empsal = Integer.parseInt(request.getParameter("inputsal"));
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql1 = "select * from emp where empno = ?";
		String sql2 = "insert into emp values(?,?,?,?,?)";
		
		int empnoChk = 0;
		int result = 0;
		
		pstmt = conn.prepareStatement(sql1);
		pstmt.setString(1, empno);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			empnoChk = 1;
		}else{
			pstmt = conn.prepareStatement(sql2);
			pstmt.setString(1, empno);
			pstmt.setString(2, empname);
			pstmt.setString(3, empdept);
			pstmt.setString(4, empjob);
			pstmt.setInt(5, empsal);
			result = pstmt.executeUpdate();
		}
		
		if(empnoChk > 0){
	%>
		<script>
			alert("이미 등록된 사원 번호입니다.");
			history.go(-1);
		</script>
	<%
		}else if(result > 0){
	%>		
		<script>
			alert("사원 등록 성공");
			location.href="queryEmp.jsp";
		</script>
	<%
		}else if(result <= 0){
	%>
		<script>
			alert("사원 등록 실패");
			history.go(-1);
		</script>
	<%	
	}
		rs.close();
		pstmt.close();
		conn.close();
	%>
</body>
</html>