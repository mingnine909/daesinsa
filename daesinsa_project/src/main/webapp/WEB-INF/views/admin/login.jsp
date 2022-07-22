<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--Bootstrap CDN  -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
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
		<form action="${pageContext.request.contextPath}/member/login"
			method="post">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			<c:if test="${LoginFailMessage!=null}">
				<p>
					Error :
					<c:out value="${LoginFailMessage}" />
				</p>
			</c:if>
			<div class="form-floating">
				<input type="text" class="form-control" id="floatingInput"
					name="username" placeholder="ID"> <label
					for="floatingInput">ID</label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" id="floatingPassword"
					name="password" placeholder="Password"> <label
					for="floatingPassword">Password</label>
			</div>
			<div class="checkbox mb-3"></div>
			<button class="w-100 btn btn-lg btn-primary" type="submit">Login</button>
		</form>
	</main>
	<%@ include file="/WEB-INF/views/common/template_footer.jsp"%>
</body>
</html>