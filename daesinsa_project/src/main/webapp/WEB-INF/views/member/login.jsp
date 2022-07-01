<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common/header_footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/member/login.css">

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
<!-- Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<title>로그인</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/template_header.jsp"%>
	<main class="form-signin w-100 m-auto">
		<img src="${pageContext.request.contextPath}/resources/img/member/dassinsa_logo.png" class="login-logo">
		<div class="checkbox mb-3"></div>
		<form>
			<div class="form-floating">
				<input type="email" class="form-control" id="floatingInput"
					placeholder="ID"> <label for="floatingInput">ID</label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" id="floatingPassword"
					placeholder="Password"> <label for="floatingPassword">Password</label>
			</div>
			<div class="find">
				<a href="#"style="text-decoration: none; color: black; text-align: center;">아이디 찾기</a> 
				&nbsp;|&nbsp; 
				<a href="#" style="text-decoration: none; color: black; text-align: center;">비밀번호 찾기</a>
			</div>
			<div class="checkbox mb-3"></div>
			<button class="w-100 btn btn-lg btn-primary" type="submit">Login</button>
			<div class="checkbox mb-3"></div>
			<a href="#"><img class="social-img" src="${pageContext.request.contextPath}/resources/img/member/kakao_login.png"></a>
			<div class="checkbox mb-3"></div>
			<a href="#"><img class="social-img" src="${pageContext.request.contextPath}/resources/img/member/naver_login.png"
				style="height: 50px;"></a>
		</form>
	</main>
	<%@ include file="/WEB-INF/views/common/template_footer.jsp"%>
</body>
</html>