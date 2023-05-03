<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10ParamDataForm</title>
<link rel="stylesheet" href="table_form_common.css">
<style>

</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
%>
	<h2 class="title">jsp 액션태그의 param 활용 폼</h2>
	<form action="10Param.jsp" method="post">
		<table class="table">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="userid" id="userid" class="data_input" required/></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="userpw" id="userpw" class="data_input" required/></td>
			</tr>
			<tr>
				<th>사용자 모드</th>
				<td>
					<input type="radio" name="loginType" value="user" checked="checked" />일반사용자<br>
					<input type="radio" name="loginType" value="manager" />관리자
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="로그인" class="btn btn-alert"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>