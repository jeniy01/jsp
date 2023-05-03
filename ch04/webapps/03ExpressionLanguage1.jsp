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
<title>Expression Language(표현 언어)</title>
<style>
.msg { clear:both; width:1080px; height:auto; margin:40px auto; }
.msg:after { content:""; display:block; width:100%; clear:both; }
</style>
</head>
<body>
<%
	String title = "I Live Kitae, JSP EL TEST";		//문자열
	String[] colors = {"gold", "sliver", "purple", "yello", "green"};  //배열
	Map<String, String> map = new HashMap<>();
	map.put("name1", colors[0]);
	map.put("name2", colors[1]);
	map.put("name3", colors[2]);
	
	request.setAttribute("title", title);
	request.setAttribute("colors", colors);
	request.setAttribute("map", map);
	
	//EL을 사용한다면, 데이터 바인딩을 일일히 수작업할 필요가 없다. 
	//위 내용은 서블릿에서 전송데이터를 담고, 아래는 받아서 출력하기 위한 문장임.
%>
<div class="msg">
	<h2>Expression Language(표현 언어)</h2>
	<p>표현식보다 더 간결하고, 전송 객체를 쉽게 다룰 수 있도록 표현하여 처리하는 언어로서 태그와 혼용이 쉽다.</p>
	<hr>
	<h3>표현식(Expression)</h3>
	<p>만약, 전송된 데이터를 출력하려면, 별도의 데이터 바인딩 과정이 필요하다.</p>
	<p><%=title %></p>
<%
	for(int i=0;i<colors.length;i++){
%>	
	<p><%=colors[i] %></p>
<%
	}
%>
	<h3>표현 언어(Expression Language)</h3>
	<p>${title }</p>
	<p>${colors }</p>
	<p>${map }</p>
</div>
</body>
</html>