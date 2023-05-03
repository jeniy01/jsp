<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08FormData - 액션 태그를 활용하여 데이터 전송</title>
<link rel="stylesheet" href="table_form_common.css">
<style>
</style>
</head>
<body>
<h2 class="title">액션 태그를 활용하여 데이터 전송</h2>
<form action="08GetProperty.jsp">
	<table class="table">
		<tbody>
			<tr>
				<th>소속국가</th>
				<td><input type="text" name="country" id="country" class="data_input"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" id="name" class="data_input"></td>
			</tr>
			<tr>
				<th>나이</th>
				<td><input type="number" name="age" id="age" min="1" max="200" step="1" class="data_input2"></td>
			</tr>
			<tr>
				<th>취미</th>
				<td><input type="text" name="hobby" id="hobby" class="data_input"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="등록" class="btn btn-default"> &nbsp; &nbsp;
					<input type="reset" value="취소" class="btn btn-info">
				</td>
			</tr>
		</tbody>
	</table>
</form>
</body>
</html>