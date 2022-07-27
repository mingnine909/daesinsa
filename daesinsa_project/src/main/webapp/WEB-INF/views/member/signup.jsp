<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="_csrf_header" content="${_csrf.headerName}" />
<meta name="_csrf" content="${_csrf.token}" />
<sec:csrfMetaTags />
<!-- jQuery CDN -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!-- ajax CDN -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js"></script>
<!--Bootstrap CDN  -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<!-- 다음 우편번호 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
		<p style="font-size: 26px;">
			<b>회원가입</b>
		</p>
		<div class="signup-spacing"></div>
		<form action="${pageContext.request.contextPath}/member/signup"
			method="post">
			<label for="formGroupExampleInput" class="form-label">아이디<span
				class="text-muted">(필수)</span></label>
			<div class="input-group mb-3">
				<input type="text" class="form-control"  aria-describedby="button-addon2" name="id_input" id="id" required>
				<button class="btn btn-outline-secondary" type="button" id="idcheck-btn" value="N">중복확인</button>
			</div>
			<span class="final_id_ck">아이디를 입력해주세요.</span>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">비밀번호<span class="text-muted">(필수)</span></label> 
				<input type="password" class="form-control" name="password" id="pw_input" required>
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">이름<span class="text-muted">(필수)</span></label> 
				<input type="text" class="form-control" name="name" id="name_input" placeholder="김신사" required>
			</div>
			<label for="formGroupExampleInput" class="form-label">이메일<span class="text-muted">(필수)</span></label>
			<div class="input-group mb-3">
				<input type="email" class="form-control" placeholder="exmple@exmples.com"  aria-describedby="button-addon2" name="email" id="email" required>
				<button class="btn btn-outline-secondary" type="button" id="emailcheck-btn" value="N">중복확인</button>
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">휴대폰번호<span class="text-muted">(필수)</span></label> 
				<input type="text" class="form-control" name="phone" placeholder="01012345678" id="phone_input" required>
			</div>
			<label for="formGroupExampleInput" class="form-label">우편번호<span class="text-muted">(필수)</span></label>
			<div class="input-group mb-3">
				<input type="text" class="form-control" placeholder="'우편번호 검색' 버튼을 클릭해주세요."
					aria-describedby="button-addon2" name="zipcode" id="sample6_postcode" required>
				<button class="btn btn-outline-secondary" type="button" onclick="sample6_execDaumPostcode()">우편번호 검색</button>
			</div>
			<input type=hidden id="sample6_extraAddress">
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">주소<span
					class="text-muted">(필수)</span></label> <input type="text" class="form-control" name="adrs" id="sample6_address" required>
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">나머지 주소<span class="text-muted">(선택)</span></label> <input type="text"
					class="form-control" name="adrs2" id="adrs2">
			</div>
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label">생년월일<span
					class="text-muted">(선택)</span></label> <input type="text"
					class="form-control" name="bdate" placeholder="19900219">
			</div>
			<label for="formGroupExampleInput" class="form-label">성별<span
				class="text-muted">(선택)</span></label>
			<div class="form-floating">
				<select class="form-select" id="floatingSelect" name="gender" 
					aria-label="Floating label select example">
					<option selected>선택 안 함</option>
					<option value="1">남성</option>
					<option value="2">여성</option>
				</select> <label for="floatingSelect">선택해주세요</label>
			</div>
			<div class="signup-spacing"></div>
			<hr>
			<div class="signup-spacing"></div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value=""> 
				<label class="form-check-label"
					for="flexCheckDefault"> (필수)대신사 이용약관 동의 </label>
			</div>
			<div class="signup-spacing-s"></div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value=""> 
				<label class="form-check-label"
					for="flexCheckDefault"> (필수)개인정보 수집 및 이용 동의 </label>
			</div>
			<div class="signup-spacing-s"></div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value=""> 
				<label class="form-check-label"
					for="flexCheckDefault"> (선택) 대신사 신상품 정보 수신 동의 (SMS, 이메일) </label>
			</div>
			<div class="signup-spacing-s"></div>
			<hr>
			<p>본인은 만 14세 이상이며 이용약관 및 개인정보 수집에 동의합니다.</p>
			<div class="signup-spacing"></div>
			<div class="checkbox mb-3"></div>
			<button class="w-100 btn btn-lg btn-primary" id="signup-submit"
				type="submit">회원가입 하기</button>
			<div class="signup-spacing-s"></div>
			<div class="d-grid gap-2">
				<button class="btn btn-primary" id="signup-cancle" type="submit">취소하기</button>
			</div>
			<div class="signup-spacing-l"></div>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
	</div>

	<!-- ajax - 아이디 체크 -->
	<script>
 	$("#idcheck-btn").click (function () {
		var csrfParameter = $("meta[name='_csrf_parameter']").attr("content");
		var csrfToken = $("meta[name='_csrf']").attr("content");
		var csrfHeader = $("meta[name='_csrf_header']").attr("content");
		var headers = {};
		headers[csrfHeader] = csrfToken;

    	$.ajax({
    		url : "<%=request.getContextPath()%>/member/idCheck",
    		type : "post",
    		headers: headers,
			data : {id : $("#id").val()},
    		success : function(data) {
    			if (data==1){
    				alert("중복된 아이디입니다.");
	    		} else if (data==0) {
	    			$("#idcheck-btn").attr("value", "Y");
	    			alert("사용가능한 아이디입니다.");
	    		}
    		}
    	});
    });
    </script>
    
    <!-- ajax - 이메일 체크 -->
	<script>
 	$("#emailcheck-btn").click (function () {
		var csrfParameter = $("meta[name='_csrf_parameter']").attr("content");
		var csrfToken = $("meta[name='_csrf']").attr("content");
		var csrfHeader = $("meta[name='_csrf_header']").attr("content");
		var headers = {};
		headers[csrfHeader] = csrfToken;

    	$.ajax({
    		url : "<%=request.getContextPath()%>/member/emailCheck",
    		type : "post",
    		headers: headers,
			data : {email : $("#email").val()},
    		success : function(data) {
    			if (data==1){
    				alert("중복된 이메일입니다.");
	    		} else if (data==0) {
	    			$("#emailcheck-btn").attr("value", "Y");
	    			alert("사용가능한 이메일입니다.");
	    		}
    		}
    	});
    });
    </script>

	<!-- 다음 주소 API -->
	<script>
	    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {

                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("adrs2").focus();
            }
        }).open();
    }
	</script>
		
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