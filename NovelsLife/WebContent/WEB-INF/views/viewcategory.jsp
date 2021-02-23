<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>winter</title>
<base href="${pageContext.servletContext.contextPath}/">

<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!-- Bootstrap -->
<link href="js/bootstrap.min.css" rel="stylesheet" />
<script src="js/bootstrap.min.js"></script>

<!-- Poly -->
<!-- <link href="css/poly.css" rel="stylesheet" /> -->
<link href="css/css_trangchu.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="container">
	   <div class="navbar-collapse collapse">
        <!--Menu-->
        <ul class="nav navbar-nav">
            <li><a href="home.htm"> Trang chủ</a></li>
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
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="navbar-collapse collapse">
                <!--Menu-->
                <ul class="nav navbar-nav">
                    <li><img src="images/YeuManga.png" alt="Yeumanga" /></li>
                    <li><a href="author.htm">Tác giả</a></li>
                   <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Sắp xếp<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="sort.htm">Top views</a></li>
                        </ul>
                    </li>
                    <li><a href="product.htm">Truyện</a></li>
                    <c:if
						test="${sessionScope.user.isAdmin==2}">
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
			       <div class="alert alert-success">
  <b>NÊN</b> sao chép, chia sẻ, <b>KHÔNG NÊN</b> thương mại hoá.
  </div>
		</nav>



		<form:form action="viewcategory.htm" modelAttribute="category"
			method="POSt">
	<div class="poly-sheet row">
			<article class="col-sm-9">
			 <div class="panel-heading ">
								Thể loại truyện :${sessionScope.viewcategory.name}<br />
							</div>
				<!--N?i dung trang web-->
				<div class="container-fluid">
									<div class="row">
										<c:forEach items="${products}" var="item">
 <div class="sanpham">
											
												<a href="viewproduct/${item.id}.htm">
													${item.thumbnail}</a><br />
													<a class="name" href="/NovelsLife/viewproduct/${item.id}.htm">
													 
															</a>
															  <p class="tensp" >${item.name}</p>
												
											
											</div>
										</c:forEach>

									</div>

								</div>
			</article>


			<aside class="col-sm-3">
			
			
				<table class="table  table-condensed">
					<tr class="history" style="">
					<th>Ngày</th>
					<th>Tập/Chương</th>
					<th>TL</th>
                </tr>
					<tr>
						<th>14/04</th>
						<th>Chương 965</th>
						<th>Manga</th>
					</tr>
				</table>
				<!--Special-->
				<div class="panel panel-default">
					<div class="panel-heading"> <strong>Danh ngôn hay</strong></div>

					<div class="list-group">
						<a href="#" class="list-group-item">
						Thước đo cuộc đời không phải ở chỗ nó dài hay nó ngắn, mà ở chỗ bạn đã sử dụng nó như thế nào.
						</a> 
            
					</div>
				</div>
	
                       

				<!--/Special-->
			</aside>			
		</div>
		</form:form>
		
	<div class="container">
		<footer class="panel panel-default row">
		
			<div class="panel-heading text-center">
				<p>FPT Polytechnic &copy; 2017. All rights reserved.</p>
			</div>

		</footer>
</div>
	</div>

</body>
</html>