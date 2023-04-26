<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
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
<%
	String userid = (String) application.getInitParameter("userid");
	String data = (String) application.getAttribute("data");
	application.setAttribute("data", "1004");
	String memberId = (String) application.getInitParameter("memberId");
%>
<h1 class="title">Global Scope Variable(전역 변수) 점검</h1>
<div class="msg">
	<nav class="nav">
		<p>userid : <%=userid %></p>
		<p>data : <%=data %></p>
		<p>memberId : <%=memberId %></p>
		<a href="test1_data.jsp" class="btn btn-primary">처음 페이지로 이동</a>
	</nav>
</div>
</body>
</html>