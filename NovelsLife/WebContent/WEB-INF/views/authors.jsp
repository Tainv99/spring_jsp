<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/css_trangchu.css" rel="stylesheet" type="text/css">
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
<title>Author</title>
</head>
<body >
<div class="container">
<jsp:include page="inclues/header.jsp" />
				<div class="panel-heading ">
			 Danh sách tác giả
			 </div>
							<table
								class="table table-striped table-bordered table-hover table-condensed">
								<tr>
									<th>STT</th>
									<th>Tên tác giả</th>
									<th>Tuổi</th>
									<th>Địa chỉ</th>
									<th></th>
								
								</tr>
								<c:forEach var="u" items="${author}">	
									<c:set var="count" value="${count+1}" />
									<tr>
										
										<td>${count}</td>
										<td>${u.name}</td>
										<td>${u.age}</td>
										<td>${u.address}</td>
										
										<td>
        <div class="navbar-collapse collapse">
        <!--Menu-->
        <ul class="nav navbar-nav">
            
            <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src=""><span class="caret"></span></a>
                        <ul class="dropdown-menu">
                        <c:if
									test="${sessionScope.user.isAdmin==1}">
                            <li><a href="editAuthor/${u.authorID}.htm">Sửa</a></li>
                            </c:if>
                            <li><a href="viewauthor/${u.authorID}.htm">Chi tiết</a></li>
                        </ul>
                    </li>
        </ul>
        <!--Menu-->
    </div>
        </td>
									</tr>
									
								</c:forEach>				
							</table>
								<c:if
									test="${sessionScope.user.isAdmin==0||sessionScope.user.isAdmin==1}">
									<div class="information">
										<form:form action="author.htm" modelAttribute="authors"
											method="POST">
											Quản lý tác giả
											<div>Mã tác giả</div>
											<form:input path="authorID" class="form-control" />
											<div>Tên tác giả</div>
											<form:input path="name" class="form-control" />
											
											<div>Tuổi</div>
											<form:input path="age" class="form-control" />

											<div>Địa chỉ</div>
											<form:input path="address" class="form-control" />

											<div>Chi tiết</div>
											<form:textarea path="authorDetail" class="input" rows="5" cols="100"/>
											<div id="btn">
												<button name="btnInsert" class="btn btn-warning">Thêm</button>
												<c:if test="${sessionScope.user.isAdmin==1}">
													<button name="btnUpdate" class="btn btn-warning">Sửa</button>
													<button name="btnDelete" class="btn btn-warning">Xóa</button>
												</c:if>
											</div>

										</form:form>
									</div>
								</c:if>
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