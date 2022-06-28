<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin/admin_sidebar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin/mlist.css">

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
<title>회원 관리</title>
</head>
<body>
<%@ include file="/WEB-INF/views/admin/admin_sidebar.jsp"%>
    <div class="mlist-wrapper">
        <div class="mlist-container">
            <h4 style="text-align: left;">회원 목록</h4>
            <div class="mlist-spacing-l"></div>
            <div class="mlist-dropdown">
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
            <div class="mlist-search">
                <input class="form-control" list="datalistOptions" id="exampleDataList" placeholder="검색어를 입력하세요.">
            </div>
            <div class="mlist-spacing-xl"></div>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">아이디</th>
                        <th scope="col">이름</th>
                        <th scope="col">이메일</th>
                        <th scope="col">성별</th>
                        <th scope="col">생년월일</th>
                        <th scope="col">가입일</th>
                    </tr>
                </thead>
                <tbody class="table-group-divider">
                    <tr>
                        <td>sad1223</td>
                        <td>김대신</td>
                        <td>dsaqw@sdqw.com</td>
                        <td>남</td>
                        <td>1990-12-30</td>
                        <td>2022-01-01</td>
                    </tr>
                </tbody>
            </table>
            <div class="mlist-spacing-l"></div>
            <div class="mlist-pagination">
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