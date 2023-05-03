<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10ParamRecieve -  param 값을 받아 처리</title>
<link rel="stylesheet" href="table_form_common.css">
<style>
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
%>
<div class="msg">
	<h2 class="title">param 데이터 받기</h2>
	<p><%=request.getParameter("username") %>님이 로그인 하였습니다.</p>
	<a href="javascript:history.go(-1)" class="btn btn-info">뒤로 가기</a>
	<h2 class="title">학습한 주요 액션 태그</h2>
	<p><pre>
	jsp:useBean id="인스턴스명" scope="유효범위" class="패키지명.클래스명"
	jsp:setProperty property="속성명" name="인스턴스명" value="바운딩값또는식"
	jsp:getProperty property="속성명" name="인스턴스명"
	jsp:include page="포함시킬파일명"
	jsp:param name="매개변수명" value="값"
	jsp:forward page="포워드할페이지명"
	jsp:param은 jsp:include문이나 jsp:forward의 내부 지식 요소로 기입해야 유효함
	</pre></p>
</div>
</body>
</html>