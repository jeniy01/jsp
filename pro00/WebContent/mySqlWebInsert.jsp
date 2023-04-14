<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
	<nav>
		<a href="index.jsp">메인으로</a>
		<a href="mySqlWebList.jsp">회원 목록</a>
	</nav>
	<h2>회원 정보 등록</h2>
	<form action="mySqlInsertPro.jsp" method="post">
		<label for="id">아이디</label> : 
		<input type="text" name="id" id="id" required>
		<input type="button" value="중복확인" id="confirm_btn"><br><br>
		<label for="pw">비밀번호</label> : 
		<input type="text" name="pw" id="pw" required><br><br>
		<label for="name">이름</label> : 
		<input type="text" name="name" id="name" required><br><br>
		<input type="submit" value="수강 등록"> &nbsp; &nbsp; &nbsp; &nbsp;
		<input type="reset" value="취소">
	</form>
</body>
</html>