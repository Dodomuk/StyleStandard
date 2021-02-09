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

<!-- Css Styles -->

<link rel="stylesheet" href="../../../resource/css/dongmuk.css"
	type="text/css">
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
					</ul></li>
				<li><a href="#">고객센터</a>
					<ul class="dropdown">
						<li><a href="../customerService/notice.jsp">공지사항</a></li>
						<li><a href="../customerService/question.jsp">문의 사항</a></li>
						<li><a href="../customerService/customerFAQ.jsp">FAQ</a></li>
					</ul></li>
				<li><a href="../member/mypage.jsp">마이페이지</a></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="offcanvas__auth">
			<ul>
				<li><a href="#"><span class="icon_chat_alt"></span>1:1채팅</a></li>
				<li><a href="../member/memberjoin.jsp" id="logout">
				<span class="fa fa-user"></span></a>
				    <c:choose>
				    <c:when test="{empty s}">
				       로그인 / 회원가입
				    </c:when>
				    <c:otherwise>
				    </c:otherwise>
				    </c:choose>
				    </li>
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
						<div class="header__info-left"></div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="header__info-right">
							<ul>
				<li><a href="#"><span class="icon_chat_alt"></span>1:1채팅</a></li>
				<li>
				<%if ((String)session.getAttribute("id") == null){%>	
				<a href="../member/login.jsp" id="login"><span class="fa fa-user"></span>로그인 / 회원가입~~</a>
				<%}else{ %>
				<a href="../member/login.jsp"><span class="fa fa-user">
				</span>
				<c:out value="${sessionScope.name}"/>
				로그인중...
				</a> 
				<% }%>
				    </li>
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
						<a href="../index/index.jsp"><img
							src="../../../resource/img/logo.png" alt=""></a>
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
								</ul></li>
							<li class="active"><a href="#">고객센터</a>
								<ul class="dropdown">
									<li><a href="../customerService/notice.jsp">공지사항</a></li>
									<li><a href="../customerService/question.jsp">문의 사항</a></li>
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


	<!-- Hero Section Begin -->
	<section class="hero-section">
		<div class="hero__slider owl-carousel">
			<div class="hero__item set-bg"
				data-setbg="../../../resource/img/hero/homebackground.png">
				<div class="container">
					<div class="row">
						<div class="col-lg-6"></div>
						<div class="col-lg-6">
							<div class="hero__img">
								<img src="../../../resource/img/hero/hero-right.png" alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="hero__item set-bg"
				data-setbg="../../../resource/img/hero/homebackground.png">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="hero__text"></div>
						</div>
						<div class="col-lg-6">
							<div class="hero__img">
								<img src="../../../resource/img/hero/hero-right.png" alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Choose Plan Section Begin -->
	<section class="choose-plan-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<div class="plan__text">
						<h3>스타일스탠다드만의 특권</h3>
						<ul>

							<li><span class="fa fa-check"></span> 장점1!</li>
							<li><span class="fa fa-check"></span> 장점2!</li>
							<li><span class="fa fa-check"></span> 장점3!</li>
							<li><span class="fa fa-check"></span> 장점4!</li>
							<li><span class="fa fa-check"></span> 장점5!</li>
							<li><span class="fa fa-check"></span> 장점6!</li>
						</ul>
						<a href="#" class="primary-btn">지금 시작하세요</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Choose Plan Section End -->

	<!--section 사진  -->
	<div class="imgsection">
		<img src="../../../resource/img/musinsa/musinsa_1.jpg"> <img
			src="../../../resource/img/musinsa/musinsa_2.jpg"> <img
			src="../../../resource/img/musinsa/musinsa_3.jpg">
	</div>



	<!-- Footer 동묵-->
	<footer class="footer-section">
		<div class="footer__text set-bg"
			data-setbg="../../../resource/img/hero/homebackground.png">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer__text-about">
							<div class="footer__logo">
								<a href="../index/index.jsp"><img
									src="../../../resource/img/logo.png" alt=""></a>
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
							<h5>cONTACT US</h5>
							<ul class="footer__widget-info">
								<li><span class="fa fa-map-marker"></span> 서울특별시 강남구 테헤란로
									10길 9 그랑프리 빌딩<br /></li>
								<li><span class="fa fa-mobile"></span> 02-000-000 |
									010-123-4567</li>
								<li><span class="fa fa-headphones"></span>
									stylestandard@email.com</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-12 col-sm-6">
						<div class="footer__text-widget">
							<span class="footer__social"> <a href="#"><i
									class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a>
							</span>
						</div>
					</div>
				</div>
				<div class="footer__text-copyright">
					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>document.write(new Date().getFullYear());</script>
						All rights reserved | Korea Style Copyright Association. All
						rights reserved. </a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer 동묵 끝 -->
	<!-- 자바스크립트 파일 -->
	<script src="../../../resource/js/main.js"></script>

</body>

</html>