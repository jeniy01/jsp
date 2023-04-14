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
			sql = "select * from tbl_seat_202108";
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
table { display:table; width:600px; margin:10px auto; 
border-bottom:1px solid #333; 
border-collapse:collapse; }
tr { display:table-row; }
th, td { display:table-cell; border-top:1px solid #333;
text-align:center; line-height:36px; }
th { background-color:#333; color:#fff; }
</style>
</head>
<body>
	<h2>좌석 목록</h2>
	<hr>
	<nav>
		<a href="index.jsp">메인으로</a>
		<a href="postgreWebInsert.jsp">좌석 등록하기</a>
	</nav>
	<hr>
	<table>
		<thead>
			<tr><th>좌석번호</th><th>사무실 위치</th><th>전화번호</th></tr>
		</thead>
		<tbody>
<% 
	while(rs.next()){ 
%>
	<tr>
		<td><a href="postgreWebUpdate.jsp?seatno=<%=rs.getString("seatno") %>"><%=rs.getString("seatno") %></a></td>
		<td><%=rs.getString("office") %></td>
		<td><%=rs.getString("callno") %></td>
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