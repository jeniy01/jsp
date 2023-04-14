<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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
	String sql = "";
	int a = 0;
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url,user,pass);
			sql = "delete from tbl_seat_202108 where seatno=?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, seatno);
				a = pstmt.executeUpdate();
				if(a>0){
					System.out.println("좌석 정보 삭제 성공");
				} else {
					System.out.println("좌석 정보 삭제 실패");
				}
				pstmt.close();
				conn.close();
				response.sendRedirect("postgreWebList.jsp");
			} catch(SQLException e) {
				System.out.println("SQL 구문 실패");
			}
		} catch(SQLException e){
			System.out.println("연결 실패");
		}
	} catch(ClassNotFoundException e){
		System.out.println("드라이버 로딩 실패");
	}
%>