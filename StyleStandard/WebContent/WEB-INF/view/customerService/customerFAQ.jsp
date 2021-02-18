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
    <!-- font awesome 4 cdn -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- bootstrap css cdn -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
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
							<li><a href="#">STORE</a>
								<ul class="dropdown">
									<li><a href="../style/style_woman">여성</a></li>
									<li><a href="../style/style_men">남성</a></li>
								</ul></li>
							<li class="active"><a href="#">고객센터</a>
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

	
    <!-- 송명재 -->
    <!-- 평가남기기 Begin -->
    <section class="question-section spad">

      <div class="container">
          <div class="row">
              <div class="col-lg-12">
                  <div class="section-title">
                      <h3>고객 FAQ</h3>
                  </div>
              </div>
          </div>
          <div class="row">
              <div class="faq-table-customer col-md-6">
            <h3>고객 FAQ TOP5</h3>
            <table class="table table-bordered mt-3">
              <tbody>
				  <td class="text-center"><!-- 모달을 열기 위한 버튼 -->
					<!-- Button trigger modal -->
					<button  type="button" class="btn btn-link" data-bs-toggle="modal" data-bs-target="#exampleModal" data-num="65">
					 1.<br>회원가입은<br>어떻게 하나요?
					</button>
					
					<!-- Modal -->
					<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel">1.회원가입은 어떻게 하나요?</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					       상단 회원가입을 클릭 후 회원 정보 입력 후 회원가입이 가능합니다.
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					      </div>
					    </div>
					  </div>
					</div>
				</td>	
                  <td class="text-center"><!-- 모달을 열기 위한 버튼 -->
					<!-- Button trigger modal -->
					<button  type="button" class="btn btn-link" data-bs-toggle="modal" data-bs-target="#exampleModal1" >
					 2.<br>어떻게<br>이용하는 건가요?
					</button>
					
					<!-- Modal -->
					<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel1" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel1">2.회원정보 수정은 어떻게 하나요?</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					       저희 스타일 스탠다드는 의류렌탈 방식입니다.<br>최소 3일부터 최대 7일까지 연장할 수 있습니다.<br>만약 마음에 든다면 제품을 그대로 구매할 수 있습니다.
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					      </div>
					    </div>
					  </div>
					</div>
				</td>	
                   <td class="text-center"><!-- 모달을 열기 위한 버튼 -->
					<!-- Button trigger modal -->
					<button  type="button" class="btn btn-link" data-bs-toggle="modal" data-bs-target="#exampleModal2">
					 3.<br>결제방식은<br>어떻게 되는 건가요?
					</button>
					
					<!-- Modal -->
					<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel2">3.개인정보는 안전하게 보호가 되나요?</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					       원하시는 수량을 선택한 후에,<br>그에 맞는 금액을 결제하면 됩니다.
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					      </div>
					    </div>
					  </div>
					</div>
				</td>	
                </tr>
                <tr>
                  <td class="text-center"><!-- 모달을 열기 위한 버튼 -->
					<!-- Button trigger modal -->
					<button  type="button" class="btn btn-link" data-bs-toggle="modal" data-bs-target="#exampleModal3">
					 4.<br>회원탈퇴는<br>어떻게 하나요?
					</button>
					
					<!-- Modal -->
					<div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel3" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel3">4.회원탈퇴는 어떻게 하나요?</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					       마이 페이지 > 회원 정보 변경에서 회원탈퇴 신청하시면 됩니다.
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					      </div>
					    </div>
					  </div>
					</div>
				</td>	
                   <td class="text-center"><!-- 모달을 열기 위한 버튼 -->
					<!-- Button trigger modal -->
					<button  type="button" class="btn btn-link" data-bs-toggle="modal" data-bs-target="#exampleModal4">
					 5.<br>배송기간은<br>어떻게 하나요?
					</button>
					
					<!-- Modal -->
					<div class="modal fade" id="exampleModal4" tabindex="-1" aria-labelledby="exampleModalLabel4" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel4">5.회원탈퇴 취소는 어떻게 하나요?</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					       저희 스타일 스탠다드의 평균 배송일은<br>공휴일 제외하고 이틀정도가 걸립니다.
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					      </div>
					    </div>
					  </div>
					</div>
				</td>	
                </tr>
              </tbody>
            </table>
        </div> 
              <div class="faq-table-customer col-md-6">
            <h3>상품 FAQ TOP5</h3>
            <table class="table table-bordered mt-3">
              <tbody>
				  <td class="text-center"><!-- 모달을 열기 위한 버튼 -->
					<!-- Button trigger modal -->
					<button  type="button" class="btn btn-link" data-bs-toggle="modal" data-bs-target="#exampleModal5">
					 1.<br>상품이<br>망가져서 왔어요
					</button>
					
					<!-- Modal -->
					<div class="modal fade" id="exampleModal5" tabindex="-1" aria-labelledby="exampleModalLabel5" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel5">1.상품이 망가져서 왔어요</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					       즉시 문의를 해주시면 환불이나 교환으로 빠른 대처를 해 드립니다.
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					      </div>
					    </div>
					  </div>
					</div>
				</td>	
                  <td class="text-center"><!-- 모달을 열기 위한 버튼 -->
					<!-- Button trigger modal -->
					<button  type="button" class="btn btn-link" data-bs-toggle="modal" data-bs-target="#exampleModal6">
					 2.<br>상품이<br>너무 마음에 들어요
					</button>
					
					<!-- Modal -->
					<div class="modal fade" id="exampleModal6" tabindex="-1" aria-labelledby="exampleModalLabel6" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel6">2.상품이 너무 마음에 들어요</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					       저희 스타일 스탠다드는 의류렌탈과 동시에 <br>판매도 함께 하고 있습니다.<br>만약 마음에 든다면 제품을 그대로 구매할 수 있습니다. 
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					      </div>
					    </div>
					  </div>
					</div>
				</td>	
                   <td class="text-center"><!-- 모달을 열기 위한 버튼 -->
					<!-- Button trigger modal -->
					<button  type="button" class="btn btn-link" data-bs-toggle="modal" data-bs-target="#exampleModal7">
					 3.<br>상품 업데이트는<br>언제 되나요?
					</button>
					
					<!-- Modal -->
					<div class="modal fade" id="exampleModal7" tabindex="-1" aria-labelledby="exampleModalLabel7" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel7">3.상품 업데이트는 언제 되나요?</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					      스타일 스탠다드는 상시 업로드로<br> 업로드가 되었을 시 공지를 띄워주는 몰입니다.
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					      </div>
					    </div>
					  </div>
					</div>
				</td>	
                </tr>
                <tr>
                  <td class="text-center"><!-- 모달을 열기 위한 버튼 -->
					<!-- Button trigger modal -->
					<button  type="button" class="btn btn-link" data-bs-toggle="modal" data-bs-target="#exampleModal8">
					 4.<br>시즌 업데이트는<br>언제 하나요?
					</button>
					
					<!-- Modal -->
					<div class="modal fade" id="exampleModal8" tabindex="-1" aria-labelledby="exampleModalLabel8" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel8">4.시즌 업데이트는 언제 하나요?</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					       봄 시즌 2월 말 / 4월 초<br>
					       여름 시즌 4월 말 / 8월 초<br>
					       가을 시즌 8월 말 / 10월 초<br>
					       겨울 시즌 10월 말 / 2월 초<br>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					      </div>
					    </div>
					  </div>
					</div>
				</td>	
                   
                </tr>
              </tbody>
            </table>
          </div>
          </div>
          <!-- FAQ TOP5 완료 -->
          <div class="row">
              <button type="button" class="btn btn-secondary" onclick="qna.jsp" >1:1 문의하기</button>	
          </div>
          <!-- FAQ 버튼완료 -->
          <!-- FAQ 목록 begin -->
          <ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">이용안내</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">결제관련</button>
  </li>
 
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="dil-tab" data-bs-toggle="tab" data-bs-target="#dil" type="button" role="tab" aria-controls="dil" aria-selected="false">배송관련</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="info-tab" data-bs-toggle="tab" data-bs-target="#info" type="button" role="tab" aria-controls="info" aria-selected="false">회원정보</button>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">

