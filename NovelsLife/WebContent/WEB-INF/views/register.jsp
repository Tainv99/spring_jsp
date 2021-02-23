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

    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <link href="js/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>

    <!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
</head>
<body>
<h1>WELCOME TO NOVELLFIE</h1>

	<div class="w3layoutscontaineragileits">
	<h2>Register here</h2>
	${message}
		<form:form action="${sessionScope.action}" modelAttribute="users"
			method="POSt">
			<form:input path="UserID" class="form-control"
				placeholder="Tên đăng nhập" />
			<form:errors path="UserID"></form:errors>
			<form:password path="pass" class="form-control"
				placeholder="Mật khẩu" />
			<form:errors path="pass"></form:errors>
			<form:input path="username" class="form-control" placeholder="Họ tên" />
			<form:errors path="username"></form:errors>
			<form:input path="email" class="form-control" placeholder="Email" />
			<form:errors path="email"/>
			
			<c:if test="${sessionScope.user.isAdmin==0}">
							 	<form:input path="isAdmin" class="form-control"
											placeholder="isAdmin" />
                                
			</c:if>
			<ul class="agileinfotickwthree">
				<li>
					<a href="login.htm">Login</a>
				</li>
			</ul>
			<div class="aitssendbuttonw3ls">
				<input name="btnInsert" type="submit" value="Register">

			</div>
		</form:form>
	</div>
	
</body>
</html>