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

<link rel="stylesheet" href="../resource/css/dongmuk.css"
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
						<a href="./index.jsp"><span class="fa fa-home"></span> Home</a> <a
							href="./memberinfo.jsp">마이페이지</a> <span>상품 등록</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->



	<!-- Question Section Begin -->
	<section class="question-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h3>상품 등록</h3>
					</div>
				</div>
			</div>
			<div class="row"
				style="display: flex; align-items: center; justify-content: space-between;">
				<div class="col-lg-6">
					<div class="question__accordin">
						<div class="accordion" id="accordionExample">
							<div class="card">
								<div class="card-heading active">
									<a class="active" data-toggle="collapse"
										data-target="#collapseOne"> 상품 등록 </a>
								</div>
								<div id="collapseOne" class="collapse show"
									data-parent="#accordionExample">
									<div class="card-body">
										<ul>
											<li>등록한 옷의 이미지와 가격, 이름은 등록과 동시에 DB에 올라갑니다.</li>
											<li>고유 코드는 등록시 발급됩니다.</li>
											<li>등록할 옷의 .</li>
											
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<form action="../style/style_regComp" method="post" id="product">
				<div class="col-lg-6">
				<div class="mb-3">
						<label for="formGroupExampleInput" class="form-label">
						상품 이름</label>
						<input type="text" class="form-control"
							id="formGroupExampleInput" name="p_name" placeholder="등록할 상품 이름(상품 이미지 밑에 표시됩니다)">
					</div>
				<div class="mb-3">
						<label for="formGroupExampleInput" class="form-label">
						추가 정보</label>
						<input type="number" class="form-control"
							id="formGroupExampleInput" name="p_price" placeholder="상품 가격">
					</div>
					<div class="mb-3">
						<input type="text" class="form-control"
							id="formGroupExampleInput" name="p_size" placeholder="사이즈">
					</div>
										<div class="mb-3">
						<input type="text" class="form-control"
							id="formGroupExampleInput" name="p_img" placeholder="이미지 파일 경로">
					</div>
										<div class="mb-3">
						<input type="text" class="form-control"
							id="formGroupExampleInput" name="p_info" placeholder="상품 설명">
					</div>
										<div class="mb-3">
						<input type="number" class="form-control"
							id="formGroupExampleInput" name="p_category" placeholder="카테고리">
					</div>
					<div class="mb-3">
							<input type="number" class="form-control"
							id="formGroupExampleInput2"  name="p_quantity" placeholder="재고 수량">
						<button type="submit" class="site-btn btn btn-primary float-right"
							data-toggle="modal" data-target="#myModal"
							style="margin-top: 15px;">등록</button>
					</div>

					
				</div>
			</form>
	</section>
	<!-- Question Section End -->

	<!-- Footer 동묵-->
	<footer class="footer-section">
		<div class="footer__text set-bg"
			data-setbg="../resource/img/hero/homebackground.png">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer__text-about">
							<div class="footer__logo">
								<a href="../index/index.jsp"><img
									src="../resource/img/logo.png" alt=""></a>
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

	<script src="../resource/js/main.js"></script>
</body>

</html>