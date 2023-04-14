<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
	String id=request.getParameter("id");
	String name=request.getParameter("name");
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
			sql = "insert into course_tbl values(?,?,?,?,?,?,?)";
			try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setInt(3, credit);
			pstmt.setString(4, lecturer);
			pstmt.setInt(5, week);
			pstmt.setInt(6, start_hour);
			pstmt.setInt(7, end_end);
			a = pstmt.executeUpdate();
			if(a>0){
				System.out.println("과목 등록 성공");
			} else{
				System.out.println("과목 등록 실패");
			}
			pstmt.close();
			conn.close();
			response.sendRedirect("mariaDbWebInsert.jsp");
			//response.sendRedirect("index.jsp");
			} catch(SQLException e){
				System.out.println("SQL 오류");
			}
		} catch(SQLException e){
			System.out.println("연결 실패");
		}
	} catch(ClassNotFoundException e){
		System.out.println("드라이버 로딩 실패");
	}
%>