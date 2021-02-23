<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>HightChart</title>

</head>
<body style="background: #ebebeb;">
	<div class="container">
		<jsp:include page="inclues/header.jsp" />
		<div class="poly-sheet row">
			<article class="col-sm-9">
				<!--N?i dung trang web-->
				<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>

<figure class="highcharts-figure">
    <div id="container"></div>
    <p style="text-align: center;">
       Biểu đồ thống kê lượt xem của truyện.
    </p>
</figure>
<script>
Highcharts.chart('container', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'World\'s largest cities per 2017'
    },
    subtitle: {
        text: 'Source: <a href="http://en.wikipedia.org/wiki/List_of_cities_proper_by_population">Wikipedia</a>'
    },
    xAxis: {
        type: 'category',
        labels: {
            rotation: -45,
            style: {
                fontSize: '13px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Population (views)'
        }
    },
    legend: {
        enabled: false
    },
    tooltip: {
        pointFormat: 'Population: <b>{point.y:.1f} views</b>'
    },
    series: [{
        name: 'Population',
        data: [
        	<c:forEach var="u" items="${product}">
            ['${u.name}', ${u.views}],
            </c:forEach>
        ],
        dataLabels: {
            enabled: true,
            rotation: -90,
            color: '#FFFFFF',
            align: 'right',
            format: '{point.y:.1f}', // one decimal
            y: 10, // 10 pixels down from the top
            style: {
                fontSize: '13px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
    }]
});
</script>
			</article>


			<aside class="col-sm-3">
			
				<form:form action="search.htm" commandName="products">
					<form:input path="name" placeholder="Search..."/>
					<input type="submit" value="Search" />
					<br />

				</form:form><br/>
				<table class="table  table-condensed">
					<tr style="background: aqua;">
						<th>Ngày</th>
						<th>Tập/Chương</th>
						<th>Thể loại</th>
					</tr>
					<tr>
						<th>14/04</th>
						<th>Chương 965</th>
						<th>Manga</th>
					</tr>
				</table>
				<!--Special-->
				<div class="panel panel-default">
					<div class="panel-heading"></div>

					<div class="list-group">
						<a href="#" class="list-group-item">Hàng bán chạy</a> <a href="#"
							class="list-group-item">Hàng mới</a> <a href="#"
							class="list-group-item">Hàng giảm giá</a> <a href="#"
							class="list-group-item">Hàng dặc biệt</a> <a href="#"
							class="list-group-item">Hàng xem nhiều</a>
					</div>
				</div>

				<!--/Special-->
			</aside>

			<article class="col-sm-9">
				<!--N?i dung trang web-->
				
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