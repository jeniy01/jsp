<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<% 
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "system";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try{
		Class.forName(driver);
		try{
			conn = DriverManager.getConnection(url,user,pass);
			sql = "select * from tbl_member_202201";
			try{
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오라클 데이터베이스 테이블 목록보기</title>
<style>
</style>
</head>
<body>
	<h2>회원목록</h2>
	<hr>
	<nav>
		<a href="index.jsp">메인으로</a>
	</nav>
	<hr>
	<table>
		<thead>
			<tr><th>순번</th><th>학생코드</th><th>이름</th><th>전화번호</th><th>등록일</th></tr>
		</thead>
		<tbody>
<% 
	while(rs.next()){ 
		
%>
	<tr>
		<td><%=rs.getInt("member_seq") %></td>
		<td><%=rs.getInt("c_no") %></td>
		<td><%=rs.getString("c_name") %>님</td>
		<td><%=rs.getString("phone") %></td>
		<td><%=rs.getString("regist_date") %></td>
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