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


    <link rel="stylesheet" href="../../../resource/css/dongmuk.css" type="text/css">
    <link rel="stylesheet" href="../../../resource/css/price_wr.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="../../../resource/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="../../../resource/slick/slick-theme.css"/>

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
        <a href="#"><img src="../../../resource/img/logo.png" alt=""></a>
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
            <div class="container" style="display: flex; justify-content: flex-end;">
                <div class="row">

                    <div class="header__info-right">
                        <ul>
                            <li><a href="#"><span class="icon_chat_alt"></span> 1:1 채팅</a></li>
                            <li><a href="#"><span class="fa fa-user"></span> 로그인 / 회원가입</a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3">
                <div class="header__logo">
                    <a href="../index/index.jsp"><img src="../../../resource/img/logo.png" alt=""></a>
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
            </div>
        </div>
        <div class="canvas__open">
            <span class="fa fa-bars"></span>
        </div>
    </div>
</header>
<!-- Header End -->
<!-- Breadcrumb Begin -->
<div class="breadcrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__option">
                    <a href="./index.jsp"><span class="fa fa-home"></span> Home</a>
                    <a href="../customerService/notice.jsp">공지사항</a>
                    <span>공지사항 글쓰기</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->

<!-- write start-->
 <div class="container">
      <h3>공지사항 글쓰기</h3>
    <form method="POST" action="notice_wr.html" class="all">
        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">제 목</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="제목을 입력하세요">
        </div>
        <div class="mb-3">
            <label for="formFileMultiple" class="form-label">파일 선택하기</label>
            <input class="form-control" type="file" id="formFileMultiple" multiple>
          </div>
        <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label">내 용</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="15">내용을 입력해 주세요</textarea>
        </div>
        <div class="btn_wr" style="text-align: right;">
            <input type="submit" class="btn btn-secondary btn-sm" value="등록하기" >
        </div>
    </form>
    </div>

<!-- write start-->


<!-- Footer 동묵-->
<footer class="footer-section">
    <div class="footer__text set-bg" data-setbg="../../../resource/img/hero/homebackground.png" style="margin-top:-1%">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer__text-about">
                        <div class="footer__logo">
                            <a href="../index/index.jsp"><img src="../../../resource/img/logo.png" alt=""></a>
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


<script src="../../../resource/js/main.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script type="text/javascript" src="../../../resource/slick/slick.min.js"></script>
<script type="text/javascript">
    $('.about_top_top10').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.about_top10'
    });
    $('.about_top10').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        asNavFor: '.about_top_top10',
        dots: true,
        centerMode: true,
        focusOnSelect: true
    });
</script>

</body>

</html>