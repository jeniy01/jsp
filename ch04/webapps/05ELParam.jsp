<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<%@ page import="ch04.Human" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Expression Language Param(표현 언어의 매개변수) 값 받기</title>
<style>
.msg { clear:both; width:1080px; height:auto; margin:40px auto; }
.msg:after { content:""; display:block; width:100%; clear:both; }
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	String pageName = (String) pageContext.getAttribute("pname");	//pageContext는 set되는 페이지에서만 인식 가능
	String reqName = (String) request.getAttribute("rname");	//forward를 해야 인식이 가능
	String sesName = (String) session.getAttribute("sname");
	String appName = (String) application.getAttribute("aname");
	
	String id1 = request.getParameter("id");
	String[] hobby = {"선택안함","선택안함","선택안함","선택안함","선택안함"};
	hobby = request.getParameterValues("hobby");
%>
<div class="msg">
	<h2>scope 데이터의 표현식 대 표현언어</h2>
	<p><%=pageName %> : ${pname }</p>
	<p><%=reqName %> : ${rname }</p>
	<p><%=sesName %> : ${sname }</p>
	<p><%=appName %> : ${aname }</p>
	<p><%=id1 %> : ${param.id }</p>
	<hr>
	<h4>좋아하는 스포츠</h4>
	<ul>
		<li>첫 번째 - <%=hobby[0] %> : ${paramValues.hobby[0] }</li>
		<li>두 번째 - <%=hobby[1] %> : ${paramValues.hobby[1] }</li>
	</ul>
</div>
</body>
</html>