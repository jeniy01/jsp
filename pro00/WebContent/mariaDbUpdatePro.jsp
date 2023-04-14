<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	int credit=Integer.parseInt(request.getParameter("credit"));
	String lecturer=request.getParameter("lecturer");
	int week=Integer.parseInt(request.getParameter("week"));
	int start_hour=Integer.parseInt(request.getParameter("start_hour"));
	int end_end=Integer.parseInt(request.getParameter("end_end"));
	
	String	driver = "org.mariadb.jdbc.Driver";
	String	url = "jdbc:mariadb://127.0.0.1:3308/company";
	String	user = "root";
	String	pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "";
	int a = 0;
	try{
		Class.forName(driver);
		try{
			conn = DriverManager.getConnection(url,user,pass);
			sql = "update course_tbl set name=?, credit=?, lecturer=?, week=?, start_hour=?, end_end=? where id=?";
			try{
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, name);
				pstmt.setInt(2, credit);
				pstmt.setString(3, lecturer);
				pstmt.setInt(4, week);
				pstmt.setInt(5, start_hour);
				pstmt.setInt(6, end_end);
				pstmt.setString(7, id);
				a = pstmt.executeUpdate();
				if(a>0){
					System.out.println("과목 정보 수정 성공");
				} else{
					System.out.println("과목 정보 수정 실패");
				}
				pstmt.close();
				conn.close();
				response.sendRedirect("mariaDbWebList.jsp");
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