<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp"%>
    <%@page import="customer.Customer"%>
    <%@page import="order.Order"%>
    

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
			<a href="../index"><img src="../../../resource/img/logo.png" alt=""></a>
		</div>
		<nav class="offcanvas__menu mobile-menu">
			<ul>
				<li><a href="../index">메인페이지</a></li>
				<li><a href="#">STORE</a>
					<ul class="dropdown">
						<li><a href="../style/style_woman">여성</a></li>
						<li><a href="../style/style_men">남성</a></li>
					</ul></li>
				<li><a href="#">고객센터</a>
					<ul class="dropdown">
						<li><a href="../notice">공지사항</a></li>
						<li><a href="../qna.credu">문의사항</a>
						 <li><a href="../customerService/customerFAQ">FAQ</a></li>
						
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
						<a href="../index"><img
							src="../../../resource/img/logo.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<nav class="header__menu">
						<ul>
							<li class="active"><a href="../index">메인페이지</a></li>
							<li><a href="#">STORE</a>
								<ul class="dropdown">
									<li><a href="../style/style_woman">여성</a></li>
									<li><a href="../style/style_men">남성</a></li>
								</ul></li>
							<li><a href="#">고객센터</a>
								<ul class="dropdown">
									<li><a href="../notice">공지사항</a></li>
									<li><a href="../qna.credu">문의사항</a>
									 <li><a href="../customerService/customerFAQ">FAQ</a></li>
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
                    <a href="../index/index.jsp"><span class="fa fa-home"></span> Home</a>
                    <span>주문 연장</span>
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
                    <h3>주문 연장</h3>
                </div>
            </div>
        </div>
        <div class="container">
            <h2>주문 연장</h2>  
            <div class="table-responsive">
              <table class="table" style="text-align: center;">
                <thead>
                  <tr>
                <th>#</th>
                <th>주문 번호</th>
                <th>주문자 이름</th>
                <th>주문 일자</th>
                <th>반납 일자</th>
                <th>대여 상태</th>
                <th>연장하기</th>
                  </tr>
                </thead>
                <tbody>
  
                <tr> 
                <td>1</td>
                <td><%=(String)session.getAttribute("order_code")%></td>
             <td><%=(String)session.getAttribute("name")%></td>
             <td>${sessionScope.paymentDate}</td>
             <td>${sessionScope.returnDate}</td>
             <td>대여중</td>
             <td><button id="extensionBtn" type="button">연장</button><br>
             	<input type="radio" name="extension_grade" value="3일 연장">3일 연장<br>
   				<input type="radio" name="extension_grade" value="7일 연장">7일 연장
             </td>
             </tr>
                </tbody>
              </table>
              <div class="center" style="text-align: center;">
              <!-- 링크는 pageNumber함수 생성 후 넘어가도록 할 예정 -->
              <a href="#" class="btn btn-success btn-arraw-left">이전</a>
              <!-- 다음버튼은 DB에서 받고서 게시물 10이상일떄 출력하도록 할꺼임 -->
              <a href="#" class="btn btn-success btn-arraw-left">다음</a>
              </div>
            </div>
        </div>
    </div>    

</section>


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

    <script src="../../../resource/js/main.js"></script>
</body>

<script>
         $("#extensionBtn").click(function () {   
         // 라디오 버튼 클릭시 name 벨류값(상품명) 가져오기   
         var name = $('input[name="extension_grade"]:checked').val();
         // 결제금액 가져오기
         var amount = 0;
         var curDate = new Date();
         var extensionTime = 0;
         if(name == '3일 연장'){
            amount = 100;
            extensionTime = curDate.getFullYear() + "-" + (curDate.getMonth() + 1) + "-" + (curDate.getDate()+6);
         } else if(name == '7일 연장'){
            amount = 200;
            extensionTime = curDate.getFullYear() + "-" + (curDate.getMonth() + 1) + "-" + (curDate.getDate()+10);
         }
            
         console.log(name);
         console.log(extensionTime);
            
         var IMP = window.IMP; // 생략가능
         IMP.init('imp08948503');
         var msg;
         var paymentTime;
         // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
         // i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
         
         IMP.request_pay({
         pg: 'html5_inicis', // version 1.1.0부터 지원.
         /*
         'kakao':카카오페이,
         html5_inicis':이니시스(웹표준결제)
         'nice':나이스페이
         'jtnet':제이티넷
         'uplus':LG유플러스
         'danal':다날
         'payco':페이코
         'syrup':시럽페이
         'paypal':페이팔
         */
         pay_method: 'card',
         /*
         'samsung':삼성페이,
         'card':신용카드,
         'trans':실시간계좌이체,
         'vbank':가상계좌,
         'phone':휴대폰소액결제
         */
         merchant_uid: 'merchant_' + new Date().getTime(),
         /*
         merchant_uid에 경우
         https://docs.iamport.kr/implementation/payment
         위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
         */
         //결제창에서 보여질 이름(5만원권, 10만원권)
         name: name,
         //가격 (5만원권이면 일단 100원, 10만원권 200원)
         amount: amount,
         

         //결제 마지막 결제내역 확인란(이메일, 이름만보임)
         
         //구매자의 이메일
         //buyer_email: 'iamport@siot.do',
         
         buyer_email:"<%=(String)session.getAttribute("email")%>",
         
          //구매자의 이름
         //buyer_name: '구매자이름',
         
         //구매자 이름인데 id값을 받아옴
         buyer_name:"<%=(String)session.getAttribute("name")%>",
         
         //구매자의 휴대전화
         //buyer_tel: '010-1234-5678',
         
         buyer_tel:"<%=(String)session.getAttribute("phone")%>",
         
         //구매자의주소
         buyer_addr: "<%=(String)session.getAttribute("email")%>", 
         /*
         모바일 결제시,
         결제가 끝나고 랜딩되는 URL을 지정
         (카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
         */
         //구매자 우편번호
         //buyer_postcode: '123-456',
         //모바일만 사용
         m_redirect_url: 'https://www.yourdomain.com/payments/complete'
         }, 
         
         
         function (rsp) {
         
         
         // 결제 성공 시  로직
         if (rsp.success) {
         // 결제 후 ALERT창   -> InsertHstpayservlet 이동 -> 매물등록jsp로이동
         msg = '결제가 완료되었습니다.'+ '\n';
         //msg += '고유ID : ' + rsp.imp_uid;
         //msg += '상점 거래ID : ' + rsp.merchant_uid;
         msg += '결제 항목 : ' + name + '\n';
         msg += '결제 금액 : ' + amount + '원';
         //msg += '카드 승인번호 : ' + rsp.apply_num;
         
         // GET방식으로 name값(결제항목), amount값(결제금액) servlet으로 보내기
         location.href="<%=request.getContextPath()%>/member/rentalExtensionComplete?name=" + name + "&amount=" + amount + "&extensionTime="+extensionTime ;
         
         } else {
         // 결제 실패 시 로직
         msg = '결제를 취소하셨습니다.\n';
                  
         msg += '에러내용 : ' + rsp.error_msg;
         }
         alert(msg);

         });
         });
   </script>
   <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
   

</html>