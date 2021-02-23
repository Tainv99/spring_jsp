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
			
			<form:form action="search.htm" commandName="products">
					<form:input path="name" placeholder="Search..."/>
					<input type="submit" value="Search" />
					<br />

				</form:form><br/>
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

                        <div class="panel panel-default">
            <div class="panel-heading">
                    <strong>Thể loại</strong>
                </div>
            <div class="daoly">
                     <a>
                            	<c:forEach var="u" items="${category}">
											<a class="dropdown-item col-md-12 " href="/NovelsLife/viewcategory/${u.categoryID}.htm">${u.name}</a>
										</c:forEach>
                            </a>
                            </div>
                           
             
             </div>
				<!--/Special-->
			</aside>

			<article class="col-sm-12">
				<!--N?i dung trang web-->
			
			</article>
			<article class="col-sm-9">
				<c:if
			test="${sessionScope.user.isAdmin==0||sessionScope.user.isAdmin==1}">
			<div class="information">
				<form:form action="product.htm" modelAttribute="products" enctype="multipart/form-data"
					method="POST">
											
											<div>Mã truyện</div>
					<form:input path="id" class="form-control" />
					<div>Tên truyện</div>
					<form:input path="name" class="form-control" />
					<div>Nội dung</div>
					<form:input path="content" class="form-control" />
							Thể loại<br/>
					<form:select path="category.categoryID" items="${category}"
						itemLabel="name" itemValue="categoryID"></form:select>
					<br />
									Tác giả<br />
					<form:select path="author.authorID" items="${author}"
						itemLabel="name" itemValue="authorID"></form:select>
					<br />
									Danh ngôn<br />
					<form:select path="maxim.maximID" items="${maxim}"
						itemLabel="maximID" itemValue="maximID"></form:select>
					<br />

					<div>Ảnh</div>
					<form:textarea path="thumbnail" class="input"  id="noidung"/>
					<div id="btn">
						<button name="btnInsert" class="btn btn-warning">Thêm</button>
						<c:if test="${sessionScope.user.isAdmin==1}">
							<button name="btnUpdate" class="btn btn-warning">Sửa</button>
							<button name="btnDelete" class="btn btn-warning">Xóa</button>
						</c:if>
					</div>

				</form:form>
			</div>
		</c:if>
			</article>
		</div>
		<script>
	var editor=CKEDITOR.replace( 'noidung');
	CKFinder.setupCKEditor(editor,'libraries/ckfinder/')
		</script>
		<div class="container">
		<footer class="panel panel-default row">
			<div class="panel-heading text-center">
				<p>© 2020 Yeumanga</p>
			</div>
		</footer>
            </div>
	</div>
</body>

</html>