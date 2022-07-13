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
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.2/examples/sign-in/">
<!-- XEICON CDN -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common/header_footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/member/login.css">
<!-- Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<title>로그인</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/template_header.jsp"%>
	<main class="form-signin w-100 m-auto">
		<img
			src="${pageContext.request.contextPath}/resources/img/member/dassinsa_logo.png"
			class="login-logo">
		<div class="checkbox mb-3"></div>
		<form action="${pageContext.request.contextPath}/member/login" method="post">
			<div class="form-floating">
				<input type="text" class="form-control" id="floatingInput" name="username"
					placeholder="ID"> <label for="floatingInput">ID</label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" id="floatingPassword" name="password"
					placeholder="Password"> <label for="floatingPassword">Password</label>
			</div>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			<div class="find">
				<a href="#"
					style="text-decoration: none; color: black; text-align: center;">아이디
					찾기</a> &nbsp;|&nbsp; <a href="#"
					style="text-decoration: none; color: black; text-align: center;">비밀번호
					찾기</a>
			</div>
			<div class="checkbox mb-3"></div>
			<button class="w-100 btn btn-lg btn-primary" type="submit">Login</button>
			<div class="checkbox mb-3"></div>
			<a href="#"><img class="social-img"
				src="${pageContext.request.contextPath}/resources/img/member/kakao_login.png"></a>
			<div class="checkbox mb-3"></div>
			<a href="#"><img class="social-img"
				src="${pageContext.request.contextPath}/resources/img/member/naver_login.png"
				style="height: 50px;"></a>
		</form>
	</main>
	<%@ include file="/WEB-INF/views/common/template_footer.jsp"%>
</body>
</html>