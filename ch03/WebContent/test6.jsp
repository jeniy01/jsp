<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String id = "";
	if(session.getAttribute("id")!=null) {
		id = (String) session.getAttribute("id");
	}
	String path = request.getContextPath();	//현재 프로젝트 디렉토리의 위치를 저장하고 있음
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>메인 페이지</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.title { text-align:center; }
#tb1, .msg { width:600px; margin:0 auto; }
.btn { margin-top:20px; }
</style>
</head>
<body>
<div class="container">
	<header class="header">
		<nav class="nav">
			<%
				if(id.equals("admin") && id != "") {
			%>
			<a href="admin.jsp">관리자</a>
			<%
				}
			%>
			<% if(id != "") { %>
			<a href="mypage.jsp">마이페이지</a>
			<a href="logout.jsp">로그아웃</a>
			<% } else if(!(id.equals("admin"))){ %>
			<a href="login.jsp">로그인</a>
			<a href="join.jsp">회원가입</a>
			<% } %>
			<a href="<%=path %>/sub/test7.jsp">테스트7으로 이동</a>
		</nav>
	</header>
	<hr>
	<div class="content" style="min-height:500px">
		<h1>세션에 따른 메뉴 선택</h1>
		<div class="btn-group">
			<a href="" class="btn btn-primary">페이지</a>
		</div>
	</div>
	<hr>
	<%@ include file="ft.jsp" %>
</div>
</body>
</html>