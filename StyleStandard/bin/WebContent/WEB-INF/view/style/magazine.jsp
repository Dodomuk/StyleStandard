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

    <!-- Google Font -->

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans+Condensed:ital,wght@1,300&display=swap" rel="stylesheet">
    <!-- Css Styles -->
    <link rel="stylesheet" href="../../../resource/css/dongmuk.css" type="text/css">
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
				<li><a href="../index">메인페이지</a></li>
				<li><a href="#">STORE</a>
					<ul class="dropdown">
						<li><a href="../style/magazine">MAGAZINE</a></li>
						<li><a href="../style/style_woman">여성</a></li>
						<li><a href="../style/style_men">남성</a></li>
					</ul></li>
				<li><a href="#">고객센터</a>
					<ul class="dropdown">
						<li><a href="../notice">공지사항</a></li>
						<!-- 지연 -->
						<li><a href="../customerService/question.jsp">문의 사항</a></li>
				        <!-- 지연 -->
						<li><a href="../customerService/customerFAQ.jsp">FAQ</a></li>
						
					</ul></li>
				<li><a href="../member/mypage.jsp">마이페이지</a></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="offcanvas__auth">
			<%
				if ((String) session.getAttribute("id") == null) {
			%>
			<a href="../member/loginpage.jsp" id="login" style="color: white"><span
				class="fa fa-user"></span>로그인 / 회원가입</a>
			<%
				} else {
			%>
			<div class="btn-group" role="group" id="btn_logout">
				<button id="btnGroupDrop1" type="button"
					class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown"
					aria-expanded="false">
					<c:out value="${sessionScope.name}" />
					님 로그인중...
				</button>
				<ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
					<li><a class="dropdown-item" href="../member/logout"
						style="color: black">로그아웃</a></li>
				</ul>
			</div>
			<%
				}
			%>
		</div>

	</div>
	<!-- Offcanvas Menu End -->

	<!-- Header Section Begin -->
	<header class="header-section header-normal">
		<div class="header__info">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<div class="header__info-left"></div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="header__info-right">
							<%
								if ((String) session.getAttribute("id") == null) {
							%>
							<a href="../member/loginpage.jsp" id="login" style="color: white"><span
								class="fa fa-user"></span>로그인 / 회원가입</a>
							<%
								} else {
							%>
							<div class="btn-group" role="group" id="btn_logout">
								<button id="btnGroupDrop1" type="button"
									class="btn btn-primary dropdown-toggle"
									data-bs-toggle="dropdown" aria-expanded="false">
									<c:out value="${sessionScope.name}" />
									님 로그인중...
								</button>
								<ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
									<li><a class="dropdown-item" href="../member/logout"
										style="color: black">로그아웃</a></li>
								</ul>
							</div>
							<%
								}
							%>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="header__logo">
						<a href="../index/index.jsp"><img
							src="../../../resource/img/logo.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<nav class="header__menu">
						<ul>
							<li><a href="../index">메인페이지</a></li>
							<li class="active"><a href="#">STORE</a>
								<ul class="dropdown">
									<li><a href="../style/magazine">MAGAZINE</a></li>
									<li><a href="../style/style_woman">여성</a></li>
									<li><a href="../style/style_men">남성</a></li>
								</ul></li>
							<li><a href="#">고객센터</a>
								<ul class="dropdown">
									<li><a href="../notice">공지사항</a></li>
									<!-- 지연 -->
									<li><a href="../customerService/question.jsp">문의 사항</a></li>
									<!-- 지연 -->
									<li><a href="../customerService/customerFAQ.jsp">FAQ</a></li>
								</ul></li>
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
                    <span>MAGAZINE</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->



