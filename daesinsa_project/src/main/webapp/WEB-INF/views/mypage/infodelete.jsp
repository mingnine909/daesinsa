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
	href="${pageContext.request.contextPath}/resources/css/mypage/infodelete.css">
<!-- Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<title>회원 탈퇴</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/template_header.jsp"%>
	<%@ include file="/WEB-INF/views/mypage/mypage_sidebar.jsp"%>
	<div class="infodelete-wrapper">
		<div class="infodelete-container">
			<p class="my-hl-del">회원 탈퇴</p>
			<div class="infodelete-spacing"></div>
			<div class="card">
				<div class="card-body">
					탈퇴 사유를 선택해주세요.
					<div class="infodelete-spacing"></div>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault1" checked> <label
							class="form-check-label" for="flexRadioDefault1"> 사이트 사용
							빈도가 적음 </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault2"> <label
							class="form-check-label" for="flexRadioDefault2"> 배송 불만족
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault2"> <label
							class="form-check-label" for="flexRadioDefault2"> 비용이 비쌈
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault2"> <label
							class="form-check-label" for="flexRadioDefault2"> 기타 </label>
					</div>

				</div>
			</div>
			<div class="infodelete-spacing"></div>
		</div>
		<div class="infodelete-spacing-l"></div>
		<button class="btn btn-primary" type="button">탈퇴하기</button>
	</div>
	<%@ include file="/WEB-INF/views/common/template_footer.jsp"%>
</body>
</html>