<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = "";

	if(session.getAttribute("id")!=null) {
		id = (String) session.getAttribute("id");
	}
	String path1 = request.getContextPath();
%>
	<header class="hd">
            <nav class="tnb">
                 <div class="tnb_wrap">
                    <ul class="left_tnb">
<%
	if(id.equals("admin") && id != "") {
%>
						<li><a href="<%=path1 %>/admin/index.jsp">관리자</a></li>
<%
	}
%>
<% if(id != "") { %>
                        <li><a href="<%=path1 %>/mypage.jsp">마이페이지</a></li>
                        <li><a href="<%=path1 %>/logout.jsp">로그아웃</a></li>
<% } else if(!(id.equals("admin"))){ %>
                        <li><a href="<%=path1 %>/login.jsp">로그인</a></li>
                        <li><a href="<%=path1 %>/agreement.jsp">회원가입</a></li>
<% } %>
                    </ul>
                    <ul class="right_tnb">
                        <li><a href="https://www.youtube.com/channel/UCGsnKOc0mk4bTXgBswq9Czg" class="sns1">유튜브</a></li>
                        <li><a href="https://www.instagram.com/lotteglogis_official/" class="sns2">인스타그램</a></li>
                        <li><a href="https://www.facebook.com/lotteglogisofficial" class="sns3">페이스북</a></li>
                        <li><a href="https://blog.naver.com/lottegloballogistics" class="sns4">블로그</a></li>
                    </ul>
                 </div>
            </nav>
            <div class="main">
                <div class="main_wrap">
                    <a href="<%=path1 %>/index.jsp" class="logo">
                        <img src="<%=path1 %>/images/img_logo_r.png" alt="롯데글로벌로지스로고">
                    </a>
                    <nav class="gnb">
                        <ul class="gnb_fr">
                            <li><a href="<%=path1 %>/sub1.jsp">회사소개</a>
                                <div class="sub item1">
                                    <ul class="dp2">
                                        <li><a href="<%=path1 %>/sub1.jsp#page1">회사소개</a></li>
                                        <li><a href="<%=path1 %>/sub1.jsp#page2">투자정보</a></li>
                                        <li><a href="<%=path1 %>/sub1.jsp#page3">인재채용</a></li>
                                        <li><a href="<%=path1 %>/sub1.jsp#page4">PR</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="<%=path1 %>/sub2.jsp">사업영역</a>
                                <div class="sub item2">
                                    <ul class="dp2">
                                        <li><a href="<%=path1 %>/sub2.jsp#page1">택배</a></li>
                                        <li><a href="<%=path1 %>/sub2.jsp#page2">SCM</a></li>
                                        <li><a href="<%=path1 %>/sub2.jsp#page3">글로벌</a></li>
                                        <li><a href="<%=path1 %>/sub2.jsp#page4">컨설팅</a></li>
                                        <li><a href="<%=path1 %>/sub2.jsp#page5">네트워크</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="<%=path1 %>/sub3.jsp">ESG 경영</a>
                                <div class="sub item3">
                                    <ul class="dp2">
                                        <li><a href="<%=path1 %>/sub3.jsp#page1">ESG 경영 체계</a></li>
                                        <li><a href="<%=path1 %>/sub3.jsp#page2">인권경영</a></li>
                                        <li><a href="<%=path1 %>/sub3.jsp#page3">사회공헌</a></li>
                                        <li><a href="<%=path1 %>/sub3.jsp#page4">윤리경영</a></li>
                                        <li><a href="<%=path1 %>/sub3.jsp#page5">ESG NEWS</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="<%=path1 %>/sub4.jsp">고객지원</a>
                                <div class="sub item4">
                                    <ul class="dp2">
                                        <li><a href="<%=path1 %>/sub4.jsp#page1">고객의소리</a></li>
                                        <li><a href="<%=path1 %>/sub4.jsp#page2">FAQ</a></li>
                                        <li><a href="<%=path1 %>/sub4.jsp#page3">납품대금지급조회</a></li>
                                        <li><a href="<%=path1 %>/sub4.jsp#page4">공지사항</a></li>
                                        <li><a href="<%=path1 %>/sub4.jsp#page5">사업문의</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </nav>
                    <label for="sitemap_ck" class="sitemap_btn" title="관계 사이트">관계 사이트</label>
                </div>
            </div>
            <input type="checkbox" id="sitemap_ck">
            <div class="sitemap">
                <div class="sitemap_fr">
                    <label for="sitemap_ck" class="close_btn">닫기</label>
                    <div id="realtedSites">
                        <ul class="selectul">
                            <li class="group">식품
                                <ul>
                                    <li><a href="https://www.lottewellfood.com/" target="_blank" title="새 창">롯데웰푸드</a></li>
                                </ul>
                            </li>
                            <li class="group">유통
                                <ul>
                                    <li><a href="https://www.lotteshopping.com/main" target="_blank" title="새 창">롯데백화점</a></li>
                                    <li><a href="http://www.lottehomeshopping.com/user/main/index.lotte" target="_blank" title="새 창">롯데홈쇼핑</a></li>
                                </ul>
                            </li>
                            <li class="group">화학 &amp; 건설
                                <ul>
                                    <li><a href="https://www.lottecon.co.kr/" target="_blank" title="새 창">롯데건설</a></li>
                                    <li><a href="https://www.lottechem.com/" target="_blank" title="새 창">롯데케미칼</a></li>
                                    <li><a href="https://www.lottefinechem.com/" target="_blank" title="새 창">롯데정밀화학</a></li> 
                                    <li><a href="http://www.kpchemtech.co.kr/html/00_main/main.php" target="_blank" title="새 창">케이피캠텍</a></li>
                                    <li><a href="https://www.lotteal.co.kr/" target="_blank" title="새 창">롯데알미늄</a></li>
                                </ul>
                            </li>
                            <li class="group">호텔 &amp; 서비스
                                <ul>
                                    <li><a href="https://www.lottehotel.com/global/ko.html" target="_blank" title="새 창">롯데호텔</a></li>
                                    <li><a href="https://www.lotteworld.com/gate.html" target="_blank" title="새 창">롯데월드</a></li>
                                </ul>
                            </li>
                            <li class="group">기타
                                <ul>
                                    <li><a href="https://www.lottecard.co.kr/app/LPMAIAA_V100.lc" target="_blank" title="새 창">롯데카드</a></li>
                                    <li><a href="https://www.lotteins.co.kr/index2.jsp" target="_blank" title="새 창">롯데손해보험</a></li>
                                    <li><a href="https://www.lottecap.com/ma/ma/MAMA00100" target="_blank" title="새 창">롯데캐피탈</a></li>
                                    <li><a href="https://www.lottefoundation.or.kr/" target="_blank" title="새 창">롯데장학재단</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>