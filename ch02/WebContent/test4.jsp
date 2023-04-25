<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("pageData", "페이지컨텍스트");	//현재 페이지 내에서만 유효
	request.setAttribute("requestData", "요청한데이터");	//요청을 받는 페이지 내에서만 유효
	session.setAttribute("sessionData", "세션데이터");	//로그인 되어 있는 동안만 유효
	application.setAttribute("applicationData", "애플리케이션데이터");	//현재 애플리케이션이 실행중일때까지만 유효
	RequestDispatcher rd = request.getRequestDispatcher("test5.jsp");	//보내질 곳 지정
	rd.forward(request, response);	//url은 안바뀌면서 test5.jsp의 내용을 forward하여 출력
%>