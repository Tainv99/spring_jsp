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
<c:forEach var="u" items="${spoil}">	
${u.daytime}
${u.content}
${u.cate}
								</c:forEach>
			<form:form action="spoil.htm" modelAttribute="spoils" method="POST">
		<div class="information" style="text-align: center;">
			ID
			<form:input path="id" class="input" />
			<br /> Content<br />
			<form:input path="content" class="input"/>
			<br /> Cate<br />
			<form:input path="cate" class="input" />
			<br /> Daytime<br />
			<form:input path="daytime" class="input" type="date"/>
			
			<br />

			<button name="bntInsert" class="btn btn-warning">Thêm</button>
			
		</div>
	</form:form>
</body>
</html>