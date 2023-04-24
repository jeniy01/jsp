<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test3_form.jsp - 폼 입력 테스트3</title>
<!-- 부트스트랩 css -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.title { text-align:center; }
#tb1 { width:800px; margin:0 auto; }
</style>
</head>
<body>
	<h2 class="title">설문 조사</h2>
	<form name="survey_form" action="test3.jsp" method="post">
		<table class="table" id="tb1">
			<tbody>
				<tr>
					<th><label for="id">아이디</label></th>
					<td><input type="text" name="id" id="id" required autofocus></td>
				</tr>
				<tr>
					<th><label for="year">출생년도</label></th>
					<td><input type="text" name="year" id="year" required></td>
				</tr>
				<tr>
					<th><label for="name">이름</label></th>
					<td><input type="text" name="name" id="name" required></td>
				</tr>
				<tr>
					<th><label>좋아하는 동물</label></th>
					<td>
						<input type="checkbox" name="pet" value="dog" />강아지<br>
						<input type="checkbox" name="pet" value="cat" />고양이<br>
						<input type="checkbox" name="pet" value="cow" />송아지<br>
						<input type="checkbox" name="pet" value="horse" />망아지<br>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="값 전송" class="btn btn-primary"> &nbsp; &nbsp; &nbsp; &nbsp;
						<input type="reset" value="취소" class=btn>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
	<p></p>
	<hr>
	<p></p>
	<div class="msg">
<%
	String msg = request.getParameter("msg");
%>
	</div>
</body>
</html>