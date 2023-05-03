<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10ParamRecieve -  param 값을 받아 처리</title>
<link rel="stylesheet" href="table_form_common.css">
<style>
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
%>
<div class="msg">
	<h2 class="title">param 데이터 받기</h2>
	<p><%=request.getParameter("username") %>님이 로그인 하였습니다.</p>
	<a href="javascript:history.go(-1)" class="btn btn-info">뒤로 가기</a>
</div>
</body>
</html>