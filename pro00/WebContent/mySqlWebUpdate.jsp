<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<style>
</style>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
	String id = request.getParameter("id");
	
	String	driver = "com.mysql.cj.jdbc.Driver";
	String	url = "jdbc:mysql://localhost:3306/sample?serverTimezone=Asia/Seoul";
	String	user = "root";
	String	pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String pw = "";
	String name = "";
	try{
		Class.forName(driver);
		try{
			conn = DriverManager.getConnection(url,user,pass);
			sql = "select * from test2 where id=?";
			try{
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				if(rs.next()){
					name=rs.getString("name");
					pw=rs.getString("pw");
				}
				rs.close();
				pstmt.close();
				conn.close();
			} catch(SQLException e){
				System.out.println("SQL 구문 실행 실패");
			}
		} catch(SQLException e){
			System.out.println("데이터베이스 연결 실패");
		}
	} catch(ClassNotFoundException e){
		System.out.println("드라이버 로딩 실패");
	}
%>
<form action="mySqlUpdatePro.jsp" method="post">
	<table>
		<tbody>
			<tr><th>아이디</th><td><input type="text" name="id" value="<%=id %>"></td></tr>
			<tr><th>비밀번호</th><td><input type="text" name="pw" value="<%=pw %>"></td></tr>
			<tr><th>이름</th><td><input type="text" name="name" value="<%=name %>"></td></tr>
			<tr><td colspan="2"></td></tr>
			<tr><td colspan="2">
				<input type="submit" value="수정"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="취소">
				<a href="mySqlWebDel.jsp?name=<%=name %>">회원 삭제</a>
			</td></tr>			
		</tbody>
	</table>
</form>
</body>
</html>