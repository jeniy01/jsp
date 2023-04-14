<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
	String id = request.getParameter("id");
	
	String	driver = "org.mariadb.jdbc.Driver";
	String	url = "jdbc:mariadb://127.0.0.1:3308/company";
	String	user = "root";
	String	pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "";
	int a = 0;
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "delete from course_tbl where id=?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				a = pstmt.executeUpdate();
				if(a>0){
					System.out.println("과목 정보 삭제 성공");
				} else {
					System.out.println("과목 정보 삭제 실패");
				}
				pstmt.close();
				conn.close();
				response.sendRedirect("mariaDbWebList.jsp");
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