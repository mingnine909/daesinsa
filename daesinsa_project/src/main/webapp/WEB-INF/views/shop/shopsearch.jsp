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
<!-- shop css -->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/shop/shop.css">
<!-- 폰트 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title>Daesinsa - 상품검색</title>
</head>
<body>
 <jsp:include page="../common/template_header.jsp"></jsp:include>
	<div id="mainwrap">

<!-- 사이드 메뉴 끝 -->
<c:choose>
<c:when test="${not empty Shopping }">
<div class="shopping_search_list container">
<div class="search_result">
<p>${keyword }로 검색한 결과입니다.</p>
</div>

  <ul>
	<c:forEach items="${Shopping }" var ="shop">
	<li>
    <div class="product">
    <a href="${pageContext.request.contextPath}/shop/detail?p_id=${shop.p_id }">
    <c:forEach items="${shop.p_img_list }" var="shopimg" varStatus="status"> 
    <c:if test="${status.count <2 }">
    <c:if test ="${not empty shopimg.p_img_path }">
      <img src="${pageContext.request.contextPath}${shopimg.p_img_path}" width="100%" height="100%">
      </c:if>
      </c:if>
      </c:forEach>
      <div class="product_name">${shop.p_name }</div>
      <div class="product_price">${shop.p_price }</div> 
      <c:if test="${shop.p_isrental ==1 }">
      <span style= "background-color: #FAA570; color: white">대여가능</span>
      </c:if>
       <c:if test="${shop.p_isrental ==2 }">
      <span style="background-color: #044343; color:#e4e4e4;">대여불가</span>
      </c:if>
       <c:if test="${shop.p_issoldout ==1 }">
      <span style="background-color: #e4e4e4;">품절</span>
      </c:if>
      </a>
    </div>
  </li>
</c:forEach>
</ul>
</div>

</c:when>

<c:when test="${empty Shopping }">
<div>해당 상품이 없습니다. </div>
</c:when>
</c:choose>

	
   <!-- 페이징 부분 -->
  <div class="paging">
			<p>
				<c:if test="${startPage > 1 }">
					<a href="${pageContext.request.contextPath}/shop/search?keyword=${keyword }&page=${startPage-1 }"><span>이전</span></a>&nbsp;&nbsp;&nbsp;
			</c:if>
				<c:forEach begin="${startPage}" end="${endPage}" var="i">
					<a href="${pageContext.request.contextPath}/shop/search?keyword=${keyword }&page=${i}"><span>${i }</span></a>&nbsp;&nbsp;&nbsp;
			</c:forEach>
				<c:if test="${endPage < pageCnt}">
					<a href="${pageContext.request.contextPath}/shop/search?keyword=${keyword }&page=${endPage+1 }"><span>다음</span></a>&nbsp;&nbsp;&nbsp;
			</c:if>
			</p>
		</div>

</div>
	<jsp:include page="../common/template_footer.jsp"></jsp:include>
	<!-- 부트스트랩 스크립트 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
crossorigin="anonymous"></script> 
</body>
</html>