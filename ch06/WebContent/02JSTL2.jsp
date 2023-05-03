<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02JSTL2 - jstl fmt</title>
<link rel="stylesheet" href="table_form_common.css">
<style>
</style>
</head>
<body>
<div class="msg">
	<h1 class="title">JSTL(Java Standard Tag Library) : 자바 표준 태그 라이브러리 fmt(format)</h1>
	<c:set var="num" value="1234567.86765" />
	<c:set var="data" value="3,650" />
	<c:set var="su1" value="0" />
	<c:set var="su2" value="4" />
	<c:set var="today" value="<%=new Date() %>" />
	<%-- 01. parseNumber문 --%>
	<h2 class="title">01. 숫자 데이터 변환문(fmt:parseNumber)</h2>
	<p><fmt:parseNumber value="${data }" pattern="0,000" var="num2" /></p>
	<p>1년은 ${num2*24/10 }시간</p>
	<br>
	<hr>
	<%-- 02. formatNumber문 --%>
	<h2 class="title">02. 숫자 표시형식 지정문(fmt:formatNumber)</h2>
	<h3>groupingUsed 속성</h3>
	<p><fmt:formatNumber value="${num }" groupingUsed="true" /></p>
	<p><fmt:formatNumber value="${su1 }" groupingUsed="true" /></p>
	<p><fmt:formatNumber value="${su2 }" groupingUsed="true" /></p>
	<hr>
	<h3>pattern 속성 : 숫자 코드(#, 0)</h3>
	<%-- 남은 자릿수 무시 : # --%>
	<p>num : <fmt:formatNumber value="${num }" pattern="#.##" /></p>
	<p>su1 : <fmt:formatNumber value="${su1 }" pattern="#.##" /></p>
	<p>su2 : <fmt:formatNumber value="${su2 }" pattern="#.##" /></p>
	<br>
	<%-- 남은 자릿수 채움 : 0 --%>
	<p>num : <fmt:formatNumber value="${num }" pattern="000000.00" /></p>
	<p>su1 : <fmt:formatNumber value="${su1 }" pattern="000000.00" /></p>
	<p>su2 : <fmt:formatNumber value="${su2 }" pattern="000000.00" /></p>
	<br>
	<%-- 천단위 구분 : #,##0 --%>
	<p>num : <fmt:formatNumber value="${num }" pattern="#,##0" /></p>
	<p>su1 : <fmt:formatNumber value="${su1 }" pattern="#,##0" /></p>
	<p>su2 : <fmt:formatNumber value="${su2 }" pattern="#,##0" /></p>
	<p>num : <fmt:formatNumber value="${num }" pattern="\ #,##0" /></p>
	<br>
	<hr>
	<h3>type 속성 : persent, currency</h3>
	<p>num : <fmt:formatNumber value="${num }" type="percent" /></p>
	<p>su1 : <fmt:formatNumber value="${su1 }" type="percent" /></p>
	<p>su2 : <fmt:formatNumber value="${su2 }" type="percent" /></p>
	<br>
	<fmt:setLocale value="ko_kr" />
	<p>num : <fmt:formatNumber value="${num }" type="currency" /></p>
	<p>su1 : <fmt:formatNumber value="${su1 }" type="currency" /></p>
	<p>su2 : <fmt:formatNumber value="${su2 }" type="currency" /></p>
	<p>시간 : <fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" /></p>
	<br>
	<fmt:setLocale value="ja_JP" />
	<p>num : <fmt:formatNumber value="${num }" type="currency" /></p>
	<p>su1 : <fmt:formatNumber value="${su1 }" type="currency" /></p>
	<p>su2 : <fmt:formatNumber value="${su2 }" type="currency" /></p>
	<p>시간 : <fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" /></p>
	<br>
	<fmt:setLocale value="en_US" />
	<p>num : <fmt:formatNumber value="${num }" type="currency" /></p>
	<p>su1 : <fmt:formatNumber value="${su1 }" type="currency" /></p>
	<p>su2 : <fmt:formatNumber value="${su2 }" type="currency" /></p>
	<p>시간 : <fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" /></p>
	<br>
	<fmt:setLocale value="zh_CN" />
	<p>num : <fmt:formatNumber value="${num }" type="currency" /></p>
	<p>su1 : <fmt:formatNumber value="${su1 }" type="currency" /></p>
	<p>su2 : <fmt:formatNumber value="${su2 }" type="currency" /></p>
	<p>시간 : <fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" /></p>
	<br>
	<fmt:setLocale value="zh_TW" />
	<p>num : <fmt:formatNumber value="${num }" type="currency" /></p>
	<p>su1 : <fmt:formatNumber value="${su1 }" type="currency" /></p>
	<p>su2 : <fmt:formatNumber value="${su2 }" type="currency" /></p>
	<p>시간 : <fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" /></p>
	<fmt:setLocale value="vi_VN" />
	<p>num : <fmt:formatNumber value="${num }" type="currency" /></p>
	<p>su1 : <fmt:formatNumber value="${su1 }" type="currency" /></p>
	<p>su2 : <fmt:formatNumber value="${su2 }" type="currency" /></p>
	<p>시간 : <fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" /></p>
	<br>
	<fmt:setLocale value="de_DE" />
	<p>num : <fmt:formatNumber value="${num }" type="currency" /></p>
	<p>su1 : <fmt:formatNumber value="${su1 }" type="currency" /></p>
	<p>su2 : <fmt:formatNumber value="${su2 }" type="currency" /></p>
	<p>시간 : <fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" /></p>
	<fmt:setLocale value="ko_kr" />

	<hr><br><hr>
	<c:set var="ori_date" value="2023-05-03" />
	<c:set var="ori_time" value="16:45:37" />
	<c:set var="today2" value="<%=new Date() %>" />	
	<%-- 03. parseDate 문  --%>
	<h2 class="title">03. 날짜 데이터 변환문(fmt:parseDate)</h2>
	<fmt:parseDate value="${ori_date }" pattern="yyyy-MM-dd" var="date1"/>
	<fmt:parseDate value="${ori_time }" pattern="HH:mm:ss" var="time1"/>
	<p>문자열을 날짜 데이터로 : ${date1 }</p>
	<p>문자열을 시간 데이터로 : ${time1 }</p>
	<br>
	<hr><br><hr>
	<%-- 04. formatDate 문  --%>
	<h2 class="title">04. 날짜 표시형식 지정문(fmt:formatDate)</h2>
	<p>${today }</p>
	<h3>type 속성 : both, date, time</h3>
	<p>type : both - <fmt:formatDate value="${today }" type="both"/></p>
	<p>type : date - <fmt:formatDate value="${today }" type="date"/></p>
	<p>type : time - <fmt:formatDate value="${today }" type="time"/></p>
	<h3>dateStyle/timeStyle 속성</h3>
	<h4>date의 경우</h4>
	<p>dateStyle : full - <fmt:formatDate value="${today }" type="date" dateStyle="full"/></p>
	<p>dateStyle : long - <fmt:formatDate value="${today }" type="date" dateStyle="long"/></p>
	<p>dateStyle : medium - <fmt:formatDate value="${today }" type="date" dateStyle="medium"/></p>
	<p>dateStyle : short - <fmt:formatDate value="${today }" type="date" dateStyle="short"/></p>
	<h4>time의 경우</h4>
	<p>dateStyle : full - <fmt:formatDate value="${today }" type="time" dateStyle="full"/></p>
	<p>dateStyle : long - <fmt:formatDate value="${today }" type="time" dateStyle="long"/></p>
	<p>dateStyle : medium - <fmt:formatDate value="${today }" type="time" dateStyle="medium"/></p>
	<p>dateStyle : short - <fmt:formatDate value="${today }" type="time" dateStyle="short"/></p>
	<h4>both의 경우</h4>
	<p>timeStyle : full - <fmt:formatDate value="${today }" type="both" timeStyle="full"/></p>
	<p>timeStyle : long - <fmt:formatDate value="${today }" type="both" timeStyle="long"/></p>
	<p>timeStyle : medium - <fmt:formatDate value="${today }" type="both" timeStyle="medium"/></p>
	<p>timeStyle : short - <fmt:formatDate value="${today }" type="both" timeStyle="short"/></p>
	<br>
	<p>dateStyle : full - <fmt:formatDate value="${today }" type="both" dateStyle="full"/></p>
	<p>dateStyle : long - <fmt:formatDate value="${today }" type="both" dateStyle="long"/></p>
	<p>dateStyle : medium - <fmt:formatDate value="${today }" type="both" dateStyle="medium"/></p>
	<p>dateStyle : short - <fmt:formatDate value="${today }" type="both" dateStyle="short"/></p>
	<h3>pattern 속성</h3>
	<!--
	y:년도, M:월, d:일, D:1월1일부터 몇 번째 날인지, E:요일
	a:오전/오후 h:12시간제, H:24시간제, m:분, s:초, S:밀리초  
	 -->
	<p><fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" /></p>
	<p><fmt:formatDate value="${today }" pattern="yy/M/d E H:m:s" /></p>
	<br>
	<hr><br>
	<%-- 05. timeZone 문  --%>
	<h2 class="title">05. 타임존 표시형식 지정문(fmt:timeZone)</h2>
	<p>fmt:timeZone은 개폐 태그 사이에 있는 데이터에만 타임존을 적용</p>
	<h3>서울</h3>
	<p>
		<fmt:timeZone value="Asia/Seoul">
			<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" />
		</fmt:timeZone>
	</p>
	<h3>토쿄</h3>
	<p>
		<fmt:timeZone value="Asia/Tokyo">
			<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" />
		</fmt:timeZone>
	</p>
	<h3>뉴욕</h3>
	<p>
		<fmt:timeZone value="America/New_York">
			<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" />
		</fmt:timeZone>
	</p>
	<h3>런던</h3>
	<p>
		<fmt:timeZone value="Europe/London">
			<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" />
		</fmt:timeZone>
	</p>
	<h3>파리</h3>
	<p>
		<fmt:timeZone value="Europe/Paris">
			<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" />
		</fmt:timeZone>
	</p>
	<h3>세계표준시</h3>
	<p>
		<fmt:timeZone value="UTC">
			<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" />
		</fmt:timeZone>
	</p>
	<br>
	<hr><br>
	<%-- 06. setTimeZone 문 --%>
	<h2 class="title">06. 타임존 지정문(fmt:setTimeZone)</h2>
	<p>fmt:setTimeZone은 설정문 이후의 모든 타임존에 적용</p>
	<h3>서울</h3>
	<p>
		<fmt:setTimeZone value="Asia/Seoul" />
		<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" />
	</p>
	<h3>토쿄</h3>
	<p>
		<fmt:setTimeZone value="Asia/Tokyo" />
		<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" />
	</p>
	<h3>뉴욕</h3>
	<p>
		<fmt:setTimeZone value="America/New_York" />
		<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" />
	</p>
	<h3>런던</h3>
	<p>
		<fmt:setTimeZone value="Europe/London" />
		<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" />
	</p>
	<h3>파리</h3>
	<p>
		<fmt:setTimeZone value="Europe/Paris" />
		<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" />
	</p>
	<h3>세계표준시</h3>
	<p>
		<fmt:setTimeZone value="UTC" />
		<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" />
	</p>
	<fmt:setTimeZone value="Asia/Seoul" />
	<br>
	<hr>
</div>
</body>
</html>