<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin/admin_sidebar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin/clist.css">

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
<title>쿠폰 관리</title>
</head>
<body>
<%@ include file="/WEB-INF/views/admin/admin_sidebar.jsp"%>
    <div class="clist-wrapper">
        <div class="clist-container">
            <h4 style="text-align: left;">쿠폰 관리</h4>
            <div class="clist-spacing"></div>
           <div class="clist-ad-btn">
               <button type="button" class="btn btn-primary btn-sm">쿠폰 추가</button>
           </div>
           <div class="clist-spacing-l"></div>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">쿠폰명</th>
                        <th scope="col">쿠폰 금액</th>
                        <th scope="col">쿠폰 시작일</th>
                        <th scope="col">쿠폰 종료일</th>
                        <th scope="col">진행 여부</th>
                        <th scope="col">보유 회원 수</th>
                    </tr>
                </thead>
                <tbody class="table-group-divider">
                    <tr>
                        <td>WELCOME</td>
                        <td>2000</td>
                        <td>2022-01-01</td>
                        <td>2022-12-31</td>
                        <td>Y</td>
                        <td>12</td>
                    </tr>
                </tbody>
            </table>
            <div class="clist-spacing-l"></div>
            <div class="clist-pagination">
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>