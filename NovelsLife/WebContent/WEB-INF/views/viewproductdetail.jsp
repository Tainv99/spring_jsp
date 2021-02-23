<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>${sessionScope.viewproductdetail.title}</title>
<base href="${pageContext.servletContext.contextPath}/">
</head>

<body style="background: #424242;text-align: center;">

	<form:form action="viewproductdetail.htm" modelAttribute="productdetail"
							method="POSt">
								${sessionScope.viewproductdetail.content}
								
						</form:form>
						
</body>
</html>