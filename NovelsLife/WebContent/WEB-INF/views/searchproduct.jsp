<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Truyện</title>
</head>
<body style="background: #ebebeb;">
	<div class="container">
		<jsp:include page="inclues/header.jsp" />
		<div class="poly-sheet row">
			<article class="col-sm-9">
			<div class="container-fluid">
					<div class="row">
					<h3>Kết quả tìm kiếm</h3>
				<form:form action="search.htm" modelAttribute="product">
					<c:forEach items="${listproduct}" var="list">
					
								<div class="thumbnail" style="width: 170px; height: 300px; margin: 10px 0px 0px 25px;">
									
										<a href="viewproduct/${list.id}.htm">${list.thumbnail}</a>
										<div class="card-body" style="text-align: center;">
						<a href="viewproduct/${list.id}.htm">${list.name} </a></div>
					
					</div>
					</c:forEach>
	
</form:form>
${errors}
</div>
</div>
			</article>


			<aside class="col-sm-3">
				<table class="table  table-condensed">
					<tr style="background: aqua;">
						<th>Ngày</th>
						<th>Tập/Chương</th>
						<th>Thể loại</th>
					</tr>
					<tr>
						<th>14/04</th>
						<th>Chương 965</th>
						<th>Manga</th>
					</tr>
				</table>
				<!--Special-->
				<div class="panel panel-default">
					<div class="panel-heading"></div>

					<div class="list-group">
						<a href="#" class="list-group-item">Truyện bán chạy</a> <a
							href="#" class="list-group-item">Truyện mới</a> <a href="#"
							class="list-group-item">Truyện giảm giá</a> <a href="#"
							class="list-group-item">Truyện dặc biệt</a>
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