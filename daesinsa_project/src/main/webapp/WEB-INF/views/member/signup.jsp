<!-- jstl -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jQuery CDN -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!--Bootstrap CDN  -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<!-- XEICON CDN -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common/header_footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/member/signup.css">
<!-- Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<title>회원가입</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/template_header.jsp"%>
	    <div class="signup-wrapper">
        <p style="font-size:26px;"><b>회원가입</b></p>
        <div class="signup-spacing"></div>
        <form action="${pageContext.request.contextPath}/member/signup" method="post">
        <label for="formGroupExampleInput" class="form-label">아이디<span class="text-muted">(필수)</span></label>
        <div class="input-group mb-3">
            <input type="text" class="form-control" name="id" aria-describedby="button-addon2">
            <button class="btn btn-outline-secondary" type="submit" id="button-addon2">중복확인</button>
            <div class="invalid-feedback">
                아이디는 6글자 이상의 영문, 숫자로 작성되어야 합니다.
            </div>
        </div>
        <div class="mb-3">
            <label for="formGroupExampleInput" class="form-label">비밀번호<span class="text-muted">(필수)</span></label>
            <input type="password" class="form-control" name="password" required>
        </div>
        <div class="mb-3">
            <label for="formGroupExampleInput" class="form-label">비밀번호 확인<span class="text-muted">(필수)</span></label>
            <input type="password" class="form-control" name="pwdconfirm" required>
            <div class="invalid-feedback">
                비밀번호가 일치하지 않습니다.
            </div>
        </div>
        <div class="mb-3">
            <label for="formGroupExampleInput" class="form-label">이름<span class="text-muted">(필수)</span></label>
            <input type="text" class="form-control" name="name" placeholder="김신사" required>
            <div class="invalid-feedback">
                이름은 한글로만 입력해주세요.
            </div>
        </div>
        <label for="formGroupExampleInput" class="form-label">이메일<span class="text-muted">(필수)</span></label>
        <div class="input-group mb-3">
            <input type="email" class="form-control" placeholder="exmple@exmples.com" aria-label="exmple@exmples.com"
                aria-describedby="button-addon2" name="email" required>
            <button class="btn btn-outline-secondary" type="submit" id="button-addon2">중복확인</button>
            <div class="invalid-feedback">
                이메일 형식으로 입력해주세요.
            </div>
        </div>
        <div class="mb-3">
            <label for="formGroupExampleInput" class="form-label">휴대폰번호<span class="text-muted">(필수)</span></label>
            <input type="number" class="form-control" name="phone" placeholder="01012345678" required>
            <div class="invalid-feedback">
                9자리의 숫자만 입력해주세요.
            </div>
        </div>
        <label for="formGroupExampleInput" class="form-label">주소<span class="text-muted">(필수)</span></label>
        <div class="input-group mb-3">
            <input type="text" class="form-control" aria-describedby="button-addon2" name="adrs">
            <button class="btn btn-outline-secondary" type="submit" id="button-addon2">우편번호 검색</button>
        </div>
        <div class="mb-3">
            <label for="formGroupExampleInput" class="form-label">나머지 주소<span class="text-muted">(선택)</span></label>
            <input type="text" class="form-control" name="adrs2">
        </div>
        <div class="mb-3">
            <label for="formGroupExampleInput" class="form-label">생년월일<span class="text-muted">(선택)</span></label>
            <input type="text" class="form-control" name="bdate" placeholder="19900219">
            <div class="invalid-feedback">
                8자리 숫자로 입력해주세요.(YYYYMMDD)
            </div>
        </div>
        <label for="formGroupExampleInput" class="form-label">성별<span class="text-muted">(선택)</span></label>
        <div class="form-floating">
            <select class="form-select" id="floatingSelect" aria-label="Floating label select example">
                <option selected>선택 안 함</option>
                <option value="1">남성</option>
                <option value="2">여성</option>
            </select>
            <label for="floatingSelect">선택해주세요</label>
        </div>
        <div class="signup-spacing"></div>
        <hr>
        <div class="signup-spacing"></div>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
            <label class="form-check-label" for="flexCheckDefault">
                (필수)대신사 이용약관 동의
            </label>
        </div>
        <div class="signup-spacing-s"></div>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
            <label class="form-check-label" for="flexCheckDefault">
                (필수)개인정보 수집 및 이용 동의
            </label>
        </div>
        <div class="signup-spacing-s"></div>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
            <label class="form-check-label" for="flexCheckDefault">
                (선택) 대신사 신상품 정보 수신 동의 (SMS, 이메일)
            </label>
        </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
        <div class="signup-spacing-s"></div>
        <hr>
        <p>본인은 만 14세 이상이며 이용약관 및 개인정보 수집에 동의합니다.</p>
        <div class="signup-spacing"></div>
        <div class="checkbox mb-3"></div>
        <button class="w-100 btn btn-lg btn-primary" id="signup-submit" type="submit">회원가입 하기</button>
        <div class="signup-spacing-s"></div>
       <div class="d-grid gap-2">
        <button class="btn btn-primary" id="signup-cancle" type="submit">취소하기</button>
        </div>
        <div class="signup-spacing-l"></div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
        </form>
    </div>
    
        <!-- '취소하기' 버튼 클릭 시 동작 -->
    <script>
    $(function(){
    	$('#signup-cancle').click(function(){
    		if(confirm("회원가입을 취소하시겠습니까? 입력한 내용은 저장되지 않습니다.")) {
    			self.location.href ="${pageContext.request.contextPath}/";
    		}
    	});
    });	
    </script>
    <%@ include file="/WEB-INF/views/common/template_footer.jsp"%>
</body>
</html>