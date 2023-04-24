<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼의 데이터 값을 전송받은 곳</title>
<!-- 부트스트랩 css -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.title { text-align:center; }
#lst1, .msg, #tb1 { width:800px; margin:0 auto; }
</style>
</head>
<body>
<%
	String msg = request.getParameter("msg");
%>
<div class="msg">
	<h2 class="title">요청 정보와 헤더 정보 보기1</h2>
	<ul class="list" id="lst1">
		<li>메세지 : <%=msg %></li>
		<li>프로토콜 : <%=request.getProtocol() %></li>
		<li>요청된 서버이름 : <%=request.getServerName() %></li>
		<li>요청방식 : <%=request.getMethod() %></li>
		<li>파라미터열 : <%=request.getQueryString() %></li>
		<li>요청주소 : <%=request.getRequestURL() %></li>
		<li>요청URI : <%=request.getRequestURI() %></li>
		<li>서버이름 : <%=request.getRemoteHost() %></li>
		<li>서버주소 : <%=request.getRemoteAddr() %></li>
		<li>서버포트 : <%=request.getRemotePort() %></li>
		<li>서버포트2 : <%=request.getServerPort() %></li>
		<li>현재 문서의 경로 : <%=request.getContextPath() %></li>
		<li>어셉트(Accept) : <%=request.getHeader("Accept") %></li>
		<li>호스트(host)주소 : <%=request.getHeader("host") %></li>
	</ul>
	<hr>
	<table class="table" id="tb1">
		<thead><tr><td>헤더이름</td><td>헤더값</td></tr></thead>
		<tbody>
		<%
		Enumeration e = request.getHeaderNames();
		while(e.hasMoreElements()){
			String headerName = (String)e.nextElement();
		%>
		<tr>
			<td><%=headerName %></td>
			<td><%=request.getHeader(headerName) %></td>
		</tr>
		<%
		}
		%>
		</tbody>
	</table>
	<hr>
	<a href="test3_form.jsp?msg=<%=msg %>" class="btn btn-primary">설문 입력 폼으로</a>
</div>
</body>
</html>