<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/libraries/ckeditor/ckeditor.js">
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/libraries/ckfinder/ckfinder.js">
</script>
<base href="${pageContext.servletContext.contextPath}/">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href="css/css_trangchu.css" rel="stylesheet" type="text/css">
<title>Truyện</title>
</head>
<body>
	<div class="container">
		<jsp:include page="inclues/header.jsp" />
		<div class="poly-sheet row">
			<article class="col-sm-9">
			 <div class="panel-heading ">
			 Tất cả truyện
			 </div>
				<!--N?i dung trang web-->
				<div class="container-fluid">
					<div class="row">
		<!--N?i dung trang web-->
				<c:forEach var="u" items="${product}">

            <div class="sanpham"> 
               <a href="viewproduct/${u.id}.htm"> ${u.thumbnail}</a>
                <p class="tensp" >${u.name}</p>
                
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
	
		<footer class="panel panel-default row">
			<div class="panel-heading text-center">
				<p>FPT Polytechnic &copy; 2017. All rights reserved.</p>
			</div>

		</footer>

	</div>
</body>

</html>