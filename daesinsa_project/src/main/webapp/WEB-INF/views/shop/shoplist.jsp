<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- XEICON CDN -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!-- Common CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/header_footer.css">

<!-- 폰트 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title>Daesinsa - 상품목록</title>
</head>
<body>
 <jsp:include page="../common/template_header.jsp"></jsp:include>
	<div id="mainwrap">


${Shopping} 
	<c:choose>
		<c:when test="${not empty Shopping }">
			<c:forEach items="${Shopping}" var="shop">
				<table border="1px">
					<tr>
						<td>상품명 : ${shop.p_name }</td>
						<td>상품가격 : ${shop.p_price }</td>
						<td>상품이미지 : ${shop.p_img_list} </td>
						<td>카테고리 : ${shop.category} </td>
						<c:forEach items="${shop.p_img_list}" var="img">
						<td>상품이미지 :  <img src="${pageContext.request.contextPath}${img.p_img_path }">
						</td>
						</c:forEach>

					</tr>
				</table>
			</c:forEach>
		
			<p>
				<c:if test="${startPage > 1 }">
					<a href="${pageContext.request.contextPath}/shop/shoplist?c_id=${c_id}&c_first=${c_first }&page=${endPage+1 }"><span>이전</span></a>&nbsp;&nbsp;&nbsp;
			</c:if>
				<c:forEach begin="${startPage}" end="${endPage}" var="i">
					<a href="${pageContext.request.contextPath}/shop/shoplist?c_id=${c_id}&c_first=${c_first }&page=${endPage+1 }"><span>${i }</span></a>&nbsp;&nbsp;&nbsp;
			</c:forEach>
				<c:if test="${endPage < pageCnt}">
					<a href="${pageContext.request.contextPath}/shop/shoplist?c_id=${c_id}&c_first=${c_first }&page=${endPage+1 }"><span>다음</span></a>&nbsp;&nbsp;&nbsp;
			</c:if>
			</p>
		
		</c:when>
		<c:when test="${empty Shopping }">
			<div>상품이 없습니다.</div>
		</c:when>
	</c:choose>
</div>
	<jsp:include page="../common/template_footer.jsp"></jsp:include>
	<!-- 부트스트랩 스크립트 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
crossorigin="anonymous"></script> 
</body>
</html>