<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common/header_footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/mypage/mypage_sidebar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/mypage/mypage/infoupdate_pwd.css">

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
<title>회원 정보 수정</title>
</head>

</head>
<body>
	<%@ include file="/WEB-INF/views/common/template_header.jsp"%>
	<%@ include file="/WEB-INF/views/mypage/mypage_sidebar.jsp"%>
	<div class="infoupdatepwd-wrapper">
		<h3 style="text-align: left;">회원 정보 수정</h3>
		<div class="infoupdatepwd-spacing"></div>
		개인정보 보호를 위해 비밀번호를 재입력해주세요.
		<div class="infoupdatepwd-spacing"></div>
		<div class="infoupdatepwd-container">
			<div class="infoupdatepwd-spacing"></div>
			<div class="row g-3 align-items-center">
				<div class="col-auto">
					<label for="inputPassword6" class="col-form-label">비밀번호</label>
				</div>
				<div class="col-auto">
					<input type="password" id="inputPassword6" class="form-control"
						aria-describedby="passwordHelpInline" placeholder="비밀번호 입력">
				</div>
			</div>
			<div class="infoupdatepwd-spacing"></div>
			<button class="btn btn-primary" type="button">확인</button>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/common/template_footer.jsp"%>
</body>
</html>