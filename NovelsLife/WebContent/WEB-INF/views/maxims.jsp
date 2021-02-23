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
	<table
		class="table table-striped table-bordered table-hover table-condensed">
		<tr>
			<th>STT</th>
			<th>Mã tác giả</th>
			<th>Tên tác giả</th>
			<th></th>
		</tr>
		<c:forEach var="u" items="${maxim}">
			<c:set var="count" value="${count+1}" />
			<tr>
				<td>${count}</td>
				<td>${u.maximID}</td>
				<td>${u.content}</td>
			</tr>

		</c:forEach>
	</table>
</body>
</html>