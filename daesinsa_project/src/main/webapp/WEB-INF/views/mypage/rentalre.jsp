<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common/header_footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/mypage/mypage_sidebar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/mypage/rentalre.css">

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
<title>반납하기</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/template_header.jsp"%>
	<%@ include file="/WEB-INF/views/mypage/mypage_sidebar.jsp"%>
	 <div class="rentalre-wrapper">
                <h3 style="text-align: left;">반납하기</h3>
                <div class="rentalre-spacing"></div>
                <div class="rentalre-container">
                    <div class="order-spacing"></div>
                    <label for="exampleFormControlTextarea1" class="form-label">대여 번호</label>
                    <select class="form-select" aria-label="Default select example" required>
                        <option selected>선택해주세요</option>
                        <option value="1">11111</option>
                    </select>
                    <div class="rentalre-spacing"></div>
                    <label for="exampleFormControlTextarea1" class="form-label">대여 기간</label>
                    <ul class="list-group">
                        <li class="list-group-item">YYYY-MM-DD ~ YYYY-MM-DD</li>
                    </ul>
                    <div class="rentalre-spacing"></div>
                    <label for="exampleFormControlTextarea1" class="form-label">주의 사항</label>
                    <ul class="list-group">
                        <li class="list-group-item">1. 해당 대여는 연체 n일로 연체료 n만원이 결제되었습니다.</li>
                        <li class="list-group-item">2. 기본 세척 이외의 제품 하자가 발견되었을 경우, 제품 상태에 따라 수선료가 추가 청구될 수 있습니다.</li>
                        <li class="list-group-item">3. 반납 시 대신사의 배송 시스템으로 진행되오니 타 택배사를 통한 반납은 불가합니다.</li>
                    </ul>
                    <div class="rentalre-spacing-l"></div>
                    <div class="d-grid gap-2 d-md-block">
                        <button class="btn btn-primary" type="button">반납하기</button>
                        <button class="btn btn-secondary" type="button">취소하기</button>
                    </div>
                </div>
            </div>
	<%@ include file="/WEB-INF/views/common/template_footer.jsp"%>

</body>
</html>