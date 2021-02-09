<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Deerhost Template">
    <meta name="keywords" content="Deerhost, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>StyleStandard에 오신것을 환영합니다!</title>

    <link rel="stylesheet" href="../resource/css/dongmuk.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    
    <!-- Offcanvas Menu Begin -->
<div class="offcanvas__menu__overlay"></div>
<div class="offcanvas__menu__wrapper">
    <div class="canvas__close">
        <span class="fa fa-times-circle-o"></span>
    </div>
    <div class="offcanvas__logo">
        <a href="#"><img src="../resource/img/logo.png" alt=""></a>
    </div>
    <nav class="offcanvas__menu mobile-menu">
        <ul>
            <li><a href="../index/index.jsp">메인페이지</a></li>
            <li><a href="#">STORE</a>
                <ul class="dropdown">
                    <li><a href="../style/magazine.jsp">MAGAZINE</a></li>
                    <li><a href="../product/product_w.jsp">여성</a></li>
                    <li><a href="../product/product_m.jsp">남성</a></li>
                </ul>
            </li>
            <li class="active"><a href="#">고객센터</a>
                <ul class="dropdown">
                    <li><a href="../customerService/notice.jsp">공지사항</a></li>
                    <li><a href="../customerService/question.jsp">문의 사항</a></li>
                    <li><a href="../customerService/customerFAQ.jsp">FAQ</a></li>
                </ul>
            </li>
            <li><a href="../member/mypage.jsp">마이페이지</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>
    <div class="offcanvas__auth">
        <ul>
            <li><a href="#"><span class="icon_chat_alt"></span>1:1채팅</a></li>
            <li><a href="#"><span class="fa fa-user"></span> 로그인/회원가입</a></li>
        </ul>
    </div>

</div>
<!-- Offcanvas Menu End -->

<!-- Header Section Begin -->
<header class="header-section header-normal">
    <div class="header__info">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="header__info-left">

                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header__info-right">
                        <ul>
                            <li><a href="#"><span class="icon_chat_alt"></span>1:1 채팅</a></li>
                            <li><a href="#"><span class="fa fa-user"></span>로그인/회원가입</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3">
                <div class="header__logo">
                    <a href="../index/index.jsp"><img src="../resource/img/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-9 col-md-9">
                <nav class="header__menu">
                    <ul>
                        <li><a href="../index/index.jsp">메인페이지</a></li>
                        <li><a href="#">STORE</a>
                            <ul class="dropdown">
                                <li><a href="../style/magazine.jsp">MAGAZINE</a></li>
                                <li><a href="../product/product_w.jsp">여성</a></li>
                                <li><a href="../product/product_m.jsp">남성</a></li>
                            </ul>
                        </li>
                        <li><a href="#">고객센터</a>
                            <ul class="dropdown">
                                <li><a href="../customerService/notice.jsp">공지사항</a></li>
                                <li><a href="../customerService/question.jsp">문의 사항</a></li>
                                <li><a href="../customerService/customerFAQ.jsp">FAQ</a></li>
                            </ul>
                        </li>
                        <li class="active"><a href="../member/mypage.jsp">마이페이지</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="canvas__open">
            <span class="fa fa-bars"></span>
        </div>
    </div>
</header>
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__option">
                        <a href="./index.jsp"><span class="fa fa-home"></span> Home</a>
                        <span>마이페이지</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Blog Section Begin -->
  <section class="pricing-section spad" style="padding-top: 60px;" >
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-md-7">
                <div class="section-title normal-title">
                    <h3>마이페이지</h3>
                </div>
            </div>
        </div>
        <div class="row monthly__plans active">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="pricing__item">
                    <h3>주문 내역 조회</h3>
                    <ul>
                        <li>상품 조회</li>
                        <li>장바구니</li>
                        <li>구매 결정</li>
                    </ul>
                    <a href="../order/order.jsp" class="primary-btn">주문 내역</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="pricing__item">
                    <h3>회원정보 수정</h3>
                    <ul>
                        <li>주소지 변경</li>
                        <li>개인정보 변경</li>
                        <li>회원탈퇴</li>
                    </ul>
                    <a href="../member/memberinfo.jsp" class="primary-btn">회원정보</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="pricing__item">
                    <h3>리뷰</h3>
                    <ul>
                        <li>평가 남기기</li>
                        <li>스타일 평가 보기</li>
                        <li>스타일리스트 평가 보기</li>
                    </ul>
                    <a href="../stylelist/leave_evaluation.jsp" class="primary-btn">리뷰 남기기</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="pricing__item">
                    <h3>사이즈 및 취향</h3>
                    <ul>
                        <li>당신의 사이즈를 알려주세요</li>
                        <li>어떤 스타일을 좋아하십니까?</li>
                        <li>어떨때 가장 고민을 합니까?</li>
                    </ul>
                    <a href="../member/mysize.jsp" class="primary-btn">사이즈</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="pricing-section spad" style="padding-bottom: 60px;"></section>
    <!-- Blog Section End -->


  <!-- Footer 동묵-->
  <footer class="footer-section">
    <div class="footer__text set-bg" data-setbg="../resource/img/hero/homebackground.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer__text-about">
                        <div class="footer__logo">
                            <a href="../index/index.jsp"><img src="../resource/img/logo.png" alt=""></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-12 col-sm-6">
                    <div class="footer__text-widget">
                        <h5>Company</h5>
                        <ul>
                            <li><a href="#">Company</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Press & Media</a></li>
                            <li><a href="#">News / Blogs</a></li>
                            <li><a href="#">Careers</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer__text-widget">
                        <h5>CONTACT US</h5>
                        <ul class="footer__widget-info">
                            <li><span class="fa fa-map-marker"></span> 서울특별시 강남구 테헤란로 10길 9 그랑프리 빌딩<br />
                                </li>
                            <li><span class="fa fa-mobile"></span> 02-000-000 | 010-123-4567</li>
                            <li><span class="fa fa-headphones"></span> stylestandard@email.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-12 col-sm-6">
                    <div class="footer__text-widget">
                        <span class="footer__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </span>
                    </div>
                </div>
            </div>
            <div class="footer__text-copyright">
                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Korea Style Copyright Association. All rights reserved. </a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>
        </div>
    </div>
</footer>
<!-- Footer 동묵 끝 -->

    <script src="../resource/js/main.js"></script>
</body>

</html>