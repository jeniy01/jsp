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
		<a href="postgreWebList.jsp">좌석 목록</a>
	</nav>
	<h2>좌석 정보 등록</h2>
	<form action="postgreInsertPro.jsp" method="post">
		<label for="seatno">좌석번호</label> : 
		<input type="text" name="seatno" id="seatno" required>
		<input type="button" value="중복확인" id="confirm_btn"><br><br>
		<label for="office">사무실 위치</label> : 
		<input type="text" name="office" id="office" required><br><br>
		<label for="callno">전화번호</label> : 
		<input type="text" name="callno" id="callno" required><br><br>
		<label>사용여부</label> : 
		<input type="radio" name="useflag" value="Y" checked> Y
		<input type="radio" name="useflag" value="N"> N <br><br><br>
		<input type="submit" value="좌석 등록"> &nbsp; &nbsp; &nbsp; &nbsp;
		<input type="reset" value="취소">
	</form>
</body>
</html>