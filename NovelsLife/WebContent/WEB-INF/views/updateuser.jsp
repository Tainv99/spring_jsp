<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body style="background: #ebebeb;">
<form:form action="updateifuser.htm" modelAttribute="users" method="POST" enctype="multipart/form-data">
<input type="text" name="userID"/>
Họ tên:
<input type="text" name="username" value="${sessionScope.user.username}"><br/>

Email:
<input type="text" name="email" value="${sessionScope.user.email}">
<br/>
Avatar:
<input type="file" name="avatar">
<button name="btnUpdate" class="btn btn-warning">Sửa</button>
</form:form>
</body>
</html>