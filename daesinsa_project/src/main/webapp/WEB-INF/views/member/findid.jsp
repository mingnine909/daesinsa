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
	href="${pageContext.request.contextPath}/resources/css/member/findid.css">
<!-- Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<title>아이디 찾기</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/template_header.jsp"%>
	    <main class="form-signin w-100 m-auto">
        <p style="font-size:1.8rem;">아이디 찾기</p>
        <div class="checkbox mb-3"></div>
        <p style="font-size:1rem;">가입 시 작성한 이메일을 입력하면 아이디의</p>
        <div class="checkbox mb-3"></div>
        <p style="font-size:1rem;">일부를 알려드립니다.</p>
        <div class="checkbox mb-3"></div>
        <form>
            <div class="form-floating">
                <input type="email" class="form-control" id="floatingInput" placeholder="ID">
                <label for="floatingInput">Email</label>
            </div>
            <div class="checkbox mb-3"></div>
            <button class="w-100 btn btn-lg btn-primary" type="submit">아이디 찾기</button>
        </form>
    </main>
	<%@ include file="/WEB-INF/views/common/template_footer.jsp"%>
</body>
</html>