<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
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
<div class="msg">
	<h2>jsp의 8객체 : out, request, response, session, application, config, page, exception</h2>
	<p>별도의 객체 생성 없이 jsp에서 기본적으로 제공하는 객체</p>
<%	
	//서블릿에서 해당 객체를 만드는 방법
	JspWriter pageOut = pageContext.getOut();
	out.println("<h2>out : 출력 객체</h2>");
	out.println("<p>브라우저에 태그를 포함하여 출력할 수 있는 객체</p>");
	out.println(pageOut == out);
	
	//서블릿에서 out 객체 만드는 법
	//PrintWriter out = response.getWriter();
	
	ServletRequest pageRequest = pageContext.getRequest();
	out.println("<h2>request : 요청 객체</h2>");
	out.println("<p>브라우저에서 요청한 정보를 저장하고 있는 객체</p>");
	out.println(pageRequest == request);
	
	ServletResponse pageResponse = pageContext.getResponse();
	out.println("<h2>response : 응답 객체</h2>");
	out.println("<p>브라우저에서 보낼 정보를 저장하고 있는 객체</p>");
	out.println(pageResponse == response);
	
	HttpSession pageSession = pageContext.getSession();
	out.println("<h2>session : 세션 객체</h2>");
	out.println("<p>로그인 정보를 저장하고 있는 객체</p>");
	out.println(pageSession == session);
	
	ServletContext pageServlet = pageContext.getServletContext();
	out.println("<h2>application : 애플리케이션 객체</h2>");
	out.println("<p>프로그램이 시작되어 끝날 때까지 저장하고 있는 객체</p>");
	out.println(pageServlet == application);
	
	ServletConfig pageConfig = pageContext.getServletConfig();
	out.println("<h2>config : 응답 객체</h2>");
	out.println("<p>애플리케이션의 설정 정보를 저장하고 있는 객체</p>");
	out.println(pageConfig == config);
	
	Exception pageException = pageContext.getException();
	out.println("<h2>exception : 예외 처리 객체</h2>");
	out.println("<p>애플리케이션에서 예외 처리를 위한 객체</p>");
	//out.println(pageException == exception);
	
	Object pageObject = pageContext.getPage();
	out.println("<h2>page : 현재 페이지 객체</h2>");
	out.println("<p>현재 페이지에서만 사용할 내용을 저장하고 있는 객체</p>");
	out.println(pageObject == page);
%>
</div>
</body>
</html>