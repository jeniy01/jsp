<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좌석 정보 수정</title>
<style>
</style>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
	String seatno = request.getParameter("seatno");
	
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/sample";
	String user = "postgres";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String callno = "";
	String office = "";
	try{
		Class.forName(driver);
		try{
			conn = DriverManager.getConnection(url,user,pass);
			sql = "select * from tbl_seat_202108 where seatno=?";
			try{
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, seatno);
				rs = pstmt.executeQuery();
				if(rs.next()){
					callno=rs.getString("callno");
					office=rs.getString("office");
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
<form action="postgreUpdatePro.jsp" method="post">
	<table>
		<tbody>
			<tr><th>좌석번호</th><td><input type="text" name="seatno" value="<%=seatno %>"></td></tr>
			<tr><th>사무실 위치</th><td><input type="text" name="office" value="<%=office %>"></td></tr>
			<tr><th>전화번호</th><td><input type="text" name="callno" value="<%=callno %>"></td></tr>
			<tr><td colspan="2"></td></tr>
			<tr><td colspan="2">
				<input type="submit" value="수정"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="취소">
				<a href="postgreWebDel.jsp?seatno=<%=seatno %>">좌석 삭제</a>
			</td></tr>			
		</tbody>
	</table>
</form>
</body>
</html>