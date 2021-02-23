<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Category</title>
<base href="${pageContext.servletContext.contextPath}/">
</head>
<body>
<div class="container">
<jsp:include page="inclues/header.jsp" />
							<table
								class="table table-striped table-bordered table-hover table-condensed">
								<tr>
									<th>STT</th>
									<th>Tên thể loại</th>
									<th>Ghi chú</th>
									<th>Chi tiết</th>
								</tr>
								<c:forEach var="u" items="${category}">
									<c:set var="count" value="${count+1}" />
									<tr>
										<td>${count}</td>
										<td>${u.name}</td>
										<td>${u.note}</td>
										<td><div class="navbar-collapse collapse">
        <!--Menu-->
        <ul class="nav navbar-nav">
            
            <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src=""><span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="viewcategory/${u.categoryID}.htm">Chi tiết</a></li>
                        </ul>
                    </li>
        </ul>
        <!--Menu-->
    </div></td>
												
									</tr>
								</c:forEach>
							</table>
							<hr />
							<div class="panel-body">
								<c:if
									test="${sessionScope.user.isAdmin==0||sessionScope.user.isAdmin==1}">
								Quản lý thể loại
						<form:form action="category.htm" modelAttribute="categorys"
										method="POST">
										<div class="information">
											<div>Mã thể loại</div>
											<form:input path="categoryID" class="form-control" />
											<div>Tên thể loại</div>
											<form:input path="name" class="form-control" />
										</div>
								Note<br />
										<form:input path="note" class="form-control" />
										<div id="btn">

											<button name="btnInsert" class="btn btn-warning">Thêm</button>
											<c:if test="${sessionScope.user.isAdmin==1}">
												<button name="btnDelete" class="btn btn-warning">Xóa</button>
											</c:if>
										</div>
									</form:form>
								</c:if>
							</div>
</div>
		<div class="container">
		<footer class="panel panel-default row">
			<div class="panel-heading text-center">
				<p>© 2020 Yeumanga</p>
			</div>
		</footer>
            </div>
</body>

</html>