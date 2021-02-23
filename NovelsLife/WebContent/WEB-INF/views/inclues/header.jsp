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

<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!-- Bootstrap -->
<link href="js/bootstrap.min.css" rel="stylesheet" />
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div id="fb-root"></div>
	<script async defer crossorigin="anonymous"
		src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v6.0"></script>
	<div class="container">
		<div class="navbar-collapse collapse">
			<!--Menu-->
			<ul class="nav navbar-nav">
				<li><a href="home.htm"> Trang chủ</a></li>
				<li><a
					href="https://www.facebook.com/messages/t/100013089037561">Liên
						hệ</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Thống kê<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="count.htm">Thống kê số lượng</a></li>
						<li><a href="hightchart.htm">Thống kê views</a></li>
					</ul></li>
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
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Sắp xếp<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="sort.htm">Top views</a></li>
							</ul></li>
						<li><a href="product.htm">Truyện</a></li>
						<c:if test="${sessionScope.user.isAdmin==1}">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Quản lý<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="category.htm">Quản lý thể loại</a></li>
									<li><a href="author.htm">Quản lý tác giả</a></li>
									<li><a href="product.htm">Quản lý truyện</a></li>
									<li><a href="productdetail.htm">Quản lý chương</a></li>
									<li><a href="spoil.htm">Quản lý lịch phát</a></li>
								</ul></li>
						</c:if>
						<li class="dropdown"><a href="category.htm"
							class="dropdown-toggle" data-toggle="dropdown">Thể loại <span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><c:forEach var="u" items="${category}">
										<a class="dropdown-item"
											href="/NovelsLife/viewcategory/${u.categoryID}.htm">${u.name}</a>
									</c:forEach></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Tài khoản <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="login.htm">Ðăng nhập</a></li>
								<li><a href="register.htm">Đăng ký</a></li>
							</ul></li>
						<li></li>
						<c:if
							test="${sessionScope.user.isAdmin==0||sessionScope.user.isAdmin==1}">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"><img
									src="resources/images/avatar.jpg" width="30" height="20"
									class="img-circle" /> <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="logout.htm">Ðăng xuất</a></li>
									<li><a href="viewuser/${sessionScope.user.userID}.htm">Hồ
											sơ cá nhân</a></li>
								</ul></li>
							<li></li>
						</c:if>
					</ul>

					<!--Menu-->
				</div>
			</div>
			<div class="alert alert-success">
				<b>Đọc</b> truyện tranh <b>MiỄN PHÍ</b> tại YeuManga
			</div>
		</nav>


	</div>

</body>
</html>