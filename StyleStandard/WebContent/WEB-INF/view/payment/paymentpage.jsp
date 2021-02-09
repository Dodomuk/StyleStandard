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
    <link rel="stylesheet" href="../../../resource/css/table.css">
    <link rel="stylesheet" href="../../../resource/css/dongmuk.css" type="text/css">
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
            <a href="#"><img src="../../../resource/img/logo.png" alt=""></a>
        </div>
        <nav class="offcanvas__menu mobile-menu">
            <ul>
                <li class="active"><a href="../index/index.jsp">메인페이지</a></li>
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
                <li><a href="../member/mypage.jsp">마이페이지</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__auth">
            <ul style="padding-left: 0;">
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
                        <a href="../index/index.jsp"><span class="fa fa-home"></span> Home</a>
                        <span>결제페이지</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <section class="pricing-section spad" style="padding-top: 40px;">
        <div class="container">
            <div class="row">
                <h3>주문자 정보</h3>
                <table class="table .table-responsive">
                    <tbody>
                      <tr>
                        <th style="width: 195px; height: 29px;" scope="row">주문하시는 분</th>
                        <td><input type="text"></td>
                      </tr>
                      <tr>
                        <th scope="row">전화번호</th>
                        <td><input type="text"></td>
                      </tr>
                        <tr>
                            <th scope="row">휴대전화</th>
                            <td><input type="text"></td>
                          </tr>
                          <tr>
                            <th scope="row">이메딜</th>
                            <td><input type="email"></td>
                          </tr>
                    </tbody>
                  </table>
         </div>
        </div>

        <div class="container">
            <div class="row">
                <h3>배송지 정보</h3>
                <table class="table .table-responsive">
                    <tbody>
                      <tr>
                        <th scope="row"> 배송지 선택</th>
                        <td>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                                <label class="form-check-label" for="inlineRadio1">주문인 정보와 동일</label>
                              </div>
                              <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                <label class="form-check-label" for="inlineRadio2">기본 배송지</label>
                              </div>
                              <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
                                <label class="form-check-label" for="inlineRadio3">신규배송</label>
                              </div>
                              <div class="btn btn-danger">
                                  <span>배송지 목록</span>
                              </div>
                        
                    </td>
                      </tr>
                      <tr>
                        <th scope="row">받으시는분</th>
                        <td><input type="text"></td>
                      </tr>
                        <tr>
                            <th scope="row">전화번호</th>
                            <td><input type="text"></td>
                          </tr>
                          <tr>
                            <th scope="row">휴대전화</th>
                            <td><input type="text"></td>
                          </tr>
                          <tr>
                            <th scope="row">주소</th>
                            <td><input type="text"><a href="#" style="text-decoration: none;">우편번호 찾기</a>
                            <input type="text">
                            <input type="text"></td>
                          </tr>
                          <tr>
                            <th scope="row">배송시 요청사항</th>
                            <td><div class="mb-3">
                                <input type="text" class="form-control" id="formGroupExampleInput2" >
                              </div></td>
                          </tr>
                    </tbody>
                  </table>
                  <table class="table .table-responsive" style="text-align: center;">
                    <h3>상품 정보</h3>
                    <thead>
                      <tr>
                        <th>상품정보</th>
                        <th>수량</th>
                        <th>가격</th>
                        <th>구매 여부</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                  상품이미지 출력
                                </label>
                        </th>
                        <td>1EA</td>
                        <td>100,000원</td>
                        <td>
                            <button type="button" class="btn btn-light">취소</button>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                  상품이미지 출력
                                </label>
                        </th>
                        <td>1EA</td>
                        <td>100,000원</td>
                        <td>
                            <button type="button" class="btn btn-light">취소</button>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                <label class="form-check-label" for="flexCheckDefault">
                                  상품이미지 출력
                                </label>
                        </th>
                        <td>1EA</td>
                        <td>100,000원</td>
                        <td>
                            <button type="button" class="btn btn-light">취소</button>
                        </td>
                      </tr>
                    </tbody>
                  </table>
         </div>
         <div class="row pt-3 pb-3 border-top">
            <div class="col-6">
                <h3>총 상품 금액</h3>
            </div>
            <div class="col-6" style="text-align: right;">
                <h3>100,000원</h3>
            </div>
        </div>
        <div class="d-flex justify-content-end align-items-center">
            <div class="col-6 d-grid p-1" style="width: 350px;"">
                <button type="button" class="btn btn-lg btn-danger">결제하기</button>
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
    <!-- Js Plugins -->

    <script src="../../../resource/js/bootstrap.min.js"></script>
    <script src="../../../resource/js/main.js"></script>
</body>

</html>