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
	<h2 class="title">useBean 액션태그 + Expression(표현식) 활용</h2>
	<ul>
		<li>국가 : <%=h.getCountry() %></li>
		<li>이름 : <%=h.getName() %></li>
		<li>나이 : <%=h.getAge() %></li>
		<li>취미 : <%=h.getHobby() %></li>
	</ul>
	<hr>
	<h2 class="title">useBean 액션태그 + Expression Language(표현언어) 활용</h2>
	<ul>
		<li>국가 : ${h.country }</li>
		<li>이름 : ${h.name }</li>
		<li>나이 : ${h.age }</li>
		<li>취미 : ${h.hobby }</li>
	</ul>
</div>
</body>
</html>