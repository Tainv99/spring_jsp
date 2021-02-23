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
<h2>Insert</h2>
	${message}
		<form:form action="${sessionScope.action}" modelAttribute="products"
			method="POST">
				
											<div>Mã truyện</div>
					<form:input path="id" class="form-control" />
					${exid}
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
					</div>
		</form:form>
</body>
</html>