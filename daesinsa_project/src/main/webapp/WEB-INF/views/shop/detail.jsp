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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/shop/detail.css">
<!-- 폰트 -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
	
	<!-- bx슬라이더 + jquery cdn -->
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
            <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<title>Daesinsa</title>
</head>
<body>
	<jsp:include page="../common/template_header.jsp"></jsp:include>
	<div id="mainwrap">
	
	<c:if test = "${detail.category[0].c_id eq 'C111' || detail.category[0].c_id eq 'C112'}">남성 상의</c:if>
	<c:if test = "${detail.category[0].c_id eq 'C121'}" >남성 하의</c:if>
	<c:if test = "${detail.category[0].c_id eq 'C131'}" >남성 가방</c:if>
	<c:if test = "${detail.category[0].c_id eq 'C132'}" >남성 신발</c:if>
	<c:if test = "${detail.category[0].c_id eq 'C133'}" >남성 모자</c:if>
 	
	<c:if test = "${detail.category[0].c_id eq 'C211' || detail.category[0].c_id eq 'C212'}">여성 상의</c:if>
	<c:if test = "${detail.category[0].c_id eq 'C221' || detail.category[0].c_id eq 'C222'}">여성 하의</c:if>
	
	<c:if test = "${detail.category[0].c_id eq 'C231'}" >여성 가방</c:if>
	<c:if test = "${detail.category[0].c_id eq 'C232'}" >여성 신발</c:if>
	<c:if test = "${detail.category[0].c_id eq 'C233'}" >여성 모자</c:if> 

		<c:choose>
			<c:when test="${not empty detail }">
        	<div class="product_detail container">
				<div class="product_img_all">
				  <c:forEach items="${detail.p_img_list}" var="img">
				 <c:if test="${not empty img.p_img_path }"> 
          		<div class="product_img">
                <img src="${pageContext.request.contextPath}${img.p_img_path }" width="100%" height="100%">   
       			</div>
       		
                 </c:if> 
				</c:forEach>		
					</div>
					
				<div class="product_info ">
				<div class="product_name"><p> ${detail.p_name }</p></div>
				<div class="product_price"><p> ${detail.p_price }</p></div>
					
				  <select class="product_option">
				  <!-- 이 부분 내일 질문 ...  -->
				<c:forEach items="${detail.p_option_info}" var="option">
				<c:choose>
				  <c:when test="${option.po_id eq 'PO2' }">
				  <option 
				  <c:if test="${option.poi_type==1 }">value="1"</c:if>
				  <c:if test="${option.poi_type==2 }">value="2"</c:if>
				  <c:if test="${option.poi_type==3 }">value="3"</c:if>
				  <c:if test="${option.poi_type==4 }">value="4"</c:if>
				   ><c:if test="${option.poi_type==1 }">S</c:if>
				   <c:if test="${option.poi_type==2 }">M</c:if>
				   <c:if test="${option.poi_type==3 }">L</c:if>
				   <c:if test="${option.poi_type==4 }">XL</c:if>
				   </option>
				  </c:when>
				  <c:when test="${option.po_id eq 'PO3' }">
				  <option 
				  <c:if test="${option.poi_type==1 }">value="1"</c:if>
				  <c:if test="${option.poi_type==2 }">value="2"</c:if>
				  <c:if test="${option.poi_type==3 }">value="3"</c:if>
				  <c:if test="${option.poi_type==4 }">value="4"</c:if>
				  <c:if test="${option.poi_type==5 }">value="5"</c:if>
				   ><c:if test="${option.poi_type==1 }">250</c:if>
				   <c:if test="${option.poi_type==2 }">260</c:if>
				   <c:if test="${option.poi_type==3 }">270</c:if>
				   <c:if test="${option.poi_type==4 }">280</c:if>
				    <c:if test="${option.poi_type==5}">290</c:if>
				   </option>
				   </c:when>
				   <c:when test="${option.po_id eq 'PO4' }">
				  <option 
				  <c:if test="${option.poi_type==1 }">value="1"</c:if>
				  <c:if test="${option.poi_type==2 }">value="2"</c:if>
				  <c:if test="${option.poi_type==3 }">value="3"</c:if>
				  <c:if test="${option.poi_type==4 }">value="4"</c:if>
				  <c:if test="${option.poi_type==5 }">value="5"</c:if>
				   ><c:if test="${option.poi_type==1 }">210</c:if>
				   <c:if test="${option.poi_type==2 }">220</c:if>
				   <c:if test="${option.poi_type==3 }">230</c:if>
				   <c:if test="${option.poi_type==4 }">240</c:if>
				    <c:if test="${option.poi_type==5}">250</c:if>
				   </option>
				  </c:when>
				  <c:otherwise>
				  <option>Free</option>
				  </c:otherwise>
				  </c:choose>
				</c:forEach>
				  </select>
				</div>
				</div>
				<hr>
				<div class="product_des container">
				<c:if test="${not empty detail.p_content }">
				<p> ${detail.p_content }</p>
				</c:if>
				</div>
			</c:when>
			<c:when test="${empty detail } ">
상품이 없습니다.
</c:when>
		</c:choose>


<!-- 상품문의 -->
<hr>
<div class="product_qna container">
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
	</div>

	<jsp:include page="../common/template_footer.jsp"></jsp:include>
	
	<!-- 슬라이더 스크립트  -->
	 <script>
      $(document).ready(function(){
        $('.product_img_all').bxSlider();
      });
    </script>
	<!-- 부트스트랩 스크립트 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>