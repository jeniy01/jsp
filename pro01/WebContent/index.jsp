<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = "박지현";
	int age = 22;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<style>
</style>
</head>
<body>
	<h1>메인 페이지</h1>
	<h2>저의 이름은 <%=name %>이며, 나이는 <%=age %>세 입니다.</h2>
	<p>여기는 메인 페이지 테스트 문장 구간입니다.</p>
	<h3>목록보기</h3>
	<nav>
		<ul>
			<li><a href="oracleWebList.jsp">오라클 목록 보기</a></li>
			<li><a href="mySqlWebList.jsp">마이에스큐엘 목록 보기</a></li>
			<li><a href="mariaDbWebList.jsp">마리아디비 목록 보기</a></li>
			<li><a href="postgreWebList.jsp">포스트그리 목록 보기</a></li>
		</ul>
	</nav>
</body>
</html>