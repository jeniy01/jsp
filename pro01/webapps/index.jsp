<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>포트폴리오 - 롯데글로벌로지스</title>
    
    <meta name="subject" content="롯데글로벌로지스 벤치마킹 사이트">
    <meta name="keywords" content="롯데글로벌로지스, 택배, 운송, 서비스">
    <meta name="description" content="롯데글로벌로지스 홈페이지에 방문하신 것을 환영합니다.">
    <meta name="author" content="by. jeniy01">

    <link rel="shortcut icon" href="<%=path %>/images/favicon.ico">
    <!-- https://jeniy01.github.io/web1 -->
    <!-- 오픈그래프 설정 -->
    <meta name="og:site_name" content="롯데글로벌로지스">
    <meta name="og:title" content="포트폴리오 - 롯데글로벌로지스">
    <meta name="og:description" content="롯데글로벌로지스 홈페이지에 방문하신 것을 환영합니다.">
    <meta name="og:url" content="https://jeniy01.github.io/web1">
    <meta name="og:image" content="<%=path %>/images/thumbnail.jpg">
   
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=path %>/common.css">
    <link rel="stylesheet" href="<%=path %>/main.css">
    <style>
    /*내부스타일*/
    </style>
</head>
<body>
    <div class="container">
    	<%@ include file="./header.jsp" %>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <video src="<%=path %>/movie/main_pr.mp4" muted autoplay loop></video>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_title" style="display:none;">지구가 작아지는 물류혁신</h2>
                <div class="page_wrap">
                    <div class="tit_box">
                        <h3 class="sub_title">롯데글로벌로지스</h3>
                        <h2 class="main_title">지구가 작아지는 물류혁신</h2>
                    </div>
                    <article class="pg1_btn_box">
                        <input type="radio" name="pg_ra" id="pg1_ra1" class="pg1_ra" checked>
                        <label for="pg1_ra1" class="item1">택배서비스</label>
                        <input type="radio" name="pg_ra" id="pg1_ra2" class="pg1_ra">
                        <label for="pg1_ra2" class="item2">SCM(창고)</label>
                        <input type="radio" name="pg_ra" id="pg1_ra3" class="pg1_ra">
                        <label for="pg1_ra3" class="item3">SCM(수송/배송)</label>
                        <input type="radio" name="pg_ra" id="pg1_ra4" class="pg1_ra">
                        <label for="pg1_ra4" class="item4">항만하역</label>
                        <input type="radio" name="pg_ra" id="pg1_ra5" class="pg1_ra">
                        <label for="pg1_ra5" class="item5">해운포워딩</label>
                        <input type="radio" name="pg_ra" id="pg1_ra6" class="pg1_ra">
                        <label for="pg1_ra6" class="item6">항공포워딩</label>
                        <div class="ban_fr">
                            <ul class="ban_box">
                                <li class="item1">
                                    <img src="<%=path %>/images/img_innovation01_01.jpg" alt="택배서비스" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">01</h2>
                                        <h2 class="ban_tit2">택배서비스</h2>
                                        <p class="ban_com">24시간 빠르고 정확한<br>Door To Door 택배서비스를<br>제공합니다.
                                        </p>
                                    </div>
                                </li>
                                <li class="item2">
                                    <img src="<%=path %>/images/img_innovation02_01.jpg" alt="SCM(창고)" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">02</h2>
                                        <h2 class="ban_tit2">SCM(창고)</h2>
                                        <p class="ban_com">탁월한 W&T서비스를 통해<br> 최적의 물류프로세스를<br>실현합니다.
                                        </p>
                                    </div>
                                </li>
                                <li class="item3">
                                    <img src="<%=path %>/images/img_innovation03_01.jpg" alt="SCM(수송/배송)" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">03</h2>
                                        <h2 class="ban_tit2">SCM(수송/배송)</h2>
                                        <p class="ban_com">최적의 운송 Mode를 통한<br>운송 서비스를 제공합니다.
                                        </p>
                                    </div>
                                </li>
                                <li class="item4">
                                    <img src="<%=path %>/images/img_innovation04_01.jpg" alt="항만하역" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">04</h2>
                                        <h2 class="ban_tit2">항만하역</h2>
                                        <p class="ban_com">첨단장비와 전문인력을 보유한<br>롯데글로벌로지스가 대한민국의<br>항만을 새롭게 움직입니다.
                                        </p>
                                    </div>
                                </li>
                                <li class="item5">
                                    <img src="<%=path %>/images/img_innovation05_01.jpg" alt="해운포워딩" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">05</h2>
                                        <h2 class="ban_tit2">해운포워딩</h2>
                                        <p class="ban_com">다양한 형태의 해상 수출입<br>화물에 대해 최상의 해상운송<br>서비스를 제공합니다.
                                        </p>
                                    </div>
                                </li>
                                <li class="item6">
                                    <img src="<%=path %>/images/img_innovation06_01.jpg" alt="항공포워딩" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">06</h2>
                                        <h2 class="ban_tit2">항공포워딩</h2>
                                        <p class="ban_com">세계를 거미줄처럼 연결하는<br>글로벌 네트워크로 원-스톱<br>항공물류 서비스를 제공합니다.
                                        </p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </article>
                </div>
            </section>
            <section class="page" id="page2">
                <h2 class="page_title" style="display:none">국내, 해외 네트워크 기반 글로벌 원스톱 서비스 제공</h2>
                <div class="page_wrap">
                    <div class="tit_box">
                        <h3 class="sub_title">국내, 해외 네트워크 기반</h3>
                        <h2 class="main_title">글로벌 원스톱 서비스 제공</h2>
                </div>
                <article class="grid_fr">
                    <ul class="grid_box">
                        <li>
                            <a href="" class="item1">
                                <h3 class="grid_tit">국내 네트워크</h3>
                                <p class="grid_com">국내 모든 지역을 연결하는<br>Total Logistics Service를 통해 안전하고<br>신속한 물류운송 서비스를 제공합니다.
                                </p>
                            </a>
                            <a href="" class="item2">
                                <h3 class="grid_tit">해외 네트워크</h3>
                                <p class="grid_com">전 세계를 하나로 연결하는 해외 네트워크로<br>Top-Tier 글로벌 종합물류기업을 향해<br>힘차게 비상합니다.
                                </p>
                            </a>
                        </li>
                        <li>
                            <a href="" class="item3">
                                <h3 class="grid_tit">컨테이너 내륙운송</h3>
                                <p class="grid_com">신속하고 정확한 수출입<br>컨테이너 운송서비스를<br>제공합니다.
                                </p>
                            </a>
                        </li>
                        <li>
                            <a href="" class="item4">
                                <h3 class="grid_tit">국제특송</h3>
                                <p class="grid_com">세계 주요 지역의 수출입물품에<br>대해 신속한 통관 및 정확한<br>배송 서비스를 제공합니다.
                                </p>
                            </a>
                            <a href="" class="item5">
                                <h3 class="grid_tit">ESG 경영 체계</h3>
                                <p class="grid_com">환경 보호를 위해 앞장서고,<br>다양한 사회공헌 활동을 위해 노력하며,<br>철저히 법과 윤리를 지켜서 경영합니다.
                                </p>
                            </a>
                        </li>
                    </ul>
                </article>
            </div>
        </section>
        <section class="page" id="page3">
            <h2 class="page_title" style="display:none">회사소개</h2>
            <div class="page_wrap">
                <div class="tit_box">
                    <h3 class="sub_title">IR</h3>
                    <h2 class="main_title" style="color:#fff">INVESTOR RELATIONS</h2>
                </div>
                <article class="col_fr">
                    <ul class="col_box">
                        <li class="left">
                            <p class="one_line"><span class="dot">롯데글로벌로지스</span> <span class="gtxt">051504</span></p>
                            <div class="inv_p">
                                <p class="large_txt">29,900</p>
                                <p class="small_txt">
                                    <span class="ltxt">2023/04/19 15:29:38</span><br>
                                    <span class="btxt">─ 0 &nbsp; &nbsp; 0.00%</span>
                                </p>
                            </div>
                            <dl class="col_dl">
                                <dd>
                                    <h4 class="d_tit">시가</h4>
                                    <p class="d_com">29,800원</p>
                                </dd>
                                <dd>
                                    <h4 class="d_tit">고가</h4>
                                    <p class="d_com">29,450원</p>
                                </dd>
                                <dd>
                                    <h4 class="d_tit">저가</h4>
                                    <p class="d_com">29,600원</p>
                                </dd>
                                <dd>
                                    <h4 class="d_tit">전일가격</h4>
                                    <p class="d_com">29,600원</p>
                                </dd>
                                <dd>
                                    <h4 class="d_tit">거래량</h4>
                                    <p class="d_com">21,577주</p>
                                </dd>
                                <dd>
                                    <h4 class="d_tit">거래대금</h4>
                                    <p class="d_com">691,197,058원</p>
                                </dd>
                            </dl>
                        </li>
                        <li class="right">
                            <a href="" class="item1"><span>재무제표</span></a>
                            <a href="" class="item2"><span>공시현황</span></a>
                            <a href="" class="item3"><span>IR자료실</span></a>
                        </li>
                    </ul>
                </article>
            </div>
        </section>
        <section class="page" id="page4">
            <h2 class="page_title" style="display:none">공지사항</h2>
            <div class="page_wrap">
                <div class="tit_box">
                    <h3 class="sub_title">롯데글로벌로지스의 새로운 소식을 전해드립니다.</h3>
                    <h2 class="main_title">공지사항</h2>
                </div>
                <a href="" class="more">+</a>
                <article class="board_fr">
                    <table class="tb1">
                        <tbody>
                            <tr>
                                <td class="td1">5</td>
                                <td class="td2">
                                    <a href="">
                                        <h3 class="td_tit">‘제로 웨이스트 챌린지 with 롯데글로벌로지스’ 이벤트</h3>
                                        <p class="td_com">제로웨이스트 챌린지 With 롯데글로벌로지스 이벤트 - 롯데글로벌로지스가 지구의 날(4/22)을 맞아 건강한 지구를 만들어 가기 위해 ‘제로 웨이스트 챌린지’를 시행합니다.</p>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="td1">4</td>
                                <td class="td2">
                                    <a href="">
                                        <h3 class="td_tit">롯데택배 왔나봄! 리뷰이벤트 하나봄! 롯데택배 리뷰 이벤트</h3>
                                        <p class="td_com">사진 or 영상과 함께 네이버 블로그 리뷰를 작성해주세요! 리뷰 작성 시 해시태그는 필수! 홈페이지 접속 후 이벤트 제출하면 끝! 이벤트에 참여하신 내용은 마케팅 용도로 사용 될 수 있습니다.</p>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="td1">3</td>
                                <td class="td2">
                                    <a href="">
                                        <h3 class="td_tit">(당첨자 안내) 고객 만족도 설문조사 이벤트</h3>
                                        <p class="td_com">롯데 모바일상품권은 3/16(목)에 발송됩니다. 경품은 입력된 정보로 발송되며 정보 오류로 인해 경품을 받지 못하시는 경우 재발송은 불가합니다. 당사 사정에 따라 당첨자 발표 일자가 변경될 수 있습니다.</p>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="td1">2</td>
                                <td class="td2">
                                    <a href="">
                                        <h3 class="td_tit">(안내) 롯데택배 사칭 문자, 이메일 주의</h3>
                                        <p class="td_com">롯데택배를 이용해 주시는 고객님들께 감사드립니다. 롯데택배 사칭 문자 스미싱(Smishing) 및 이메일 피싱(Phishing)에 대해 유의사항을 안내 드립니다. 문자 및 이메일을 받으신 경우, 절대 URL 및 첨부파일을 클릭하지 마시고 삭제하시기 바랍니다.</p>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="td1">1</td>
                                <td class="td2">
                                    <a href="">
                                        <h3 class="td_tit">(안내) 개인정보처리방침 변경 안내(시행일자 2022.12.12)</h3>
                                        <p class="td_com">항상 롯데글로벌로지스를 사랑해주시는 고객여러분께 감사드립니다. 당사 개인정보처리방침이 아래와 같이 변경되어 고객님들께 알려드립니다. 롯데글로벌로지스㈜는 고객님의 권리보호와 개인정보보호를 위해 더욱 노력하겠습니다.</p>
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </article>
            </div>
        </section>
        <section class="page" id="page5">
            <h2 class="page_title" style="display:none">고객상담센터</h2>
            <div class="page_wrap">
                <div class="tit_box">
                    <h3 class="sub_title">CS CENTER</h3>
                    <h2 class="main_title">고객상담센터</h2>
                </div>
                <article class="colm_fr">
                    <h3 class="lst_tit">비즈니스 상담센터</h3>
                    <ul class="lst1">
                        <li class="item1">
                            <h3 class="item_tit">택배 상담</h3>
                            <a href="" class="item_more">상담하기</a>
                        </li>
                        <li class="item2">
                            <h3 class="item_tit">배송 상담</h3>
                            <a href="" class="item_more">상담하기</a>
                        </li>
                        <li class="item3">
                            <h3 class="item_tit">협력사 상담</h3>
                            <a href="" class="item_more">상담하기</a>
                        </li>
                    </ul>
                    <h3 class="lst_tit">간편 상담센터</h3>
                    <ul class="lst2">
                        <li class="item1">
                            <h3 class="item_tit">챗봇 문의</h3>
                            <a href="" class="item_more">문의하기</a>
                        </li>
                        <li class="item2">
                            <h3 class="item_tit">고객의 소리</h3>
                            <a href="" class="item_more">상담하기</a>
                        </li>
                        <li class="item3">
                            <h3 class="item_tit">FAQ</h3>
                            <a href="" class="item_more">보러가기</a>
                        </li>
                    </ul>
                </article>
            </div>
        </section>
    </div>
    	<%@ include file="./footer.jsp" %>
	</div>
</body>
</html>