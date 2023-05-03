<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <jsp:param name="name" value="정재현" />
<jsp:param name="hd" value="header.jsp" />
<jsp:param name="ft" value="footer.jsp" /> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>09includeFileData</title>
<link rel="stylesheet" href="table_form_common.css">
<style>
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	String name = "정재현";
	String hd = "header.jsp";
	String ft = "footer.jsp";
%>
<div class="msg">
	<jsp:include page="<%=hd %>" />
</div>
<hr>
<jsp:include page="09include.jsp">
	<jsp:param value="정재현" name="name" />
</jsp:include>	
<div class="msg">
<a href="09include.jsp?name=<%=name %>" class="btn btn-check">데이터 전송</a>
</div>
<hr>
<div class="msg">
	<jsp:include page="<%=ft %>" />
</div>
</body>
</html>