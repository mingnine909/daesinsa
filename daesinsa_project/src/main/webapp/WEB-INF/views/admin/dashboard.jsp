<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin/admin_sidebar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin/dashboard.css">

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--Bootstrap CDN  -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
<!-- Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<title>대시보드</title>
</head>
<body>
<%@ include file="/WEB-INF/views/admin/admin_sidebar.jsp"%>
    <div class="dashboard-wrapper">
        <div class="dashboard-container">
            <h4 style="text-align: left;">대시보드</h4>
            <div class="dashboard-spacing-l"></div>
            <div class="dashboard-container-in">
                <h5 style="text-align: left;">월별 매출액</h5>
                <div class="dashboard-spacing"></div>
                <div class="chart">chart.js 영역</div>
            </div>
            <div class="dashboard-spacing-xl"></div>
            <div class="dashboard-container-in">
                <h5 style="text-align: left;">연간 매출액</h5>
                <div class="dashboard-spacing"></div>
                <div class="chart">chart.js 영역</div>
            </div>
            <div class="dashboard-spacing-xl"></div>
            <div class="dashboard-container-in">
                <h5 style="text-align: left;">회원 현황</h5>
                <div class="dashboard-spacing"></div>
                <div class="chart">chart.js 영역</div>
            </div>
        </div>
    </div>
</body>
</html>