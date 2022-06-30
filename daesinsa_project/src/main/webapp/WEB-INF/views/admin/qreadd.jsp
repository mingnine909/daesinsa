<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin/admin_sidebar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin/qreadd.css">

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
<title>문의 답변</title>
</head>
<body>
<%@ include file="/WEB-INF/views/admin/admin_sidebar.jsp"%>
<div class="qreadd-wrapper">
        <div class="qreadd-container">
            <h4 style="text-align: left;">문의 답변</h4>
            <div class="qreadd-spacing-l"></div>
            <div class="qrelist-spacing-l"></div>
            <table class="table">
                <tr>
                    <th scope="col" style="background-color: #E4E4E4; text-align: center;"><b>문의 유형</b></th>
                    <td>구매/대여</td>
                </tr>
                <tr>
                    <th scope="col" style="background-color: #E4E4E4; text-align: center;"><b>문의 제목</b></th>
                    <td>품절 언제 풀림</td>
                </tr>
                <tr>
                    <th scope="col" style="background-color: #E4E4E4; text-align: center;"><b>회원 ID</b></th>
                    <td>juseyo</td>
                </tr>
                <tr>
                    <th scope="col" style="background-color: #E4E4E4; text-align: center;"><b>문의일</b></th>
                    <td>2022-03-12</td>
                </tr>
                <tr>
                    <th scope="col" style="background-color: #E4E4E4; text-align: center;"><b>문의일</b></th>
                    <td>품절 대체 언제 풀리나요? 기다리다가 망부석이 되었읍니다.</td>
                </tr>
            </table>
            <div class="qreadd-spacing-xl"></div>
            <h4 style="text-align: left;">답글 작성</h4>
            <div class="qreadd-spacing"></div>
            <div class="mb-3">
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"
                    placeholder="내용을 입력하세요."></textarea>
            </div>
            <div class="qreadd-spacing-xl"></div>
            <button type="button" class="btn btn-success">등록하기</button>
        </div>
    </div>
</body>
</html>