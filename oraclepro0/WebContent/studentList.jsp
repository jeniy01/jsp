<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "test1";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "select * from tbl_member, tbl_course, tbl_teacher where tbl_member.cno=tbl_course.c_no and tbl_course.teacher_code=tbl_teacher.teacher_code order by member_seq";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>오라클 데이터베이스 테이블 목록보기</title>
<style>
table { display:table; width:800px; margin:10px auto; 
border-bottom:1px solid #333; 
border-collapse:collapse; }
tr { display:table-row; }
th, td { display:table-cell; border-top:1px solid #333;
text-align:center; line-height:36px; }
th { background-color:#333; color:#fff; }
</style>
</head>
<body>
	<h2>수강 신청 목록</h2>
	<hr>
	<nav>
		<a href="index.jsp">메인으로</a>
		|
		<a href="studentInsert.jsp">수강 등록하기</a>
		|
		<a href="studentNothingCourseList.jsp">수강생이 없는 과정 목록</a>
		|
		<a href="studentCourseHistoryList.jsp">과정 내역</a>
		|
		<a href="studentExistList.jsp">수강생이 존재하는 과정 내역</a>
		
	</nav>
	<hr>
	<table>
		<thead>
			<tr><th>순번</th><th>과목코드</th><th>이름</th><th>전화번호</th><th>등록일</th><th>캠퍼스</th><th>강의실</th><th>작업</th></tr>
		</thead>
		<tbody>
<%
						while(rs.next()){	
							//01022221111
							String t1 = rs.getString("phone").substring(0, 3); //010
							String t2 = rs.getString("phone").substring(3, 7); //2222
							String t3 = rs.getString("phone").substring(7); //1111
							String tel = t1 + "-" + t2 + "-" + t3;
							
							//20220101
							String y = rs.getString("regist_date").substring(0, 4);	//2022
							String m = rs.getString("regist_date").substring(4, 6); //01
							String d = rs.getString("regist_date").substring(6); //01
							String date1 = y + "-" + m + "-" + d;  //2022-01-01
%>							
			<tr>
				<td><%=rs.getInt("member_seq") %></td>
				<td><%=rs.getString("class_name") %></td>
				<td>
					<a href='studentDetail.jsp?member_seq=<%=rs.getString("member_seq") %>'>
						<%=rs.getString("c_name") %>님
					</a>
				</td>
				<td><%=tel %></td>
				<td><%=date1 %></td>
				<td><%=rs.getString("class_area") %></td>
				<td><%=rs.getString("classroom") %></td>
				<td>
					<a href='studentUpdate.jsp?member_seq=<%=rs.getString("member_seq") %>'>변경</a>
					|
					<a href='studentDel.jsp?member_seq=<%=rs.getString("member_seq") %>'>삭제</a>
				</td>
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
			System.out.println("데이터베이스 연결 실패~!");
		}
	} catch(ClassNotFoundException e){
		System.out.println("드라이버 로딩 실패~!");
	}
%>