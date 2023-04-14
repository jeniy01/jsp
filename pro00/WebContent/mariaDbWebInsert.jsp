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
		<a href="mariaDbWebList.jsp">과목 목록</a>
	</nav>
	<h2>과목 정보 등록</h2>
	<form action="mariaDbInsertPro.jsp" method="post">
		<label for="id">아이디</label> : 
		<input type="text" name="id" id="id" required>
		<input type="button" value="중복확인" id="confirm_btn"><br><br>
		<label for="name">이름</label> : 
		<input type="text" name="name" id="name" required><br><br>
		<label for="credit">학점</label> : 
		<input type="number" name="credit" id="credit" required><br><br>
		<label for="lecturer">교사코드</label> : 
		<input type="text" name="lecturer" id="lecturer" required><br><br>
		<label for="week">요일</label> : 
		<input type="number" name="week" id="week" required><br><br>
		<label for="start_hour">시작시간</label> : 
		<input type="number" name="start_hour" id="start_hour" required><br><br>
		<label for="end_end">종료시간</label> : 
		<input type="number" name="end_end" id="end_end" required><br><br>
		<input type="submit" value="수강 등록"> &nbsp; &nbsp; &nbsp; &nbsp;
		<input type="reset" value="취소">
	</form>
</body>
</html>