<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<%-- 
	여기는 SQL로 id와 pw가 일치하는지 검색
	String sql = "select * from member where id=? and pw=?";
	----
	pstmt.setString(1, id);
	pstmt.setString(1, pw);
--%>
<%
	if(id.equals("admin") && pw.equals("1234")){
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		response.sendRedirect("test6.jsp");
	} else if(id.equals("test1") && pw.equals("1004")){
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		response.sendRedirect("test6.jsp");
	} else {
		session.invalidate();
		response.sendRedirect("login.jsp");
	}
%>