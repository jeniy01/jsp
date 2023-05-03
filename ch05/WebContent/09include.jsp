<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String name = request.getParameter("name");
%>        
<div class="msg">
	<h2 class="title">include(삽입) 문서</h2>
	<p>저의 이름은 <%=name %>입니다.</p>
</div>