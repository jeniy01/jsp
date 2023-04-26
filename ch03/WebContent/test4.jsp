<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("name", "이동혁");
	pageContext.setAttribute("age", "22");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인클루드 연습</title>
<!-- 사이트의 헤더와 푸터는 인클루드를 활용한다. -->
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
	<div class="msg">
		<h2 class="title">pageContext1 - include directive</h2>
	</div>
	<%@ include file="includeFile.jsp" %>
	<div class="msg">
		<h2 class="title">pageContext2 - include action tag</h2>
	</div>
	<jsp:include page="includeFile.jsp"></jsp:include>
</body>
</html>