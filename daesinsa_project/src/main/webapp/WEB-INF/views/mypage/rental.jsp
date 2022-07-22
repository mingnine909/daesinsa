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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common/header_footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/mypage/mypage_sidebar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/mypage/rental.css">
<!-- Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<title>대여 상태 조회</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/template_header.jsp"%>
	<%@ include file="/WEB-INF/views/mypage/mypage_sidebar.jsp"%>
	    <div class="rental-wrapper">
        <p class="my-hl-re">대여 상태 조회</p>
        <div class="rental-spacing"></div>
        <div class="rental-container">
            <div class="order-spacing"></div>
            <table class="table">
                <thead>
                  <tr>
                    <th scope="col">순번</th>
                    <th scope="col">제품명</th>
                    <th scope="col">대여 시작일</th>
                    <th scope="col">대여 종료일</th>
                    <th scope="col">대여 상태</th>
                    <th scope="col"></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>11</td>
                    <td>11</td>
                    <td>11</td>
                    <td>11</td>
                    <td>11</td>
                    <td><button type="button" class="btn btn-primary btn-sm">반납하기</button></td>
                  </tr>
                  <tr>
                    <td>11</td>
                    <td>11</td>
                    <td>11</td>
                    <td>11</td>
                    <td>11</td>
                    <td><button type="button" class="btn btn-secondary btn-sm">반납하기</button></td>
                  </tr>
                </tbody>
              </table>
        </div>
        </div>
	<%@ include file="/WEB-INF/views/common/template_footer.jsp"%>
</body>
</html>