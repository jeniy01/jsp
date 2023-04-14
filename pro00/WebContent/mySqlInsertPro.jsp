<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	String name=request.getParameter("name");
	
	String	driver = "com.mysql.cj.jdbc.Driver";
	String	url = "jdbc:mysql://localhost:3306/sample?serverTimezone=Asia/Seoul";
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
			sql = "insert into test2 values(?,?,?)";
			try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			a = pstmt.executeUpdate();
			if(a>0){
				System.out.println("회원 등록 성공");
			} else{
				System.out.println("회원 등록 실패");
			}
			pstmt.close();
			conn.close();
			response.sendRedirect("mySqlWebInsert.jsp");
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