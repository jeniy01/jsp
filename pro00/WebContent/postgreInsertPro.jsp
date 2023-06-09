<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
	String seatno=request.getParameter("seatno");
	String office=request.getParameter("office");
	String callno=request.getParameter("callno");
	String useflag=request.getParameter("useflag");
	
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/sample";
	String user = "postgres";
	String pass = "1234";

	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "";
	int a = 0;
	try{
		Class.forName(driver);
		try{
			conn = DriverManager.getConnection(url,user,pass);
			sql = "insert into tbl_seat_202108 values(?,?,?,?)";
			try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, seatno);
			pstmt.setString(2, office);
			pstmt.setString(3, callno);
			pstmt.setString(4, useflag);
			a = pstmt.executeUpdate();
			if(a>0){
				System.out.println("좌석 등록 성공");
			} else{
				System.out.println("좌석 등록 실패");
			}
			pstmt.close();
			conn.close();
			response.sendRedirect("postgreWebInsert.jsp");
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