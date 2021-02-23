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
<title>Hồ sơ</title>
</head>
<body style="background: #ebebeb;">
	<div class="container">
		<jsp:include page="inclues/header.jsp" />
		<form:form action="viewuser.htm" modelAttribute="users" method="POST">
			<article class="col-sm-12">
				<div class="col-sm-4">${sessionScope.viewuser.avatar}</div>
				<div class="col-sm-3">
				
					UserID<br />
			<form:input path="userID" class="input" disabled="true"/>
			<br /> Username<br />
			<form:input path="username" class="input"/>
			<br /> Pass<br />
			<form:input path="pass" class="input"  type="password"/>
			<button name="btnUpdate" class="btn btn-warning" ><a href="user.htm">CHỈNH SỬA HỒ SƠ</a></button><br/>
				</div>
				<div class="col-sm-3">
					Email<br />
			<form:input path="email" class="input" />
			<br /> isAdmin<br />
			<form:input path="isAdmin" class="input"/>
				</div>
				
			</article>
			
	</form:form>
 
	</div>
	
</body>

</html>