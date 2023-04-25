<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scope Response Page</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.title { text-align:center; }
#tb1, .msg { width:800px; margin:0 auto; }
</style>
</head>
<body>
<div class="msg">
	<h1 class="title">JSP의 Scope2</h1>
	<%
		String pg = (String)pageContext.getAttribute("pageData");
		String req = (String)request.getAttribute("requestData");
		String ses = (String)session.getAttribute("sessionData");
		String app = (String)application.getAttribute("applicationData");
		String msg = request.getParameter("msg");
	%>
	<h2 class="title">Scope 데이터 출력2</h2>
	<ul>
		<li>pageContext : <%=pg %></li>
		<li>request : <%=req %></li>
		<li>session : <%=ses %></li>
		<li>application : <%=app %></li>
		<li>msg : <%=msg %></li>
	</ul>
	<a href="test1_data.jsp" class="btn btn-primary">처음 페이지로 이동하기</a>
</div>
</body>
</html>