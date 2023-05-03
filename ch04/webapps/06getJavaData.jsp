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
<title>GetJavaDataCtrl에서 포워드한 데이터 바인딩 처리</title>
<style>
</style>
</head>
<body>
	<h2>names 배열로 온 데이터</h2>
	<ul>
	<c:forEach var="item" items="${names }">
		<li>${item }</li>
	</c:forEach>		
	</ul>
	<hr>
	<h2>lst1 단순 리스트로 온 데이터</h2>
	<ul>
	<c:forEach var="item" items="${lst1 }">
		<li>${item }</li>
	</c:forEach>		
	</ul>
	<hr>
	<h2>map 단순 맵으로 온 데이터</h2>
	<ul>
	<c:forEach var="i" items="${map }">
		<li>${i.key} : ${i.value }</li>
	</c:forEach>		
	</ul>
	<hr>
	<h2>map2 여러 속성으로 구성된 맵으로 온 데이터</h2>
	<ul>
	<c:forEach var="i" items="${map2 }">
		<li>${i.key} : ${i.value }</li>
	</c:forEach>		
	</ul>
	<hr>
	<h2>List로 온 데이터</h2>
	<ul>
	<c:forEach var="human" items="${hList }">
		<li>
			<span>국가 : ${human.country }</span><br>
			<span>이름 : ${human.name }</span><br>
			<span>나이 : ${human.age }</span><br>
			<span>취미 : ${human.hobby }</span><br>
		</li>
	</c:forEach>		
	</ul>
</body>
</html>