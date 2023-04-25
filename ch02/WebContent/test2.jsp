<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="dto.Student" %>
<%!
/*
class Student{
	public int sno;
	public String sname;
	public int point;
}
*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java 객체 제어</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.title { text-align:center; }
#tb1, .msg { width:800px; margin:0 auto; }
</style>
</head>
<body>
<%
	Student s1 = new Student();
	s1.sno = 1;
	s1.sname = "이수만";
	s1.point = 100;
	request.setAttribute("s1", s1);

	ArrayList<String> lst1 = new ArrayList<>();
	lst1.add("이동혁");
	lst1.add("황인준");
	lst1.add("나재민");
	lst1.add("이제노");
	lst1.add("이마크");
	request.setAttribute("lst1", lst1);	//리스트를 한꺼번에 request 객체에 담기
	request.setAttribute("lst12", lst1.get(2));	//특정 번째 요소인 request 객체에 담기
	
	HashSet<String> lst2 = new HashSet<>();
	lst2.add("종천러");
	lst2.add("박지성");
	lst2.add("나유타");
	lst2.add("서영호");
	request.setAttribute("lst2", lst2);	//set을 한꺼번에 request 객체에 담기
	
	HashMap<String, String> map = new HashMap<>();
	map.put("t1", "김도영");
	map.put("t2", "정재현");
	map.put("t3", "김정우");
	map.put("t4", "문태일");
	map.put("t5", "이태용");
	request.setAttribute("map", map);	//map을 한꺼번에 request 객체에 담기
	request.setAttribute("map2", "t2");	//map에서 특정 키에 해당하는 것만 request 객체에 담기
	//out.println("<a href='test3.jsp?map="+map+"'></a>");	클릭시 해당 페이지로 이동
	RequestDispatcher rd = request.getRequestDispatcher("test3.jsp");	//보내질 곳 지정
	rd.forward(request, response);	//url은 안 바뀌면서 test3.jsp의 내용을 forward하여 출력
	//response.sendRedirect("test3.jsp?map="+map);	해당 페이지로 이동
%>
<div class="msg">
</div>
</body>
</html>