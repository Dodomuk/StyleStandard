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


<link rel="stylesheet" href="../../../resource/css/dongmuk.css"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="../../../resource/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="../../../resource/slick/slick-theme.css" />
<link rel="stylesheet" href="../../../resource/css/price_wr.css"
	type="text/css">
<link rel="stylesheet" href="../../../resource/css/mysize_modify.css"
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
				<li class="active"><a href="#">고객센터</a>
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
						<div class="header__info-left"></div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="header__info-right">
							<ul>
								<li><a href="#"><span class="icon_chat_alt"></span>1:1
										채팅</a></li>
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
							<li><a href="#">고객센터</a>
								<ul class="dropdown">
									<li><a href="../customerService/notice.jsp">공지사항</a></li>
									<li><a href="../customerService/question.jsp">문의 사항</a></li>
									<li><a href="../customerService/customerFAQ.jsp">FAQ</a></li>
								</ul></li>
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
	<!-- Header End -->
	<!-- Breadcrumb Begin -->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__option">
						<a href="./index.jsp"><span class="fa fa-home"></span> Home</a> <span>설문조사</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!-- write start-->
	 <div class="container">
	<h3>
		설문조사
	</h3>
	<section class="pricing-section spad"
		style="padding-top: 60px; margin-right: 2%;">
		<div class="container1">

			<form action="">
				<table class="type1">
					<caption></caption>
					<colgroup>
						<col style="width: 190px;">
						<col>
					</colgroup>
					<tbody style="width: 100px">
						<tr>
							<th><span>필수입력</span>이름</th>
							<td>김지연</td>
						</tr>
						<tr>
							<th><span>필수입력</span>성별</th>
							<td>여자</td>
						</tr>
						<tr>
							<th><span>필수입력</span>생년월일</th>
							<td>2021-01-01</td>
						</tr>
						<tr>
							<th>키</th>
							<td><input type="number" name="cmkg" value=""
								placeholder="ex) 170"> cm</td>
						</tr>
						<tr>
							<th>몸무게</th>
							<td><input type="number" name="cmkg" value=""
								placeholder="ex) 70"> kg</td>
						</tr>

						<tr>
							<th>사이즈 선택</th>
							<td>
								<div class="container">
									<div class="row">

										<div class="col-md-12">
											셔츠<br>
											<div class="btn-group mr-2" role="group"
												aria-label="button group">
												<button type="button" class="btn btn-default">XS</button>
												<button type="button" class="btn btn-default">S</button>
												<button type="button" class="btn btn-default">M</button>
												<button type="button" class="btn btn-default">L</button>
												<button type="button" class="btn btn-default">XL</button>
												<button type="button" class="btn btn-default">FREE</button>
											</div>
										</div>
									</div>
								</div>

								<div class="container">
									<div class="row">

										<div class="col-md-12">
											티셔츠<br>
											<div class="btn-group mr-2" role="group"
												aria-label="button group">
												<button type="button" class="btn btn-default">XS</button>
												<button type="button" class="btn btn-default">S</button>
												<button type="button" class="btn btn-default">M</button>
												<button type="button" class="btn btn-default">L</button>
												<button type="button" class="btn btn-default">XL</button>
												<button type="button" class="btn btn-default">FREE</button>
											</div>
										</div>
									</div>
								</div>

								<div class="container">
									<div class="row">

										<div class="col-md-12">
											아우터<br>
											<div class="btn-group mr-2" role="group"
												aria-label="button group">
												<button type="button" class="btn btn-default">XS</button>
												<button type="button" class="btn btn-default">S</button>
												<button type="button" class="btn btn-default">M</button>
												<button type="button" class="btn btn-default">L</button>
												<button type="button" class="btn btn-default">XL</button>
												<button type="button" class="btn btn-default">FREE</button>
											</div>
										</div>
									</div>
								</div>

								<div class="container">
									<div class="row">

										<div class="col-md-12">
											청바지<br>
											<div class="btn-group mr-2" role="group"
												aria-label="button group">
												<button type="button" class="btn btn-default">XS</button>
												<button type="button" class="btn btn-default">S</button>
												<button type="button" class="btn btn-default">M</button>
												<button type="button" class="btn btn-default">L</button>
												<button type="button" class="btn btn-default">XL</button>
												<button type="button" class="btn btn-default">FREE</button>
											</div>
										</div>
									</div>
								</div>

								<div class="container">
									<div class="row">

										<div class="col-md-12">
											바지<br>
											<div class="btn-group mr-2" role="group"
												aria-label="button group">
												<button type="button" class="btn btn-default">XS</button>
												<button type="button" class="btn btn-default">S</button>
												<button type="button" class="btn btn-default">M</button>
												<button type="button" class="btn btn-default">L</button>
												<button type="button" class="btn btn-default">XL</button>
												<button type="button" class="btn btn-default">FREE</button>
											</div>
										</div>
									</div>
								</div>

								<div class="container">
									<div class="row">

										<div class="col-md-12">
											치마<br>
											<div class="btn-group mr-2" role="group"
												aria-label="button group">
												<button type="button" class="btn btn-default">XS</button>
												<button type="button" class="btn btn-default">S</button>
												<button type="button" class="btn btn-default">M</button>
												<button type="button" class="btn btn-default">L</button>
												<button type="button" class="btn btn-default">XL</button>
												<button type="button" class="btn btn-default">FREE</button>
											</div>
										</div>
									</div>
								</div>

								<div class="container">
									<div class="row">

										<div class="col-md-12">
											원피스<br>
											<div class="btn-group mr-2" role="group"
												aria-label="button group">
												<button type="button" class="btn btn-default">XS</button>
												<button type="button" class="btn btn-default">S</button>
												<button type="button" class="btn btn-default">M</button>
												<button type="button" class="btn btn-default">L</button>
												<button type="button" class="btn btn-default">XL</button>
												<button type="button" class="btn btn-default">FREE</button>
											</div>
										</div>
									</div>
								</div>

							</td>
						<tr>
							<th>언제 입고 싶나요?</th>
							<td>
								<button type="button" class="btn btn-default">일상</button>
								<button type="button" class="btn btn-default">기념일</button>
								<button type="button" class="btn btn-default">회사</button>
								<button type="button" class="btn btn-default">기타</button> <!-- 기타 누르면 인풋창 뜨게 하기 (기능구현으로)-->
							</td>
						</tr>

						<tr>
							<th>고객님의<br> 체형을 알려주세요!
							</th>
							<td>
								<button type="button" class="btn btn-default">
									상체비만<br>
								</button>
								<button type="button" class="btn btn-default">
									하체비만<br>
								</button>
								<button type="button" class="btn btn-default">
									마름<br>
								</button>
								<button type="button" class="btn btn-default">
									보통<br>
								</button>
								<button type="button" class="btn btn-default">
									잘 모르겠어요<br>
								</button>

							</td>
						</tr>

					</tbody>
				</table>


			</form>
		</div>

		<div class="btn_center">
			<a href="#" class="btn_type1" data-toggle="modal"
				data-target="#myModal">수정</a>
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-body">수정 완료되었습니다.</div>
						<div class="modal-footer">
							<a href="../member/mysize.jsp" class="btn btn-default">확인</a>
						</div>
					</div>
				</div>
			</div>
			<a href="../member/mysize.jsp" class="btn_type2">취소</a>
		</div>
	</section>
		</div>

	<!-- Blog Section End -->



	<!-- write start-->


	<!-- Footer 동묵-->
	<footer class="footer-section">
		<div class="footer__text set-bg"
			data-setbg="../../../resource/img/hero/homebackground.png"
			style="margin-top: -1%">
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
							<h5>CONTACT US</h5>
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

	<!-- Js Plugins -->

	<script src="../../../resource/js/bootstrap.min.js"></script>
	<script src="../../../resource/js/main.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="../../../resource/slick/slick.min.js"></script>
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