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
<title>디렉티브(Directive)</title>
<style>
.msg { clear:both; width:1080px; height:auto; margin:40px auto; }
.msg:after { content:""; display:block; width:100%; clear:both; }
</style>
</head>
<body>
<%@ include file="common.jsp" %>
<div class="msg">
	<h2>디렉티브(Directive) 태그</h2>
	<p>jsp 페이지를 어떻게 처리할 것인지 설정하는 태그</p>
	<hr>
	<h3>page</h3>
	<p>현재 jsp 페이지에 대한 정보를 설정하거나 필요한 클래스를 불러오는 디렉티브</p>
	<h3>include</h3>
	<p>jsp 페이지의 특정 영역에 다른 문서의 내용을 포함을 시키는 디렉티브</p>
	<h3>taglib</h3>
	<p>jsp 페이지에 사용할 태그라이브러리를 지정하는 디렉티브</p>
</div>
</body>
</html>