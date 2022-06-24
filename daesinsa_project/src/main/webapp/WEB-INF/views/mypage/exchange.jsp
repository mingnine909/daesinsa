<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common/header_footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/mypage/mypage_sidebar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/mypage/exchange.css">

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
<!-- Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<title>교환/반품 신청</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/template_header.jsp"%>
	<%@ include file="/WEB-INF/views/mypage/mypage_sidebar.jsp"%>
	<div class="exchange-wrapper">
		<h3 style="text-align: left;">교환/반품 신청</h3>
		<div class="exchange-spacing"></div>
		<div class="exchange-container">
			<label for="exampleFormControlTextarea1" class="form-label">주문
				번호</label> <select class="form-select" aria-label="Default select example"
				required>
				<option selected>선택해주세요</option>
				<option value="1">11111</option>
			</select>
			<div class="exchange-spacing"></div>
			<label for="exampleFormControlTextarea1" class="form-label">제목</label>
			<input class="form-control" type="text" placeholder="내용을 입력해주세요."
				aria-label="default input example" required>
		</div>
		<div class="exchange-spacing"></div>
		<label for="exampleFormControlTextarea1" class="form-label">교환/반품
			사유</label>
		<div class="mb-3">
			<textarea class="form-control" placeholder="내용을 입력해주세요."
				id="exampleFormControlTextarea1" rows="5" required></textarea>
		</div>
		<div class="exchange-spacing"></div>
		<label for="exampleFormControlTextarea1" class="form-label">파일
			첨부</label>
		<div class="input-group">
			<input type="file" class="form-control" id="inputGroupFile04"
				aria-describedby="inputGroupFileAddon04" aria-label="Upload">
		</div>
		<div class="exchange-spacing-l"></div>
		<div class="d-grid gap-2 d-md-block">
			<button class="btn btn-primary" type="button">등록하기</button>
			<button class="btn btn-secondary" type="button">취소하기</button>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/common/template_footer.jsp"%>
</body>
</html>