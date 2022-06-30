<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin/admin_sidebar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin/cadd.css">

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
<title>쿠폰 추가</title>
</head>
<body>
<%@ include file="/WEB-INF/views/admin/admin_sidebar.jsp"%>
    <div class="cadd-wrapper">
        <div class="cadd-container">
            <h4 style="text-align: left;">쿠폰 추가</h4>
            <div class="cadd-spacing-l"></div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">쿠폰명</label>
                <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="내용을 입력하세요.">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">쿠폰 금액</label>
                <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="내용을 입력하세요.">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">시작일</label>
                <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="내용을 입력하세요.">
            </div>
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">종료일</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" placeholder="내용을 입력하세요."></textarea>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">진행 여부</label>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                    <label class="form-check-label" for="defaultCheck1">
                     Y
                    </label>
                  </div>
            </div>
            <div class="cadd-spacing-xl"></div>
            <button type="button" class="btn btn-success">등록하기</button>
        </div>
    </div>
</body>
</html>