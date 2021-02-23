<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>HightChart</title>

</head>
<body style="background: #ebebeb;">
	<div class="container">
		<jsp:include page="inclues/header.jsp" />
		<div class="poly-sheet row">
			<article class="col-sm-9">
				<!--N?i dung trang web-->
				<table
								class="table table-striped table-bordered table-hover table-condensed">
					<tr>
						<th>Tổng thể loại</th>
						<th>Tổng tác giả</th>
						<th>Tổng số lượng truyện</th>
					</tr>
					<tr>
						<td>${countcategory}</td>
						<td>${countauthor}</td>
						<td>${countproduct}</td>
					</tr>
				</table>
			</article>
			
			<aside class="col-sm-3">
			
				<form:form action="search.htm" commandName="products">
					<form:input path="name" placeholder="Search..."/>
					<input type="submit" value="Search" />
					<br />

				</form:form><br/>
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
						<a href="#" class="list-group-item">Truyện bán chạy</a> <a href="#"
							class="list-group-item">Truyện mới</a> <a href="#"
							class="list-group-item">Truyện giảm giá</a> <a href="#"
							class="list-group-item">Truyện đặc biệt</a>
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