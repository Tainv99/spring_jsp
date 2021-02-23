<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta property="fb:app_id" content="3122901417761169"/>
<meta property="fb:admins" content="100013089037561">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>winter</title>

    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
    <!-- Bootstrap -->
      <link href="css/style.css" rel="stylesheet" />
    <link href="js/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>
    
</head>
<body>
<!-- facebook -->
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v6.0&appId=3122901417761169&autoLogAppEvents=1"></script>
<!--  -->
<div class="container">
    <div class="navbar-collapse collapse">
        <!--Menu-->
        <ul class="nav navbar-nav">
            <li><a href="home.htm"> Trang chủ</a></li>
            <li><a href="">Version English</a></li>
            <li><a href="">Liên hệ</a></li>
        </ul>
        <!--Menu-->
    </div>
    <header class="row">
     <img src="images/Yeumanga.png" style="width: 150px">
    </header>
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
                    <li><a href=""> <img src="images/logo.png" style="width: 150px"></a></li>
                    <li><a href=""> Trang chủ</a></li>
                    <li><a href="">Giới thiệu</a></li>
                    <li><a href="">Liên hệ</a></li>
                    <li><a href=""> Góp ý</a></li>
                    <li><a href="">Hỏi dáp</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Thể loại <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li>
                            	<c:forEach var="u" items="${category}">
											<a class="dropdown-item" href="/NovelsLife/viewcategory/${u.categoryID}.htm">${u.name}</a>
										</c:forEach>
                            </li>
                        </ul>
                    </li>
                </ul>

                <!--Menu-->
            </div>
        </div>
    </nav>
            
										
		</div>
</body>
</html>