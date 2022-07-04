<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<!-- search css -->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/shop/search.css">
<!-- 폰트 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title>Daesinsa - 상품검색</title>
</head>
<body>
 <jsp:include page="../common/template_header.jsp"></jsp:include>
	<div id="mainwrap">


<c:choose>
<c:when test="${not empty Shopping }">
<div class="shopping_search_list container">
<div class="search_result">
<p><b>"${keyword }"</b>에 대한 <b>${searchCnt } </b>개의 검색 결과입니다.</p>

</div>


    <div class="album py-5 bg-light">
        <div class="container">
    
          <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
	 <c:forEach items="${Shopping }" var ="shop">
      <div class="col">
      <div class="card shadow-sm">
<%--     <a href="${pageContext.request.contextPath}/shop/detail?p_id=${shop.p_id }"> --%>
    <c:forEach items="${shop.p_img_list }" var="shopimg" varStatus="status"> 
    <c:if test="${status.count <2 }">
    <c:if test ="${not empty shopimg.p_img_path }">
      <img src="${pageContext.request.contextPath}${shopimg.p_img_path}" width="60%" height="60%">
       </c:if>
      </c:if>
      </c:forEach> 
      <div class="card-body">
      <div class="product_name"><p>${shop.p_name }</p></div>
      <div class="product_price"><p><fmt:formatNumber value="${shop.p_price }" pattern="￦#,###.##"/></p></div> 
      <c:if test="${shop.p_isrental ==1 }">
      <span style= "background-color: #FAA570; color: white">대여가능</span>
      </c:if>
      <c:if test="${shop.p_isrental ==2 }">
      <span style="background-color: #044343; color:#e4e4e4;">대여불가</span>
      </c:if>
       <c:if test="${shop.p_issoldout ==1 }">
      <span style="background-color: #e4e4e4;">품절</span>
      </c:if>
     
       <div class="d-flex justify-content-between align-items-center">
                      <button type="button" class="btn btn-outline-secondary"
                      onclick="location.href='${pageContext.request.contextPath}/shop/detail?p_id=${shop.p_id }'">View Detail</button>

                  </div>
                </div>
<!--              </a> -->
              </div>
            </div>
            </c:forEach>
            </div>
            </div>
            </div>
</div>

</c:when>

<c:when test="${empty Shopping }">
<div class="search_error container">"${keyword }"(으)로 검색한 상품이 없습니다. </div>
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