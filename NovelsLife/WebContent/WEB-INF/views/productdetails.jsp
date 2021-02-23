<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Chi ti?t truy?n</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/libraries/ckeditor/ckeditor.js">
	
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/libraries/ckfinder/ckfinder.js">
	
</script>
<body>
<jsp:include page="inclues/header.jsp" />
<div class="container">
	<div id="nd" style="text-align: centre;">
		<table
			class="table table-striped table-bordered table-hover table-condensed">
				<tr>
					<td>STT</td>
					<td>Mã</td>
					<td>Tên chuong</td>
				</tr>
				<c:forEach var="u" items="${productdetail}">
				<c:set var="count" value="${count+1}" />
				<tr>
					<td>${count}</td>
					<td>${u.title}</td>
					<td>${u.productdetail}</td>
				</tr>
				</c:forEach>
		</table>
	</div>


	<div class="panel-body">

		<div class="information">
			<form:form action="productdetail.htm" modelAttribute="productdetails"
				method="POST">
				<div>Mã chi ti?t</div>
				<form:input path="productdetail" class="form-control" />
				<div>Chuong</div>
				<form:input path="chapters" class="form-control" />
				<div>Title</div>
				<form:input path="title" class="form-control" />
				<div>N?i dung</div>
				<form:textarea path="content" class="form-control" id="noidung" />
				<br />
								Mã truy?n<br />
				<form:select path="product.id" items="${product}" itemLabel="name"
					itemValue="id"></form:select>
				<br />
				<div id="btn">
					<button name="btnInsert" class="btn btn-warning">Thêm</button>
					<c:if test="${sessionScope.user.isAdmin==1}">
						<button name="btnUpdate" class="btn btn-warning">S?a</button>
						<button name="btnDelete" class="btn btn-warning">Xóa</button>
					</c:if>
				</div>

			</form:form>
		</div>

	</div>
</div>
	<script>
		var editor = CKEDITOR.replace('noidung');
		CKFinder.setupCKEditor(editor, 'libraries/ckfinder/')
	</script>
			<div class="container">
		<footer class="panel panel-default row">
			<div class="panel-heading text-center">
				<p>© 2020 Yeumanga</p>
			</div>
		</footer>
            </div>
</body>
</html>