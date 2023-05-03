<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Header(헤더)</title>
<style>
.msg { clear:both; width:1080px; height:auto; margin:40px auto; }
.msg:after { content:""; display:block; width:100%; clear:both; }
</style>
</head>
<body>
<%@ include file="common.jsp" %>
<div class="msg">
	<h2>Header 정보</h2>
	<p>해당 페이지를 보내거나 요청하면,그 요청된 모든 정보를 말함</p>
	<hr>
	<h2>request Header</h2>
<%
	Enumeration e = request.getHeaderNames();
	while(e.hasMoreElements()){
		String name = (String) e.nextElement();
		String value = request.getHeader(name);
		out.println("<h3> name : "+name+", value="+value+"</h3>");
	}
%>
	<h2>Server Or Host Main info</h2>
<%
	out.println("<h3> 접속 IP 주소 : "+request.getLocalAddr()+"</h3>");
	InetAddress ipaddr = InetAddress.getLocalHost();
	out.println("<h3> 접속 서버 IP 주소 : "+ipaddr+"</h3>");
	out.println("<h3> 현재 프로젝트 홈 디렉토리 주소 : "+request.getContextPath()+"</h3>");
%>
</div>
</body>
</html>