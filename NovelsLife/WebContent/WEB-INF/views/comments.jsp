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
<body>
	<c:forEach var="items" items="${comment}">
		<li>${items.commentid}</li>
		<li>${items.content}</li>
		<li>${items.date}</li>
		<li>${items.users.username}</li>
	</c:forEach>
	
	<form:form action="comment.htm" modelAttribute="comments"
							method="POST">
											Quản lý comment
											<div>Mã comment</div>
							<form:input path="commentid" class="form-control"/>
							<div>Nội dung</div>
							<form:input path="content" class="form-control" />
							<div>Date</div>
							<form:input path="date" class="form-control" />
							Người dùng<br />
							<form:select path="users.userID" items="${users}"
								itemLabel="username" itemValue="userID"></form:select>
							<br />
									Truyện<br />
							<form:select path="product.id" items="${product}"
								itemLabel="name" itemValue="id"></form:select>
							
							<div id="btn">
								<button name="btnInsert" class="btn btn-warning">Thêm</button>
								
							</div>

						</form:form>
</body>
</html>