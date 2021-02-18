<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp"%>
    <%@page import="customer.Customer"%>
    <%@ page import="common.jdbc.JDBCTemplate"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Deerhost Template">
    <meta name="keywords" content="Deerhost, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>StyleStandard에 오신것을 환영합니다!</title>

    <link rel="stylesheet" href="../../../resource/css/table.css">
    <link rel="stylesheet" href="../../../resource/css/dongmuk.css" type="text/css">
    <script defer src= "../../../resource/js/order.js"></script>
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
							<li><a href="../index">메인페이지</a></li>
							<li class="active"><a href="#">STORE</a>
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
            <div class="row" id="order_shortcut">
                <div class="col-lg-12">
                    <div class="breadcrumb__option">
                        <a href="./index.html"><span class="fa fa-home"></span> Home</a>
                        <span>주문조회</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
    <br>
    <br>
    <div class="container-fluid" style="min-height: calc(15vh);">
    
        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true" style="text-align: center;">
   
            <br>
            <div class="panel panel-default">
                <div class="panel-heading" role="tab">
                    <a class="d-block p-2 bg-primary text-white" id="table_name">
                       상품 조회
                    </a>
                </div>
                    <div class="panel-body">
                        <table class="table">
                            <thead>
                              <tr>
                                <th scope="col-md-3">상품번호</th>
                                <th scope="col-md-3">상품</th>
                                <th scope="col-md-3">판매가</th>
                                <th scope="col-md-3">결제 기간 선택</th>
                                <th scope="col-md-3">주문 취소</th>
                                <th scope="col-md-3">배송비</th>
                              </tr>
                            </thead>
 
                            <tbody scope="col-md-3">
                              <c:forEach items="${orderlist}" var="orderlist">
                              <tr id="trs">
                                <th scope="row" id="products">${orderlist.order_code}</th>
                                <td><img src="../../../resource/img/${orderlist.order_img}" alt="" style="max-width:100%; max-height: 10vh;">
                                 </td>
                                <td><div id="price">${orderlist.order_price}</div></td>
                                <td><input type="radio" name="payment_grade" value="3일 대여">3일 대여<br>
   									<input type="radio" name="payment_grade" value="7일 대여">7일 대여</td>
                                <td><div id="point"><a href="../order/delete"?idx=${orderlist.order_code}></a><input class="btn btn-primary" type="button" onclick="rowDelete();" value="취소"></a></div></td>
                                <td><div id="delivery_fee">2000</div></td>
                              </tr>
                              </c:forEach>
                            </tbody>
                          </table>
                          <br>
                           <button id="nextBtn" type="button" class="btn btn-primary">주문하기</button>
                    </div>
            </div>        
        </div>
    </div>
    <script>
         $("#nextBtn").click(function () {   
         // 라디오 버튼 클릭시 name 벨류값(상품명) 가져오기   
         var name = $('input[name="payment_grade"]:checked').val();
         // 결제금액 가져오기
         var amount = 0;
         if(name == '3일 대여'){
            amount = 100;
         } else if(name == '7일 대여'){
            amount = 200;
         }
            
         console.log(name);      
            
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
         var curDate = new Date();

		 var curTime = curDate.getFullYear() + "-" + (curDate.getMonth() + 1) + "-" + curDate.getDate() + " " + curDate.getHours() + ":" + curDate.getMinutes() + ":" + curDate.getSeconds();
		 var returnTime = curDate.getFullYear() + "-" + (curDate.getMonth() + 1) + "-" + (curDate.getDate()+3);


         
         // GET방식으로 name값(결제항목), amount값(결제금액) servlet으로 보내기
         location.href="<%=request.getContextPath()%>/order/orderlist?name=" + name + "&amount=" + amount + "&curTime="+curTime ;
         } else {
         // 결제 실패 시 로직
         msg = '결제를 취소하셨습니다.\n';
                  
         msg += '에러내용 : ' + rsp.error_msg;
         }
         alert(msg);

         });
         });
   </script>
   <!-- Channel Plugin Scripts -->



   <!-- Footer 동묵-->
   <footer class="footer-section">
    <div class="footer__text set-bg" data-setbg="../../../resource/img/hero/homebackground.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer__text-about">
                        <div class="footer__logo">
                            <a href="../index/index.html"><img src="../../../resource/img/logo.png" alt=""></a>
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
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript">
function rowDelete(){
	
	$('#trs').remove();
<%-- 	<%
	request.setCharacterEncoding("utf-8");

	String idx = request.getParameter("idx");
	System.out.println(idx);
		JDBCTemplate jdt = JDBCTemplate.getInstance();
		Connection conn = jdt.getConnection();
		 PreparedStatement pstm = null; 
		
	    try{
	    
	    String sql = "delete from st_order where order_code=?";
	    
	    pstm = conn.prepareStatement(sql);
	    pstm.setInt(1,Integer.parseInt(idx));
	    pstm.executeUpdate();

	    }
	    catch(SQLException e){
	    	out.println(e);
	    }
	    
	    pstm.close();
	    conn.close();
	%>	 --%>
}
</script>
    <script src="../../../resource/js/main.js"></script>
</body>

</html>