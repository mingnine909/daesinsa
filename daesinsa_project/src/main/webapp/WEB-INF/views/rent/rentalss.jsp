<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- XEICON CDN -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!-- Common CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common/header_footer.css">
<!-- rentinsert css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/rent/rentinsert.css">
<!-- 폰트 -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<title>Daesinsa - 대여</title>
</head>
<body>

	<jsp:include page="../common/template_rheader.jsp"></jsp:include>
	<div id="mainwrap">
	
		<div class="terms_box">
				<h1>Thank you for the rental</h1>
				<div class="text">
					<h2>상품 대여에 감사드립니다.</h2>
					<p>상품은 즉시 대신사 자체 배송 시스템을 통하여 진행되며 , 대여 반납 신청 예정일에 반납이 확인되지 않으면 <b>연체료 1일 1만원</b>이 부과되오니 반드시 확인 부탁드립니다. </p>
				</div>	
				
				
			</div>
			
			<div class="btn_box">
			<h1> 다른 서비스 이용하러 가기 </h1>
				<button type="button" class="btn btn-lg"
				 onclick="location.href='${pageContext.request.contextPath}/'">상품 구매 메인</button>
				<button type="button" class="btn btn-lg"
				 onclick="location.href='${pageContext.request.contextPath}/rent/main'">상품 대여 메인</button>
				<button type="button" class="btn btn-lg"
				onclick="location.href='${pageContext.request.contextPath}/mypage/order'">마이페이지</button>
		</div>
	
	</div>

	<!-- 부트스트랩 스크립트 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
		
	<jsp:include page="../common/template_footer.jsp"></jsp:include>

</body>
</html>