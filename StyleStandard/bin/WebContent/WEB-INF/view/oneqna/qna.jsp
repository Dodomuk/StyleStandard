<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../header.jsp"%>

<% 
	//파라미터 한글처리
	request.setCharacterEncoding("utf-8"); 

		
		 
	 int tot = 0;
	 // Null값일때 형변환 하면 에러가나니.. 체크
	 if(request.getAttribute("tot") != null){
				 
		 tot = (Integer)request.getAttribute("tot");
		 
	 }
	 
	 
	 


%>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Deerhost Template">
    <meta name="keywords" content="Deerhost, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>StyleStandard에 오신것을 환영합니다!</title>
    
<style>
    .form-inline
{display:-ms-flexbox;display:flex;-ms-flex-flow:row wrap;flex-flow:row wrap;-ms-flex-align:center;align-items:center}
.form-inline .form-check{width:100%}
@media (min-width:576px)
{.form-inline label{display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;-ms-flex-pack:center;justify-content:center;margin-bottom:0}
.form-inline .form-group{display:-ms-flexbox;display:flex;-ms-flex:0 0 auto;flex:0 0 auto;-ms-flex-flow:row wrap;flex-flow:row wrap;-ms-flex-align:center;align-items:center;margin-bottom:0}
.form-inline .form-control{display:inline-block;width:auto;vertical-align:middle}.form-inline .form-control-plaintext{display:inline-block}
.form-inline .custom-select,.form-inline .input-group{width:auto}
.form-inline .form-check{display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;-ms-flex-pack:center;justify-content:center;width:auto;padding-left:0}
.form-inline .form-check-input{position:relative;-ms-flex-negative:0;flex-shrink:0;margin-top:0;margin-right:.25rem;margin-left:0}
.form-inline .custom-control{-ms-flex-align:center;align-items:center;-ms-flex-pack:center;justify-content:center}.form-inline .custom-control-label{margin-bottom:0}}
</style>
 
    <link rel="stylesheet" href="../../../resource/css/table.css">
    <link rel="stylesheet" href="../../../resource/css/dongmuk.css" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<%-- jQuery CDN --%>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<%-- BootStrap CDN --%>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
   href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- jQuery library -->
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
   src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


<%-- JavaScript review_read 이벤트 처리 --%>
<script type="text/javascript">

	//글 번호를 가지고 있을 전역변수
	var G_qna_num;

	function qna_read(num) {
		
		<%-- qna_read 서블릿 호출 --%>
		
			G_qna_num = num;
		
			//파라미터
			var param = {
					
					qna_num : num
			}
			
			
			//요청
			$.ajax({
				
				url : "qna_read.credu",
				dataType : "text",
				data : param,
				type : "post",
				success : function(data) {
															
					$("#content").text(data);
										
				}
						
			});
			
			
	}
	
	
	function qna_delete() {
		
		<%-- review_delete 서블릿 호출 --%>
		
			//파라미터
			var param = {
					
					qna_num : G_qna_num
			}
			
			
			//요청
			$.ajax({
				
				url : "qna_delete.credu",
				dataType : "text",
				data : param,
				type : "post",
				success : function(data) {
									
					alert("삭제 되었습니다.");
					G_qna_num = 0; //전역변수 초기화
					location.href = "qna.credu";
						
				}
						
			});
			
	}

</script>



</head>

<body>

