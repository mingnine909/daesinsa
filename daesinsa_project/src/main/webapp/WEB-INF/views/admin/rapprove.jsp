<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin/admin_sidebar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin/rapprove.css">

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
<title>교환/반품 관리</title>
</head>
<body>
<%@ include file="/WEB-INF/views/admin/admin_sidebar.jsp"%>
    <div class="rapprove-wrapper">
        <div class="rapprove-container">
            <h4 style="text-align: left;">반납 승인</h4>
            <div class="rapprove-spacing"></div>
            <div class="rapprove-dropdown">
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        카테고리 선택
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item" href="#">카테고리1</a></li>
                        <li><a class="dropdown-item" href="#">카테고리2</a></li>
                        <li><a class="dropdown-item" href="#">카테고리3</a></li>
                    </ul>
                </div>
                </div>
                <div class="rapprove-spacing-l"></div>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">제품명</th>
                        <th scope="col">회원ID</th>
                        <th scope="col">대여 시작일</th>
                        <th scope="col">반납 예정일</th>
                        <th scope="col">상태</th>
                        <th scope="col"></th>
                    </tr>
                </thead>
                <tbody class="table-group-divider">
                    <tr>
                        <td>코듀로이 모자</td>
                        <td>dsqw234</td>
                        <td>2022-05-30</td>
                        <td>2022-06-20</td>
                        <td>대여 중</td>
                        <td><button type="button" class="btn btn-primary btn-sm">승인하기</button>       
                        </td>
                    </tr>
                    <tr>
                        <td>숏 패딩</td>
                        <td>sda1223</td>
                        <td>2202-03-01</td>
                        <td>2022-06-20</td>
                        <td>대여 완료</td>
                        <td><button type="button" class="btn btn-secondary btn-sm">승인하기</button>      
                        </td>
                    </tr>   
                </tbody>
            </table>
            <div class="rapprove-spacing-l"></div>
            <div class="rapprove-pagination">
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