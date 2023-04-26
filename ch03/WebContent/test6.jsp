<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	
	<hr>
	<div class="content" style="min-height:500px">
		<h1>세션에 따른 선택</h1>
		<div class="btn-group">
			<a href="" class="btn btn-primary">페이지</a>
		</div>
	</div>
	<hr>
	<%@ include file="ft.jsp" %>
</div>
</body>
</html>