<%-- review 리스트 서블릿 호출 --%>
	<c:url var="qna_list" value="qna_list.credu"></c:url>
	<%-- review 작성 서블릿 호출 --%>
	<c:url var="qna_write" value="qna_write.credu"></c:url>
	<%-- review 삭제 서블릿 호출 --%>
	<c:url var="qna_delete" value="qna_delete.credu"></c:url>
	<c:url var="qna_modi" value="qna_modi.credu"></c:url>
	
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
                        <li><a href="../notice">공지사항</a></li>
                        <li><a href="../qna">문의 사항</a></li>
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
                                    <li><a href="../notice">공지사항</a></li>
                                    <li><a href="../qna">문의 사항</a></li>
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
                        <span>문의 게시판</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <%-- review 리스트 서블릿 호출 --%>
   <c:url var="qna_list" value="qna_list.credu"></c:url>
   <%-- review 작성 서블릿 호출 --%>
   <c:url var="qna_write" value="qna_write.credu"></c:url>
   <%-- review 삭제 서블릿 호출 --%>
   <c:url var="qna_delete" value="qna_delete.credu"></c:url>
   
   
   
     


   <div class="container">
      <div class="jumbotron">
         <h2>문의 게시판</h2>
      </div>

      <table class="table">
         <thead>
            <tr>
               <th>글번호</th>
               <th>ID</th>
               <th>Title</th>
               <th>작성일</th>
            </tr>
         </thead>

         <tbody>
            
            <c:forEach var="qna_Bean" items="${requestScope.list}">
            
            <tr class="info">
               <td>${qna_Bean.qna_num}</td>
               <td>${qna_Bean.user_id}</td>
               <td><a data-toggle="modal" data-target="#myModal2" onclick="qna_read(${qna_Bean.qna_num})">${qna_Bean.qna_title}</a></td>
               <td>${qna_Bean.qna_regdate}</td>
            </tr>
            
            </c:forEach>
         
         </tbody>
      </table>

      <div class="row">
         <div class="col-sm-6">
         
            <div style="text-align:left">
               <ul class="pagination" id="page_num">
                  <li>
                           
                  
                   <% for(int i = 1 ; i<=tot ; i++){ %>
                      
                      <a href="qna.credu?Page_num=<%=i%>"><%=i%></a>
                     
                     <% } %>
                              
                  </li>
               </ul>
            </div>
         
         
         </div>
         <div class="col-sm-2"></div>
         <div class="col-sm-4 text-success" style="text-align: right;"> 
         <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal">Write</button>
         </div>
      </div>
       
      
       <!-- Modal -->
     <div class="modal fade" id="myModal" role="dialog">
       <div class="modal-dialog modal-lg">
    
         <!-- Modal content-->
         <div class="modal-content">
           <div class="modal-header">
           <button type="button" class="close" data-dismiss="modal">&times;</button>
           </div>
        
        <div class="modal-body">
          
         <div class="panel-group">
         <div class="panel panel-success" style="margin-top: 10px;">
            <div class="panel-heading">문의</div>
            <div class="panel-body">
               <%-- form --%>
               <form class="form-horizontal" role="form" action="${qna_write}" method="post">
                  <div class="form-group">
                     <label class="control-label col-sm-2">작성자(ID):</label>
                     <div class="col-sm-10">
                        <input type="text" class="form-control" id="user_id"
                           name="user_id" placeholder="ID">
                     </div>
                  </div>
                 
                  <div class="form-group">
                     <label class="control-label col-sm-2" for="pwd">제목:</label>
                     <div class="col-sm-10">
                        <input type="text" class="form-control" id="qna_title"
                           name="qna_title" placeholder="Title">
                     </div>
                  </div>
                  
                  <!-- 
                   <div class="form-group">
                     <label class="control-label col-sm-2" for="pwd">첨부파일:</label>
                     <div class="col-sm-10">
                       <input type="file" name="fileName1"/>
                     </div>
                  </div>
                   -->
                  
                  <div class="form-group">
                     <label class="control-label col-sm-2" for="pwd">내용:</label>
                     <div class="col-sm-10">
                        <textarea class="form-control" rows="5"   placeholder="qna_content" name="qna_content" id="qna_content"></textarea>
                     </div>
                  </div>
                  
                  
                  <div class="form-group">
                     <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-success">작 성</button>
                        <button type="reset" class="btn btn-danger">초기화</button>
                     </div>
                  </div>
               </form>


            </div>

         </div>
      </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  
  <!-- Modal2 _ read review -->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">문의</h4>
        </div>
        <div class="modal-body">
                      
          <textarea rows="10" class="form-control" readonly="readonly" id="content"></textarea>   
                    
        </div>
        <div class="modal-footer">
           
          <button type="button" class="btn btn-danger" onclick="qna_modi()">수정</button>             
          <button type="button" class="btn btn-danger" onclick="qna_delete()">Delete</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
           
        </div>
      </div>
      
    </div>
  </div>
      
   </div>


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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>

</html>