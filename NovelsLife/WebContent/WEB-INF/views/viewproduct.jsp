<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Thông tin chi tiết</title>
<base href="${pageContext.servletContext.contextPath}/">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang chủ</title>

<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!-- Bootstrap -->
<link href="js/bootstrap.min.css" rel="stylesheet" />
<script src="js/bootstrap.min.js"></script>

<!-- Poly -->
<!-- <link href="css/poly.css" rel="stylesheet" /> -->
</head>
<body>
	<div class="container">
		<div class="navbar-collapse collapse">
        <!--Menu-->
        <ul class="nav navbar-nav">
            <li><a href="home.htm"> Trang chủ</a></li>
            <li><a href="">Version English</a></li>
            <li><a href="https://www.facebook.com/messages/t/100013089037561">Liên hệ</a></li>
            <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Thống kê<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="count.htm">Thống kê số lượng</a></li>
                            <li><a href="hightchart.htm">Thống kê views</a></li>
                        </ul>
                    </li>
        </ul>
        <!--Menu-->
    </div>
    <nav class="row">
        <div class="navbar navbar-inverse">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse">
                <!--Menu-->
                <ul class="nav navbar-nav">
                    <li><a href="home.htm"> Trang chủ</a></li>
                    <li><a href="author.htm">Tác giả</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Sắp xếp<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="sort.htm">Top views</a></li>
                        </ul>
                    </li>
                    <li><a href="product.htm">Truyện</a></li>
                    <c:if
						test="${sessionScope.user.isAdmin==1}">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Quản lý<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="category.htm">Quản lý thể loại</a></li>
                            <li><a href="author.htm">Quản lý tác giả</a></li>
                            <li><a href="product.htm">Quản lý truyện</a></li>
                            <li><a href="productdetail.htm">Quản lý chương</a></li>
                        </ul>
                    </li>
                    </c:if>
                    <li class="dropdown">
                        <a href="category.htm" class="dropdown-toggle" data-toggle="dropdown">Thể loại <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li>
                            	<c:forEach var="u" items="${category}">
											<a class="dropdown-item" href="/NovelsLife/viewcategory/${u.categoryID}.htm">${u.name}</a>
										</c:forEach>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tài khoản <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="login.htm">Ðăng nhập</a></li>
                            <li><a href="register.htm">Đăng ký</a></li>
                        </ul>
                    </li>
                    <c:if
						test="${sessionScope.user.isAdmin==0||sessionScope.user.isAdmin==1}">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="resources/images/avatar.jpg" width="30" height="20" class="img-circle"/> <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="logout.htm">Ðăng xuất</a></li>
                            <li><a href="">Cập nhật hồ sơ</a></li>
                        </ul>
                    </li>
                    </c:if>
                </ul>

                <!--Menu-->
            </div>
        </div>
    </nav>
		<article class="col-sm-12">
			<!--Nội dung trang web-->
			<div class="container-fluid">
				<div class="row">
				<div class="col-sm-1">${sessionScope.viewproduct.thumbnail}</div>
					
						
					<ul class="col-sm-9">

							<div class="s_product_text" style="margin-left: 50px;">

								<strong><h4>${sessionScope.viewproduct.name}</h4></strong><br />
								Tác giả:<a href="viewauthor/${sessionScope.viewproduct.author.authorID}.htm" >
									${sessionScope.viewproduct.author.name}<br />
								</a> Thể loại:<a href="viewcategory/${sessionScope.viewproduct.category.categoryID}.htm"> ${sessionScope.viewproduct.category.name}<br /></a>
									Tình trạng:Đang cập nhật<br /> Lượt
									xem:${sessionScope.viewproduct.views}<br />
								Nội dung :${sessionScope.viewproduct.content}
								<hr />
								<div class="fb-like" data-href="http://localhost:8080/NovelsLife/viewproduct/${sessionScope.viewproduct.id}.htm" data-width="" data-layout="standard" data-action="like" data-size="small" data-share="true"></div>
					
					
				 				
								<!--  <div class="facebook">
						<a rel="nofollow" class="style-chat-product-detail" href="http://localhost:8080/NovelsLife/home.htm" target="_blank">
								<img src="images/messener.png">
							NHẮN TIN FACEBOOK</a>
							</div>
							-->	
							</div>
					
					</ul>
				</div>
				<div class="row">
				<div class="danhsach">
					<h2 style="color: #FF8000; border-top: #ddd solid 1px; border-bottom: #ddd solid 1px; padding: 15px 12px;">
					Danh sách chương</h2>
					</div>
					<div class="panel panel-default">
						<div class="panel-body">
							<c:forEach var="pddt" items="${productdetails}">
								<a
									href="viewproductdetail/<c:out value="${pddt.productdetail}"/>.htm" name="countviews" target="_blank">Chương<c:out
										value="${pddt.chapters}" />: <c:out value="${pddt.title}"/></a>
								<hr />
							</c:forEach>
							
							
						</div>
					</div>
				</div>
				
<!-- facebook Demo-->
<!--  <div class="fb-comments" data-href="http://localhost:8080/NovelsLife/viewproduct/${sessionScope.viewproduct.id}.htm" data-width="100%" data-numposts="10"></div>
<div id="fb-root"></div>
<script async defer src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6"></script>

<div id="fb-root"></div>
  <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0"></script>
-->

<!-- Comments facebook 2 -->
<div class="fb-comments" data-href="http://localhost:8080/NovelsLife/viewproduct/${sessionScope.viewproduct.id}.htm"  data-width="100%" data-numposts="10"></div>
<div id="fb-root"></div>
<script async defer src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6"></script>

<div id="fb-root"></div>
  <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0"></script>


  <!-- Your like button code -->
  <div class="fb-like" 
    data-href="https://www.your-domain.com/your-page.html" 
    data-layout="standard" 
    data-action="like" 
    data-show-faces="true">
  </div>

				
			</div>

		</article>

	</div>
</body>
</html>