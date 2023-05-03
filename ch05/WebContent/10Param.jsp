<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10Param - param 액션태그</title>
<link rel="stylesheet" href="table_form_common.css">
<style>
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");
	String loginType = request.getParameter("loginType");
%>
<div class="msg">
<% if(loginType.equals("user")){ %>
	<jsp:forward page="10ParamRecieve.jsp">
		<jsp:param value="일반고객" name="username"/>
	</jsp:forward>
<% } else { %>
	<jsp:forward page="10ParamRecieve.jsp">
		<jsp:param value="관리자" name="username"/>
	</jsp:forward>
<% } %>
</div>
</body>
</html>