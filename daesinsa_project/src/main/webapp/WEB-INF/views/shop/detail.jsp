<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!-- 폰트 -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<title>Daesinsa</title>
</head>
<body>
	<jsp:include page="../common/template_header.jsp"></jsp:include>
	<div id="mainwrap">

		<c:choose>
			<c:when test="${not empty detail }">
 		이미지 
	<c:forEach items="${detail.p_img_list}" var="img">
					<c:if test="${not empty img.p_img_path }">
						<img src="${pageContext.request.contextPath}${img.p_img_path }">
					</c:if>
				</c:forEach>
				<p>상품명 : ${detail.p_name }</p>
				<p>가격 : ${detail.p_price }</p>
				<c:forEach items="${detail.p_option_info}" var="option">
					<p>옵션 : ${option.poi_type }</p>

				</c:forEach>
				<p>상품설명 : ${detail.p_content }</p>
			</c:when>
			<c:when test="${empty detail } ">
상품이 없습니다.
</c:when>
		</c:choose>


<!-- 상품문의 -->
<c:choose>
<c:when test="${not empty ProductQna }">
<c:forEach items="${ProductQna }" var="qna">
<p>문의번호${qna.pq_no }</p>
<p>문의제목${qna.pq_title }</p>
<p>문의유형${qna.pq_type }</p>
<p>작성일자${qna.pq_date }</p>
<p>내용${qna.pq_content }</p>
<p>회원아이디${qna.m_id }</p>
<p>비밀글여부${qna.pq_closed }</p>
</c:forEach>
</c:when>
<c:when test="${empty  productQna}">
현재 작성된 상품 문의가 없습니다.
</c:when>
</c:choose>

	</div>

	<jsp:include page="../common/template_footer.jsp"></jsp:include>
	<!-- 부트스트랩 스크립트 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>