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
<!-- rent css -->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rent/rent.css">
<!-- 폰트 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title>Daesinsa - 대여목록</title>
</head>
<body>
 <jsp:include page="../common/template_rheader.jsp"></jsp:include>
	<div id="mainwrap">
	<div class="sideandlist container">
	<div class="sidebar">
  <div class="p-3 bg-white" style="width: 280px;">
    <!-- TODO : 여성 상품 채워넣으면 test안에 여성 상품 카테고리 넣기 -->
    <div class="top">
      <c:choose>
    <c:when test="${c_id eq 'C111' || c_id eq 'C112' }">
      <h1 class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none">
        상의</h1>
      </c:when>
        <c:when test="${c_id eq 'C121'}">
        <h1 class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none">
        하의</h1>
        </c:when>
        <c:otherwise>
        <h1 class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none">
        ACC</h1>
        </c:otherwise>
        </c:choose> 
      </div>
    <ul class="list-unstyled ps-0 sidemenu">
      <li class="border-top my-3"></li>
      <li class="mb-1 first_menu">
        <button class="btn btn-toggle align-items-center rounded d-grid gap-2" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">
         상의
        </button>
        <div class="collapse " id="home-collapse" >
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
   <c:if test="${c_first == 1 }">
            <li class="second_menu"><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C111&c_first=1" 
            class="link-dark rounded ">긴팔</a></li>
            <li class="second_menu"><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C112&c_first=1" 
             class="link-dark rounded ">반팔</a></li>
            </c:if>
             <c:if test="${c_first == 2 }">
            <li class="second_menu"><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C211&c_first=2"
             class="link-dark rounded ">긴팔</a></li>
            <li class="second_menu"><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C212&c_first=2"
            class="link-dark rounded ">반팔</a></li>
            </c:if>
          </ul>
        </div>
      </li>
      <li class="mb-1 first_menu">
        <button class="btn btn-toggle align-items-center rounded collapsed " data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
          하의
        </button>
        <div class="collapse " id="dashboard-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
          <c:if test="${c_first == 1 }">
           <li class="second_menu"><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C121&c_first=1"
            class="link-dark rounded ">바지</a></li>
          </c:if>
            <c:if test="${c_first == 2}">
            <li class="second_menu"><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C221&c_first=2"
            class="link-dark rounded ">바지</a></li>
            <li class="second_menu"><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C222&c_first=2"
            class="link-dark rounded ">치마</a></li>
            </c:if>
          </ul>
        </div>
      </li>
      <li class="mb-1 first_menu">
        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
          ACC
        </button>
        <div class="collapse " id="orders-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
          <c:if test="${c_first ==1 }">
            <li class="second_menu"><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C131&c_first=1"
             class="link-dark rounded ">가방</a></li>
            <li class="second_menu"><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C132&c_first=1"
             class="link-dark rounded ">신발</a></li>
            <li class="second_menu"><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C133&c_first=1"
             class="link-dark rounded ">모자</a></li>
            </c:if>
               <c:if test="${c_first ==2 }">
            <li class="second_menu"><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C231&c_first=2"
            class="link-dark rounded ">가방</a></li>
            <li class="second_menu"><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C232&c_first=2"
            class="link-dark rounded ">신발</a></li>
            <li class="second_menu"><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C233&c_first=2"
            class="link-dark rounded ">모자</a></li>
            </c:if>
          </ul>
        </div>
      </li>
      <li class="border-top my-3"></li>
    </ul>
  </div>
</div>
<!-- 사이드 메뉴 끝 -->
<c:choose>
<c:when test="${not empty Rent }">
<div class="rent_list">
  <ul>
	<c:forEach items="${Rent }" var ="rent">
     <c:if test="${rent.p_isrental ==1 }">
	<li class="product_list">
    <div class="product">
    <a href="${pageContext.request.contextPath}/rent/detail?p_id=${rent.p_id }">
    <c:forEach items="${rent.p_img_list }" var="rentimg" varStatus="status"> 
    <c:if test="${status.count <2 }">
    <c:if test ="${not empty rentimg.p_img_path }">
      <img src="${pageContext.request.contextPath}${rentimg.p_img_path}" width="100%" height="100%">
      </c:if>
      </c:if>
      </c:forEach>
       <div class="product_name">${rent.p_name }</div>
      <div class="product_price">일 1,500원 </div> 
      </a>
    </div>
  </li>
      </c:if>
</c:forEach>
</ul>
</div>

</c:when>

<c:when test="${empty Rent }">
<div>해당 상품이 없습니다. </div>
</c:when>
</c:choose>

</div>
	
   <!-- 페이징 부분 -->
  <div class="paging">
			<ul class="pagination justify-content-center">
     <c:if test="${startPage > 1 }">
    <li class="page-item">
      <a class="page-link" href="${pageContext.request.contextPath}/rent/rentlist?c_id=${c_id}&c_first=${c_first }&page=${startPage-1 }"
       aria-label="이전">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
       </c:if>
    <c:forEach begin="${startPage}" end="${endPage}" var="i">
    <li class="page-item"><a class="page-link"
     href="${pageContext.request.contextPath}/rent/rentlist?c_id=${c_id}&c_first=${c_first }&page=${i}">${i }</a></li>
    </c:forEach>
    	<c:if test="${endPage < pageCnt}">
    <li class="page-item">
      <a class="page-link" href="${pageContext.request.contextPath}/rent/rentlist?c_id=${c_id}&c_first=${c_first }&page=${endPage+1 }"
       aria-label="다음">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
    </c:if>
  </ul>
		</div>

</div>
	<jsp:include page="../common/template_footer.jsp"></jsp:include>
	<!-- 부트스트랩 스크립트 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
crossorigin="anonymous"></script> 
</body>
</html>