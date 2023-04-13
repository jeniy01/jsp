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
		<a href="postgreWebList.jsp">국가 목록</a>
	</nav>
	<h2>국가 정보 등록</h2>
	<form action="postgreInsertPro.jsp" method="post">
		<label for="country_code">국가코드</label> : 
		<input type="text" name="country_code" id="country_code" required>
		<input type="button" value="중복확인" id="confirm_btn"><br><br>
		<label for="country_name">국가명</label> : 
		<input type="text" name="country_name" id="country_name" required><br><br>
		<input type="submit" value="국가 등록"> &nbsp; &nbsp; &nbsp; &nbsp;
		<input type="reset" value="취소">
	</form>
</body>
</html>