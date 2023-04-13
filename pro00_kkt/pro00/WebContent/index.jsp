<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String name = "김기태";
	int age = 41;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
			<li><span>오라클</span>
				<ul>
					<li><a href="oracleWebList.jsp">목록 보기</a></li>
					<li><a href="oracleWebInsert.jsp">데이터 추가하기</a></li>
				</ul>
			</li>
			<li><span>마이에스큐엘</span>
				<ul>
					<li><a href="mySqlWebList.jsp">목록 보기</a></li>
					<li><a href="mySqlWebInsert.jsp">데이터 추가하기</a></li>
				</ul>
			</li>
			<li><span>마리아DB</span>
				<ul>
					<li><a href="mariaDbWebList.jsp">목록 보기</a></li>
					<li><a href="mariaDbWebInsert.jsp">데이터 추가하기</a></li>
				</ul>
			</li>
			<li><span>포스트그리</span>
				<ul>
					<li><a href="postgreSqlWebList.jsp">목록 보기</a></li>
					<li><a href="postgreSqlWebInsert.jsp">데이터 추가하기</a></li>
				</ul>
			</li>
		</ul>
	</nav>
</body>
</html>