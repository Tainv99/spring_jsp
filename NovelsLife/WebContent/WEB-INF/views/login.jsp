<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
	
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
</head>
<body>
	<h1>Chào mừng đến với Yeumanga</h1>

	<div class="w3layoutscontaineragileits">
	<h2>Login here</h2>
		<form:form action="login.htm" modelAttribute="Users"
								method="post">
			<form:input path="UserID" class="form-control"
											placeholder="Tên đăng nhập" />
			<form:password path="pass" class="form-control"
											placeholder="Mật khẩu" />
			<ul class="agileinfotickwthree">
				<li>
					<input type="checkbox" id="brand1" value="">
					<label for="brand1"><span></span>Remember me</label>
					<a href="#">Forgot password?</a>
				</li>
			</ul>
			${message}
			<div class="aitssendbuttonw3ls">
				<input type="submit" value="LOGIN">
				
			</div>
		</form:form>
	</div>
	
</body>
</html>