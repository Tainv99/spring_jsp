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
<title>Chi tiết tác giả</title>
</head>

<body style="background: #ebebeb;">
	<div class="container">
		<jsp:include page="inclues/header.jsp" />
		<article class="col-sm-12">
			<!--Nội dung trang web-->
			<div class="container-fluid">
				<div class="row">
					<div class="panel panel-default">

						<div class="panel-body">
							<ul class="col-sm-9">
								<form:form action="viewauthor.htm" modelAttribute="author"
									method="POSt">
									<h3>Thông tin tác giả</h3>
									<strong>Tên tác giả</strong>:${sessionScope.viewauthor.name}<br />
									<strong>Tuổi</strong>:${sessionScope.viewauthor.age}<br />
									<strong>Địa chỉ</strong>:${sessionScope.viewauthor.address}<br />
									<strong>Tiểu sử</strong>:${sessionScope.viewauthor.authorDetail}<br />


								</form:form>
							</ul>
						</div>
					</div>
				</div>
				<article class="col-sm-9">
					<!--N?i dung trang web-->
					
					<div class="container-fluid">
						<div class="row">
						<h2 style="color: #FF8000;">Danh sách truyện</h2>
							<c:forEach items="${products}" var="item">
								<div class="col-sm-4">
									
									<a href="viewproduct/${item.id}.htm">
									${item.thumbnail}</a>
										<div class="card-body" style="text-align: center;">
										<a href="viewproduct/${item.id}.htm"><c:out
													value="${item.name}"></c:out></a>
													</div>

								</div>
							</c:forEach>

						</div>
					</div>
				</article>
			</div>

		</article>

	</div>
</body>

</html>