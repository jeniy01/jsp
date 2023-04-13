<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청 정보 수정</title>
<style>
</style>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
	String c_no = request.getParameter("c_no");
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "system";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String c_name = "";
	String phone = "";
	String address = "";
	int seq = 0;
	try{
		Class.forName(driver);
		try{
			conn = DriverManager.getConnection(url,user,pass);
			sql = "select * from TBL_MEMBER_202201 where c_no=?";
			try{
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, c_no);
				rs = pstmt.executeQuery();
				if(rs.next()){
					phone=rs.getString("phone");
					address=rs.getString("address");
					seq = rs.getInt("member_seq");
					c_name = rs.getString("c_name");
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
<form action="oracleUpdatePro.jsp" method="post">
	<table>
		<tbody>
			<tr><th>순번</th><td><%=seq %></td></tr>
			<tr><th>수강코드</th><td><input type="text" name="c_no" value="<%=c_no %>"></td></tr>
			<tr><th>이름</th><td><input type="text" name="c_name" value="<%=c_name %>"></td></tr>
			<tr><th>전화번호</th><td><input type="tel" name="phone" value="<%=phone %>"></td></tr>
			<tr><th>주소</th><td><input type="text" name="address" value="<%=address %>"></td></tr>
			<tr><td colspan="2"></td></tr>
			<tr><td colspan="2">
				<input type="submit" value="수정"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="취소">
				<a href="oracleWebDel.jsp?c_no=<%=c_no %>">수강 삭제</a>
			</td></tr>			
		</tbody>
	</table>
</form>
</body>
</html>