<div class="d-flex align-items-start">
  <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
    <button class="nav-link" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">이용방법</button>
    <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">반납방법</button>
  </div>
  <div class="tab-content" id="v-pills-tabContent">
    <div class="tab-pane fade" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab"><br><br>저희 스타일 스탠다드는 의류렌탈 방식입니다.<br> 최소 3일부터 최대 7일까지 연장할 수 있습니다.<br>만약 마음에 든다면 제품을 그대로 구매할 수 있습니다.</div>
    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab"><br><br>저희 스타일 스탠다드가 대여해드렸을 당시 박스에 그대로 담아서 재포장 해주시면 됩니다.<br>재포장 후 문의게시글에 글을 남겨주시면,<br>저희가 택배기사님께 연락을 드려 고객님 댁으로 가실 수 있도록 안내를 해드립니다.</div>

  </div>
</div>

</div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

<div class="d-flex align-items-start">
  <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
    <button class="nav-link" id="v-pills-pay-tab" data-bs-toggle="pill" data-bs-target="#v-pills-pay" type="button" role="tab" aria-controls="v-pills-pay" aria-selected="true">결제방식</button>
    <button class="nav-link" id="v-pills-refund-tab" data-bs-toggle="pill" data-bs-target="#v-pills-refund" type="button" role="tab" aria-controls="v-pills-refund" aria-selected="false">환불규정</button>
  </div>
  <div class="tab-content" id="v-pills-tabContent">
    <div class="tab-pane fade" id="v-pills-pay" role="tabpanel" aria-labelledby="v-pills-pay-tab"><br><br>원하시는 수량을 선택한 후에, <br> 그에 맞는 금액을 결제하면 됩니다.</div>
    <div class="tab-pane fade" id="v-pills-refund" role="tabpanel" aria-labelledby="v-pills-refund-tab"><br><br>포장을 뜯지 않으시고 하루만에 요청을 하시면<br>전액환불을 해드릴 수 있습니다.</div>
  </div>
