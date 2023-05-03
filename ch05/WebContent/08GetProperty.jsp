<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08GetProperty - 속성을 각각 대입하거나 가져오기</title>
<link rel="stylesheet" href="table_form_common.css">
<style>
</style>
</head>
<body>
<jsp:useBean id="h" scope="request" class="com.example.Human" />
<jsp:setProperty property="*" name="h"/>
<%-- 특정 요소만 불러오고 싶을 땐 이렇게 각각 불러오면 됨
<jsp:setProperty property="country" name="h" value="<%=h.getCountry() %>"/>
<jsp:setProperty property="name" name="h" value="<%=h.getName() %>"/>
<jsp:setProperty property="age" name="h" value="<%=h.getAge() %>"/>
<jsp:setProperty property="hobby" name="h" value="<%=h.getHobby() %>"/> --%>
<div class="msg">
	<h2 class="title">Expression(표현식)을 활용한 데이터 가져오기</h2>
	<table class="table">
		<tbody>
			<tr>
				<th>소속국가</th>
				<td><%=h.getCountry() %></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><%=h.getName() %></td>
			</tr>
			<tr>
				<th>나이</th>
				<td><%=h.getAge() %></td>
			</tr>
			<tr>
				<th>취미</th>
				<td><%=h.getHobby() %></td>
			</tr>
		</tbody>
	</table>
	<hr>
	<h2 class="title">Expression Language(표현언어)를 활용한 데이터 가져오기</h2>
	<table class="table">
		<tbody>
			<tr>
				<th>소속국가</th>
				<td>${h.country }</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${h.name }</td>
			</tr>
			<tr>
				<th>나이</th>
				<td>${h.age }</td>
			</tr>
			<tr>
				<th>취미</th>
				<td>${h.hobby }</td>
			</tr>
		</tbody>
	</table>
	<hr>
	<h2 class="title">getProperty 액션 태그를  활용한 데이터 가져오기</h2>
	<table class="table">
		<tbody>
			<tr>
				<th>소속국가</th>
				<td><jsp:getProperty property="country" name="h" /></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><jsp:getProperty property="name" name="h" /></td>
			</tr>
			<tr>
				<th>나이</th>
				<td><jsp:getProperty property="age" name="h" /></td>
			</tr>
			<tr>
				<th>취미</th>
				<td><jsp:getProperty property="hobby" name="h" /></td>
			</tr>
		</tbody>
	</table>
</div>
</body>
</html>