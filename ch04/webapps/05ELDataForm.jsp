<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<%@ page import="ch04.Human" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Expression Language DataForm(표현 언어 데이터 전송처리)</title>
<style>
.msg { clear:both; width:1080px; height:auto; margin:40px auto; }
.msg:after { content:""; display:block; width:100%; clear:both; }
</style>
</head>
<body>
<%
	pageContext.setAttribute("pname", "김기태");
	request.setAttribute("rname", "김세종");
	session.setAttribute("sname", "김우주");
	application.setAttribute("aname", "박지현");
%>
<div class="msg">
	<h2>EL 폼 데이터 전송 연습</h2>
	<form action="05ELParam.jsp" method="post">
		<label for="id">아이디</label> :
		<input type="text" name="id" id="id"><br><br>
		당신이 좋아하는 스포츠는 무엇입니까?<br>
		<input type="checkbox" id="hobby1" name="hobby" value="축구">
		<label for="hobby1">축구</label><br>
		<input type="checkbox" id="hobby2" name="hobby" value="야구">
		<label for="hobby2">야구</label><br>
		<input type="checkbox" id="hobby3" name="hobby" value="배구">
		<label for="hobby3">배구</label><br>
		<input type="checkbox" id="hobby4" name="hobby" value="농구">
		<label for="hobby4">농구</label><br>
		<input type="checkbox" id="hobby5" name="hobby" value="피구">
		<label for="hobby5">피구</label><br><br>
		<input type="submit" value="전송">&nbsp;&nbsp;&nbsp;
		<input type="reset" value=" 취소">
	</form>
</div>
</body>
</html>