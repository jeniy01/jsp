<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
	String name = request.getParameter("name");
	
	String	driver = "com.mysql.cj.jdbc.Driver";
	String	url = "jdbc:mysql://localhost:3306/sample?serverTimezone=Asia/Seoul";
	String	user = "root";
	String	pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "";
	int a = 0;
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url,user,pass);
			sql = "delete from test2 where name=?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, name);
				a = pstmt.executeUpdate();
				if(a>0){
					System.out.println("회원 정보 삭제 성공");
				} else {
					System.out.println("회원 정보 삭제 실패");
				}
				pstmt.close();
				conn.close();
				response.sendRedirect("mySqlWebList.jsp");
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