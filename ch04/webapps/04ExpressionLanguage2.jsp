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
<title>Expression Language(표현 언어)</title>
<style>
.msg { clear:both; width:1080px; height:auto; margin:40px auto; }
.msg:after { content:""; display:block; width:100%; clear:both; }
</style>
</head>
<body>
<%
	String irum = "김기태";
	int nayi = 1004;
	int num1 = 90, num2 = 80, num3 = 100;
	
	Human h1 = new Human();
	h1.setCountry("KOREAN");
	h1.setName("김기태");
	h1.setAge(41);
	h1.setHobby("문화탐방 그리고 수렵");
	
	Human h2 = new Human();
	h2.setCountry("CHANISE");
	h2.setName("허쭈니");
	h2.setAge(29);
	h2.setHobby("술 그리고, 매일 술");
	
	List<Human> hList = new ArrayList<Human>();
	hList.add(h1);
	hList.add(h2);
	
	request.setAttribute("irum", irum);
	request.setAttribute("nayi", nayi);
	request.setAttribute("num1", num1);
	request.setAttribute("num2", num2);
	request.setAttribute("num3", num3);
	request.setAttribute("hList", hList);
	
	//EL을 사용한다면, 데이터 바인딩을 일일히 수작업할 필요가 없다. 
	//위 내용은 서블릿에서 전송데이터를 담고, 아래는 받아서 출력하기 위한 문장임.
%>
<div class="msg">
	<h2>Expression Language(표현 언어)</h2>
	<p>표현식보다 더 간결하고, 전송 객체를 쉽게 다룰 수 있도록 표현하여 처리하는 언어로서 태그와 혼용이 쉽다.</p>
	<hr>
	<h3>표현식(Expression)과 표현 언어(Expression Language) 비교</h3>
	<p>만약, 전송된 데이터를 출력하려면, 별도의 데이터 바인딩 과정이 필요하다.</p>
	<p>이름 - ${irum } <%=irum %></p>
	<p>나이 - ${nayi } <%=nayi %></p>
	<p>점수1 - ${num1 } <%=num1 %></p>
	<p>점수2 - ${num2 } <%=num2 %></p>
	<p>점수3 - ${num3 } <%=num3 %></p>
	<hr>
	<h4>표현식의 반복문 이용</h4>
<%
	for(int i=0;i<hList.size();i++){
		Human h = hList.get(i);
%>	
	<p>국가명 : <%=h.getCountry() %></p>
	<p>이름 : <%=h.getName() %></p>
	<p>나이 : <%=h.getAge() %></p>
	<p>취미 : <%=h.getHobby() %></p>
<%
	}
%>
	<hr>
	<h4>표현어의 반복문 이용</h4>
<%
	if(hList != null) {
		for(Human hu : hList) {
			pageContext.setAttribute("hu", hu);
%>
	<p>국가명 : ${hu.getCountry() }</p>
	<p>이름 : ${hu.getName() }</p>
	<p>나이 : ${hu.getAge() }</p>
	<p>취미 : ${hu.getHobby() }</p>
<% 
		}
	} 
%>
	<hr>
	<h4>표현어(EL)와 자바표준태그라이브러리(JSTL)의 반복문인 forEach문 이용</h4>
<c:forEach var="hu" items="${hList }" varStatus="status">
	<p>연번 : ${status.count }</p>	
	<p>국가명 : ${hu.country }</p>
	<p>이름 : ${hu.name }</p>
	<p>나이 : ${hu.age }</p>
	<p>취미 : ${hu.hobby }</p>
</c:forEach>
</div>
</body>
</html>