<!-- About Section Begin -->
<section class="about-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-7">
                <div class="about_top_top10" style="max-height: 80%;">
                    <div><img src ="../../../resource/img/product_m/styleM_1.jpg"></div>
                    <div><img src ="../../../resource/img/product_m/styleM_2.jpg"></div>
                    <div><img src ="../../../resource/img/product_m/styleM_3.jpg"></div>
                    <div><img src ="../../../resource/img/product_w/style_1.jpg"></div>
                    <div><img src ="../../../resource/img/product_w/style_2.jpg"></div>
                </div>

                <div class="about_top10">
                                   <div><img src ="../../../resource/img/product_m/styleM_1.jpg"></div>
                    <div><img src ="../../../resource/img/product_m/styleM_2.jpg"></div>
                    <div><img src ="../../../resource/img/product_m/styleM_3.jpg"></div>
                    <div><img src ="../../../resource/img/product_w/style_1.jpg"></div>
                    <div><img src ="../../../resource/img/product_w/style_2.jpg"></div>
                </div>
            </div>
            <div class="col-lg-5">
                <div class="about__text">
                    <h2>주간 스타일 TOP5</h2>
                    <p>가장 인기 있는 제품을 제일 먼저 만나보세요.</p>
                    <div class="about__achievement">
                        <div class="about__achieve__item">
                            <span class="fa fa-clone"></span>
                            <h4 class="achieve-counter">20</h4>
                            <p>스타일</p>
                        </div>
                        <div class="about__achieve__item">
                            <span class="fa fa-edit"></span>
                            <h4 class="achieve-counter">15</h4>
                            <p>리뷰</p>
                        </div>
                        <div class="about__achieve__item">
                            <span class="fa fa-user-o"></span>
                            <h4 class="achieve-counter">10</h4>
                            <p>고객</p>
                        </div>
                        <div class="about__achieve__item">
                            <span class="fa fa-cog"></span>
                            <h4 class="achieve-counter">200</h4>
                            <p>대여 건수</p>
                        </div>
                    </div>
                    <a href="../product/product_w.jsp" class="primary-btn">지금 스타일리스트에 도전해보세요!</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- About Section End -->

<!-- Testimonial Section Begin -->
<section class="testimonial-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h3>NEW STYLES<br>
                    이번주 새롭게 등록된 스타일입니다.</h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="testimonial__slider owl-carousel">
                <div class="col-lg-4">
                    <div class="testimonial__item">
                        <img src="../../../resource/img/product_w/style_3.jpg" alt="">
                        <h5>산뜻한 봄세트</h5>
                        <span>STYLE SET</span>
                        <p>가벼운 소재를 담아서 뿅뿅뿅 아주 멋져용</p>
                        <div class="testimonial__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="testimonial__item">
                        <img src="../../../resource/img/product_m/styleM_6.jpg" alt="">
                        <h5>산뜻한 남자세트</h5>
                        <span>STYLE SET</span>
                        <p>유우우우 유우우 예예 그대를 닮아서 맘이 더 큰 사람이 되면</p>
                        <div class="testimonial__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="testimonial__item">
                        <img src="../../../resource/img/product_w/style_2.jpg" alt="">
                        <h5>산뜻한 여자세트</h5>
                        <span>STYLE SET</span>
                        <p>오늘은 그대가 날 떠나가는 날이래요 왜 항상 나는 이렇게 외로운 사랑을 하는지 
                                                             도무지 이해가 안가는 이상한 날이에요.</p>
                        <div class="testimonial__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="testimonial__item">
                        <img src="../../../resource/img/product_w/style_3.jpg" alt="">
                        <h5>산뜻한 봄세트</h5>
                        <span>STYLE SET</span>
                        <p>가벼운 소재를 담아서 뿅뿅뿅 아주 멋져용</p>
                        <div class="testimonial__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="testimonial__item">
                        <img src="../../../resource/img/product_m/styleM_6.jpg" alt="">
                        <h5>산뜻한 남자세트</h5>
                        <span>STYLE SET</span>
                        <p>유우우우 유우우 예예 그대를 닮아서 맘이 더 큰 사람이 되면</p>
                        <div class="testimonial__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="testimonial__item">
                        <img src="../../../resource/img/product_w/style_2.jpg" alt="">
                        <h5>산뜻한 여자세트</h5>
                        <span>STYLE SET</span>
                        <p>오늘은 그대가 날 떠나가는 날이래요 왜 항상 나는 이렇게 외로운 사랑을 하는지 
                                                             도무지 이해가 안가는 이상한 날이에요.</p>
                        <div class="testimonial__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Testimonial Section End -->


<hr>
<!-- Team Section Begin -->
<section class="team-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h3>시즌별 스타일을 만나보세요!</h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="team__item">
                    <div class="team__text">
                        <a href="../style/spring_women.jsp"><img src="../../../resource/img/stylelist/season_sample.jpg"></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="team__item">
                    <div class="team__text">
                        <a href="../style/spring_women.jsp"><img src="../../../resource/img/stylelist/season_sample.jpg"></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="team__item">
                    <div class="team__text">
                        <a href="../style/spring_women.jsp"><img src="../../../resource/img/stylelist/season_sample.jpg"></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="team__item">
                    <div class="team__text">
                        <a href="../style/spring_women.jsp"><img src="../../../resource/img/stylelist/season_sample.jpg"></a>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- Team Section End -->

<!-- Footer 동묵-->
<footer class="footer-section">
    <div class="footer__text set-bg" data-setbg="../../../resource/img/hero/homebackground.png">
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

<!-- Js Plugins -->

<script src="../../../resource/js/bootstrap.min.js"></script>
<script src="../../../resource/js/main.js"></script><script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
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