</div>


</div>
  <div class="tab-pane fade" id="dil" role="tabpanel" aria-labelledby="dil-tab">
<div class="d-flex align-items-start">
  <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
    <button class="nav-link" id="v-pills-dayy-tab" data-bs-toggle="pill" data-bs-target="#v-pills-dayy" type="button" role="tab" aria-controls="v-pills-dayy" aria-selected="false">배송기간</button>
    <button class="nav-link" id="v-pills-comp-tab" data-bs-toggle="pill" data-bs-target="#v-pills-comp" type="button" role="tab" aria-controls="v-pills-comp" aria-selected="false">택배사정보</button>
  </div>
  <div class="tab-content" id="v-pills-tabContent">
    <div class="tab-pane fade" id="v-pills-dayy" role="tabpanel" aria-labelledby="v-pills-dayy-tab"><br><br>저희 스타일 스탠다드의 평균 배송일은 <br> 공휴일 제외하고 이틀정도가 걸립니다.</div>
    <div class="tab-pane fade" id="v-pills-comp" role="tabpanel" aria-labelledby="v-pills-comp-tab"><br><br>저희 스타일 스탠다드는<br>CJ대한통운 택배사를 이용합니다.</div>
  </div>
</div>


</div>
  <div class="tab-pane fade" id="info" role="tabpanel" aria-labelledby="info-tab">


<div class="d-flex align-items-start">
  <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
    <button class="nav-link" id="v-pills-how-tab" data-bs-toggle="pill" data-bs-target="#v-pills-how" type="button" role="tab" aria-controls="v-pills-how" aria-selected="true">회원가입</button>
    <button class="nav-link" id="v-pills-modi-tab" data-bs-toggle="pill" data-bs-target="#v-pills-modi" type="button" role="tab" aria-controls="v-pills-modi" aria-selected="false">정보수정</button>
    <button class="nav-link" id="v-pills-pro-tab" data-bs-toggle="pill" data-bs-target="#v-pills-pro" type="button" role="tab" aria-controls="v-pills-pro" aria-selected="false">개인정보</button>
    <button class="nav-link" id="v-pills-del-tab" data-bs-toggle="pill" data-bs-target="#v-pills-del" type="button" role="tab" aria-controls="v-pills-del" aria-selected="false">회원탈퇴</button>
 	<button class="nav-link" id="v-pills-cen-tab" data-bs-toggle="pill" data-bs-target="#v-pills-cen" type="button" role="tab" aria-controls="v-pills-cen" aria-selected="false">탈퇴취소</button>
 
  </div>
  <div class="tab-content" id="v-pills-tabContent">
    <div class="tab-pane fade" id="v-pills-how" role="tabpanel" aria-labelledby="v-pills-how-tab"><br><br>상단 회원가입을 클릭 후 회원 정보 입력 후<br> 회원가입이 가능합니다.</div>
    <div class="tab-pane fade" id="v-pills-modi" role="tabpanel" aria-labelledby="v-pills-modi-tab"><br><br>마이 페이지 > 회원 정보 변경에서 수정할 수 있습니다.</div>
    <div class="tab-pane fade" id="v-pills-pro" role="tabpanel" aria-labelledby="v-pills-pro-tab"><br><br>스타일 스탠다드는 개인 중요 정보를 서버에 저장하지 않으며, 배송에 필요한 최소한의 정보만을 받고 있습니다</div>
    <div class="tab-pane fade" id="v-pills-del" role="tabpanel" aria-labelledby="v-pills-del-tab"><br><br>마이 페이지 > 회원 정보 변경에서 회원탈퇴 신청하시면 됩니다.</div>
  	<div class="tab-pane fade" id="v-pills-cen" role="tabpanel" aria-labelledby="v-pills-cen-tab"><br><br>회원탈퇴 즉시 개인정보가 파기 되어 안타깝지만 다시 가입해주셔야 합니다.</div>
  </div>
</div>

</div>
</div>
    <!-- 회원정보 end -->
    </div>						    
          <!-- FAQ 목록 end -->

          <!-- 송명재 배송검색결과 조회하는게 위에 FAQ목록에 있어서 일단 뺏는데 필요하면 다시 넣겠다. -->
          <!-- 배송검색결과 begin -->
          <!-- 배송검색결과 end -->
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

</html>