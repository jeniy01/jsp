<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String id = "";
	if(session.getAttribute("id")!=null) {
		id = (String) session.getAttribute("id");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>로그인 페이지</title>
<style>
</style>
</head>
<body>
<div class="container">
	<header class="header">
		<nav class="nav">
			<%
				if(id.equals("admin") && id != "") {
			%>
			<a href="admin.jsp">관리자</a>
			<%
				}
			%>
			<% if(id != "") { %>
			<a href="mypage.jsp">마이페이지</a>
			<a href="logout.jsp">로그아웃</a>
			<% } else if(!(id.equals("admin"))){ %>
			<a href="login.jsp">로그인</a>
			<a href="join.jsp">회원가입</a>
			<% } %>
			<a href="test6.jsp">테스트6</a>
		</nav>
	</header>
	<hr>
<div class="content" style="min-height:500px">
	<h2 class="title">로그인 폼</h2>
	<form name="login_form" action="loginpro.jsp" method="post">
		<table class="table" id="tb1">
			<tbody>
				<tr>
					<th><label for="id">아이디</label></th>
					<td><input type="text" name="id" id="id" required autofocus></td>
				</tr>
				<tr>
					<th><label for="pw">비밀번호</label></th>
					<td><input type="password" name="pw" id="pw" required></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="로그인" class="btn btn-primary"> &nbsp; &nbsp; &nbsp; &nbsp;
						<input type="reset" value="취소" class="btn">
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</div>
	<hr>
	<%@ include file="ft.jsp" %>
</div>
</body>
</html>