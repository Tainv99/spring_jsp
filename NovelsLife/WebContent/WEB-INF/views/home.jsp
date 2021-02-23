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
<base href="${pageContext.servletContext.contextPath}/">
    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <link href="js/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>

    <!-- Poly -->
    <!-- <link href="css/poly.css" rel="stylesheet" /> -->
</head>
<body>
	
<div class="container">
   	     <div class="navbar-collapse collapse">
        <!--Menu-->
        <ul class="nav navbar-nav">
            <li><a href="home.htm"> Trang chủ</a></li>
            
            <li><a href="https://www.facebook.com/messages/t/100013089037561">Liên hệ</a></li>
            <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Thống kê<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="count.htm">Thống kê số lượng</a></li>
                            <li><a href="hightchart.htm">Thống kê views</a></li>
                        </ul>
                    </li>
        </ul>
        <!--Menu-->
    </div>
    <nav class="row">
        <div class="navbar navbar-inverse">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse">
                <!--Menu-->
                <ul class="nav navbar-nav">
                <li><img src="images/YeuManga.png" alt="Yeumanga" /></li>
                    <li><a href="author.htm">Tác giả</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Sắp xếp<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="sort.htm">Top views</a></li>
                        </ul>
                    </li>
                    <li><a href="product.htm">Truyện</a></li>
                    <c:if
						test="${sessionScope.user.isAdmin==1}">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Quản lý<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="category.htm">Quản lý thể loại</a></li>
                            <li><a href="author.htm">Quản lý tác giả</a></li>
                            <li><a href="product.htm">Quản lý truyện</a></li>
                            <li><a href="productdetail.htm">Quản lý chương</a></li>
                            <li><a href="spoil.htm">Quản lý lịch phát</a></li>
                        </ul>
                    </li>
                    </c:if>
                    <li class="dropdown">
                        <a href="category.htm" class="dropdown-toggle" data-toggle="dropdown">Thể loại <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li>
                            	<c:forEach var="u" items="${category}">
											<a class="dropdown-item" href="/NovelsLife/viewcategory/${u.categoryID}.htm">${u.name}</a>
										</c:forEach>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tài khoản <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="login.htm">Ðăng nhập</a></li>
                            <li><a href="register.htm">Đăng ký</a></li>                      
                        </ul>
                    </li>
                    <li>
                    
                    </li>
                    <c:if
						test="${sessionScope.user.isAdmin==0||sessionScope.user.isAdmin==1}">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="resources/images/avatar.jpg" width="30" height="20" class="img-circle"/> <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="logout.htm">Ðăng xuất</a></li>
                            <li><a href="viewuser/${sessionScope.user.userID}.htm">Hồ sơ cá nhân</a></li>
                        </ul>
                    </li>
                    <li>
                    
                    
                    </li>
                    </c:if>
                </ul>

                <!--Menu-->
            </div>
        </div>
        	<div class="alert alert-success">
				<b>MỘT</b> dự án không lợi nhuận, <b>MiỄN PHÍ</b> cho người yêu truyện tranh
			</div>
    </nav>
				
    <div class="poly-sheet row">
        <article class="col-sm-9">
        
            <!--N?i dung trang web-->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-4">
                       <div class="yeumanga1">Thông tin truyện tranh mới cập nhật</div>
                        <a href="viewproductdetail/dragon.htm" title="One piece chap 881" class="thumbnail">

                            <img src="https://www.manganetworks.co/wp-content/uploads/2020/05/soc-ngay-tuan-sau-kimetsu-no-yaiba-se-ket-thuc-o-chuong-205.jpg"/></a>
                        <div class="caption" style="margin-bottom: 30px">
                            <a href="viewproductdetail/op1.htm" target="_blank">Chương 205 – chương cuối cùng của bộ truyện tranh ăn khách nhất năm 2019 – Kimetsu no Yaiba sẽ được phát hành vào ngày 18 tháng 5. </a>
                        </div>
                        <hr/>
                        <a href="viewproductdetail/dragon.htm" title="One piece chap 881" class="thumbnail">

                        <img src="https://i.imgur.com/FaBpEn0.png"/></a>
                        <div class="caption" style="margin-bottom: 30px">
                            <a href="viewproductdetail/dragon.htm">“Thánh Phồng” Saitama đã bao nhiêu lần “nhân ái” tha mạng cho đối thủ của mình?
                            </a>
                        </div>
                        <hr/>
                        <a href="viewproductdetail/dragon.htm" title="One piece chap 881" class="thumbnail">

                        <img src="https://www.manganetworks.co/wp-content/uploads/2019/10/cung-kham-pha-4-ly-do-vi-sao-tien-truy-na-cua-shanks-lai-thua-thiet-so-voi-big-mom-va-kaido.png"/></a>
                        <div class="caption" style="margin-bottom: 30px">
                            <a href="viewproductdetail/doramemon.htm">Cùng khám phá 4 lý do vì sao tiền truy nã của Shanks lại thua thiệt so với Big Mom và Kaido
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-8">
                       	<div class="yeumanga">
								
							<center>	Cập nhật truyện mới tại Yeumanga</center>
							</div>
                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                            </ol>
                
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="https://i.pinimg.com/originals/3a/3c/ab/3a3cabd94347cf64dade52882308c780.jpg"/>
                                    <div class="caption">
                                    <center>    One Piece Chapter</center>
                                   <center>      <p>Câu chuyện là một cuộc hành trình của ước mơ và niềm tin, đi tìm kho báu hải tặc lớn nhất </p></center>
                                     </div>
                                </div>
                                <div class="item">
                                    <img src="https://pibook.vn/uploaded/Sach/dragon-ball-super-_1.jpg">
                                    <div class="caption">
                                     <center>   Dragon Ball Super</center>
                                    <center>     <p>tiếp nối câu chuyện sau khi đánh bại majin buu</p></center>
                                     </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </article>

        
        <aside class="col-sm-3">
        
        
       Xin Chào,${sessionScope.user.username}
      				
            <table class="table  table-condensed">
				<tr class="history" style="">
					<th>Ngày</th>
					<th>Tập/Chương</th>
					<th>TL</th>
                </tr>
                  <c:forEach var="u" items="${spoil}">	
                <tr>
					<td>${u.daytime}</td>
					<td>${u.content}</td>
					<td>${u.cate}</td>
				</tr>
				  </c:forEach>
            </table>
         
            <!--Special-->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <strong>Danh ngôn hay</strong>
                </div>

                <div class="list-group">
                    <a href="#" class="list-group-item">Thước đo cuộc đời không phải ở chỗ nó dài hay nó ngắn, mà ở chỗ bạn đã sử dụng nó như thế nào.</a>
                    
                   
                </div>
            </div>
            
             <div class="panel panel-default">
            <div class="panel-heading">
                    <strong>Thể loại</strong>
                </div>
            <div class="daoly">
                     <a>
                            	<c:forEach var="u" items="${category}">
											<a class="dropdown-item col-md-12 " href="/NovelsLife/viewcategory/${u.categoryID}.htm">${u.name}</a>
										</c:forEach>
                            </a>
                            </div>
                           
             
             </div>
            
            
            
            <!--/Special-->
       
            

        </aside>

        <article class="col-sm-9">
            <!--N?i dung trang web-->
            <div class="container-fluid">
                <div class="row">
                </div>
               
            </div>
        </article>
    </div>
    
    
    <footer class="panel panel-default row">
        <div class="panel-heading text-center">
            <p>FPT Polytechnic &copy; 2017. All rights reserved.</p>
        </div>

    </footer>
</div>
</body>
</html>