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
	href="${pageContext.request.contextPath}/resources/css/mypage/infoupdate.css">
<!-- Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<title>회원 정보 수정</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/template_header.jsp"%>
	<%@ include file="/WEB-INF/views/mypage/mypage_sidebar.jsp"%>
	<div class="infoupdate-wrapper">
		<div class="infoupdate-container">
			<p class="my-hl-iu">회원 정보 수정</p>
			<div class="infoupdate-spacing"></div>
			<div class="infoupdate-spacing"></div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">아이디<span
					class="text-muted">(필수)</span></label> <input type="id"
					class="form-control" id="formGroupExampleInput2" required>
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">비밀번호<span
					class="text-muted">(필수)</span></label> <input type="password"
					class="form-control" id="formGroupExampleInput2" required>
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">비밀번호
					확인<span class="text-muted">(필수)</span>
				</label> <input type="password" class="form-control"
					id="formGroupExampleInput" required>
				<div class="invalid-feedback">비밀번호가 일치하지 않습니다.</div>
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">이름<span
					class="text-muted">(필수)</span></label> <input type="name"
					class="form-control" id="formGroupExampleInput" placeholder="김신사"
					required>
				<div class="invalid-feedback">이름은 한글로만 입력해주세요.</div>
			</div>
			<label for="formGroupExampleInput" class="form-label">이메일<span
				class="text-muted">(필수)</span></label>
			<div class="input-group mb-3">
				<input type="email" class="form-control"
					placeholder="exmple@exmples.com" aria-label="exmple@exmples.com"
					aria-describedby="button-addon2" required>
				<button class="btn btn-outline-secondary" type="submit"
					id="button-addon2">중복확인</button>
				<div class="invalid-feedback">이메일 형식으로 입력해주세요.</div>
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">휴대폰번호<span
					class="text-muted">(필수)</span></label> <input type="number"
					class="form-control" id="formGroupExampleInput"
					placeholder="01012345678" required>
				<div class="invalid-feedback">9자리의 숫자만 입력해주세요.</div>
			</div>
			<label for="formGroupExampleInput" class="form-label">주소<span
				class="text-muted">(필수)</span></label>
			<div class="input-group mb-3">
				<input type="text" class="form-control"
					aria-describedby="button-addon2">
				<button class="btn btn-outline-secondary" type="submit"
					id="button-addon2" required>우편번호 검색</button>
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">나머지 주소<span
					class="text-muted">(선택)</span></label> <input type="text"
					class="form-control" id="formGroupExampleInputd">
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">생년월일<span
					class="text-muted">(선택)</span></label> <input type="text"
					class="form-control" id="formGroupExampleInputd"
					placeholder="19900219">
				<div class="invalid-feedback">8자리 숫자로 입력해주세요.(YYYYMMDD)</div>
			</div>
			<label for="formGroupExampleInput" class="form-label">성별<span
				class="text-muted">(선택)</span></label>
			<div class="form-floating">
				<select class="form-select" id="floatingSelect"
					aria-label="Floating label select example">
					<option selected>선택 안 함</option>
					<option value="1">남성</option>
					<option value="2">남성</option>
				</select> <label for="floatingSelect">선택해주세요</label>
			</div>
			<div class="infoupdate-spacing-l"></div>
			<button class="btn btn-primary" type="button">수정 완료</button>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/common/template_footer.jsp"%>

</body>
</html>