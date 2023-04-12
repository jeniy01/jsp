<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<% 
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/sample";
	String user = "postgres";
	String pass = "1234";

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try{
		Class.forName(driver);
		try{
			conn = DriverManager.getConnection(url,user,pass);
			sql = "select * from countries";
			try{
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포스트그리 데이터베이스 테이블 목록보기</title>
<style>
</style>
</head>
<body>
	<h2>국가목록</h2>
	<hr>
	<nav>
		<a href="index.jsp">메인으로</a>
	</nav>
	<hr>
	<table>
		<thead>
			<tr><th>국가코드</th><th>국가명</th></tr>
		</thead>
		<tbody>
<% 
	while(rs.next()){ 
%>
	<tr>
		<td><%=rs.getString("country_code") %></td>
		<td><%=rs.getString("country_name") %></td>
	</tr>
<% 
	}
%>
		</tbody>
	</table>
</body>
</html>
<% 
	rs.close();
	pstmt.close();
	conn.close();
	
	} catch(SQLException e){
		System.out.println("SQL 전송 실패");
	}
		} catch(SQLException e){
			System.out.println("데이터베이스 연결 실패");
		}
			} catch(ClassNotFoundException e){
				System.out.println("드라이버 로딩 실패");
			}
%>