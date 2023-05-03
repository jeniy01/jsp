<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07Human - useBean/forward 액션 태그를 활용한 클래스 데이터 전송하기</title>
<style>
.title { text-align:center; }
.msg { width:960px; margin:20px auto; }
</style>
</head>
<body>
<jsp:useBean id="h" scope="request" class="com.example.Human" />
<div class="msg">
	<h2 class="title">useBean 액션태그</h2>
	<p>Bean(Class)을 활용하기 위한 액션태그</p>
<%
	h.setCountry("대한민국");
	h.setName("정재현");
	h.setAge(27);
	h.setHobby("춤");
%>
<hr>
	<h2 class="title">forward 액션태그</h2>
	<p>Bean(Class)을 활용한 객체나 일반 데이터 값 등을 전송하기 위한 액션태그</p>
	<jsp:forward page="07HumanUseBean.jsp" />
</div>
</body>
</html>