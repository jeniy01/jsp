<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = (String)pageContext.getAttribute("name");
	String age = (String)pageContext.getAttribute("age");
%>
<div class="msg">
	<h2 class="title">포함되는 파일</h2>
	<div class="form-group">
		<p>Name : <%=name %></p>
		<p>Age : <%=age %></p>
	</div>
</div>