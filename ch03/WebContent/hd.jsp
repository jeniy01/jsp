<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%   
	String path = request.getContextPath();	//현재 프로젝트 디렉토리의 위치를 저장하고 있음
%>
<header class="header">
	<nav class="nav">
		<a href="<%=path %>/test1.jsp">페이지1</a>
		<a href="<%=path %>/test2.jsp">페이지2</a>
		<a href="<%=path %>/test3.jsp">페이지3</a>
		<a href="<%=path %>/sub/test7.jsp">테스트7으로 이동</a>
	</nav>
</header>