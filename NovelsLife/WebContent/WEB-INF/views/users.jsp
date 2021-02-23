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
<title>User</title>
</head>
<body style="background: #ebebeb;">
	<div class="container">
		<jsp:include page="inclues/header.jsp" />
		
		<h2>Danh sách user</h2>
		<table
			class="table table-striped table-bordered table-hover table-condensed">
			<tr>
				<th>userid</th>
				<th>username</th>
				<th>email</th>
				<th>avatar</th>
				<th>Chi tiết</th>
				
			</tr>
			<c:forEach var="u" items="${user}">
				<c:set var="count" value="${count+1}" />
				<tr>

					<td>${count}</td>
					<td>${u.username}</td>
					<td>${u.email}</td>
					<td>${u.avatar}</td>

					<td><a href="viewuser/${u.userID}.htm">Chi tiết</a></td>
				</tr>

			</c:forEach>
		</table>
		<c:if
			test="${sessionScope.user.isAdmin==0||sessionScope.user.isAdmin==1}">
			<div class="information">
				<form:form action="user.htm" modelAttribute="users" method="POST">
											<div>UserID</div>
					<form:input path="userID" class="form-control"/>
					<div>Username</div>
					<form:input path="username" class="form-control" />

					<div>Password</div>
					<form:input path="pass" class="form-control" type="password"/>

					<div>Email</div>
					<form:input path="email" class="form-control" />
					<br /> isAdmin<br />
					<form:input path="isAdmin" class="input"/>
					<div>Avatar</div>
					<form:textarea path="avatar" class="input" id="noidung" />
					<div id="btn">	
							<button name="btnUpdate" class="btn btn-warning">Sửa</button>
							<c:if test="${sessionScope.user.isAdmin==1}">
							<button name="btnDelete" class="btn btn-warning">Xóa</button>
						</c:if>
					</div>

				</form:form>
			</div>
		</c:if>
		<script>
			var editor = CKEDITOR.replace('noidung');
			CKFinder.setupCKEditor(editor, 'libraries/ckfinder/')
		</script>
	</div>
</body>

</html>