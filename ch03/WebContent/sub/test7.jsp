<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String id = "";
	if(session.getAttribute("id")!=null) {
		id = (String) session.getAttribute("id");
	}
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
	<%@ include file="../hd.jsp" %>
	<hr>
	<div class="content" style="min-height:500px">
		<h1>디렉토리가 다른 페이지의 경로 처리</h1>
		<div class="btn-group">
			<a href="<%=path %>/test6.jsp" class="btn btn-primary">페이지</a>
			<img src="<%=path %>/img/icons.png" alt="이미지">
		</div>
	</div>
	<hr>
	<%@ include file="../ft.jsp" %>
</div>
</body>
</html>