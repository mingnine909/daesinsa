<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin/admin_sidebar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin/pupdate.css">

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
<title>상품 수정</title>
</head>
<body>
<%@ include file="/WEB-INF/views/admin/admin_sidebar.jsp"%>
    <div class="pupdate-wrapper">
        <div class="pupdate-container">
            <h4 style="text-align: left;">상품 수정</h4>
            <div class="pupdate-spacing-l"></div>
            <label for="exampleFormControlInput1" class="form-label">카테고리</label>
                <div class="pupdate-dropdown">
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
            <div class="pupdate-spacing-xl"></div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">상품명</label>
                <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="내용을 입력하세요.">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">상품 번호</label>
                <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="내용을 입력하세요.">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">사이즈</label>
                <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="내용을 입력하세요.">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">상품 설명</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" placeholder="내용을 입력하세요."></textarea>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">재고</label>
                <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="내용을 입력하세요.">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">품절 여부</label>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                    <label class="form-check-label" for="defaultCheck1">
                     Y
                    </label>
                  </div>
            </div>
            <div class="mb-3">
                <label for="formFileMultiple" class="form-label">상품 사진 (최대 3장)</label>
                <input class="form-control" type="file" id="formFileMultiple" multiple>
              </div>
            <div class="pupdate-spacing-xl"></div>
            <button type="button" class="btn btn-success">수정하기</button>
        </div>
    </div>
</body>
</html>