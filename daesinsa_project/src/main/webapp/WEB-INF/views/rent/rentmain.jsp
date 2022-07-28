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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/main.css">
<!-- 폰트 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title>Daesinsa 대신사 - 대여</title>
</head>
<body>
 <jsp:include page="../common/template_rheader.jsp"></jsp:include>
	<div id="mainwrap">

		<!-- 메인 첫번째 슬라이드 배너 -->
		<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="0" class="" aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="1" aria-label="Slide 2" class="active"
					aria-current="true"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="2" aria-label="Slide 3" class=""></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item">
					<img src="${pageContext.request.contextPath}/resources/img/rent/슬라이드1.png"
					 width="100%" height="100%">


					<div class="container main_first">
						<div class="carousel-caption text-start banner">
							<h1>Welcome</h1>
							<p>원하는 상품을 자유롭게 대여해보세요!</p>
							<p>
								<a class="btn btn-sm btn-primary" href="${pageContext.request.contextPath}/rent/rentlist?c_id=C111&c_first=1">바로가기</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item active">
				<img src="${pageContext.request.contextPath}/resources/img/rent/슬라이드2.png"
				 width="100%" height="100%">

					<div class="container">
						<div class="carousel-caption banner">
							<h1>a rental of short-sleeved shirts</h1>
							<p>시원한 여름 반팔티 대여는 대신사에서</p>
							<p>
								<a class="btn btn-sm btn-primary" href="${pageContext.request.contextPath}/rent/rentlist?c_id=C212&c_first=2">바로가기</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img src="${pageContext.request.contextPath}/resources/img/rent/슬라이드3.png"
					width="100%" height="100%">

					<div class="container">
						<div class="carousel-caption banner text-end">
							<h1>a bag rental</h1>
							<p>의류 뿐만 아니라 가방까지 자유롭게 대여 가능</p>
							<p>
								<a class="btn btn-sm btn-primary" href="${pageContext.request.contextPath}/rent/rentlist?c_id=C231&c_first=2">바로가기</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#myCarousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#myCarousel" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<!-- 메인 첫번째 슬라이드 배너 끝 -->

		<!-- 메인 두번째 상품 진열 -->
		<div class="container main_second">
			<h1>New product</h1>
			<p class="sub_title">신규 대여 가능 상품</p>
			<ul class="row row-cols-4">
			<c:forEach items="${rmain }" var="main">
				<li>
				<div class="col">
				<a href="${pageContext.request.contextPath}/rent/detail?p_id=${main.p_id }">
				<c:forEach items="${main.p_img_list }" var="img"
						varStatus="status">
					<c:if test="${status.count <2 }">
					<c:if test="${not empty img.p_img_path }">
			<img
				src="${pageContext.request.contextPath}${img.p_img_path}" width="70%" height="70%">
				</c:if>
				</c:if>
			</c:forEach>
						<div class="product_name"><p>${main.p_name }</p></div>
						<div class="product_price"><p>일 1,500원</p></div>
					</a>
					</div>
				</li>
				
			</c:forEach>	
			</ul>
		</div>
		<!-- 메인 두번째 상품 진열 끝 -->

		<!-- 메인 세번째 상품 진열 -->
		<div class="container main_thrid">
			<h1>Recommended product</h1>
			<p class="sub_title">추천 대여 가능 상품</p>
			<ul class="row row-cols-4">
			<c:forEach items="${rmain2 }" var="main">
				<li>
				<div class="col">
				<a href="${pageContext.request.contextPath}/rent/detail?p_id=${main.p_id }">
				<c:forEach items="${main.p_img_list }" var="img"
						varStatus="status">
					<c:if test="${status.count <2 }">
					<c:if test="${not empty img.p_img_path }">
			<img
				src="${pageContext.request.contextPath}${img.p_img_path}" width="70%" height="70%">
				</c:if>
				</c:if>
			</c:forEach>
						<div class="product_name"><p>${main.p_name }</p></div>
						<div class="product_price"><p>일 1,500원</p></div>
					</a>
					</div>
				</li>
				
			</c:forEach>	
			</ul>
		</div>
		<!-- 메인 세번째 상품 진열 끝 -->

		<!-- 메인 네번째 테마  -->
		<div
			class="position-relative p-3 p-md-5 m-md-3 text-center main_fourth"
			style="background-color: #2266a5cb; color: white;">
			<div class="col-md-5 p-sm mx-auto">
		<img src="${pageContext.request.contextPath}/resources/img/main/여름배너.png" width="550" height="250">
			</div>
		</div>


		<!-- 메인 네번째 테마 끝 -->
		<!-- 메인 네번째 테마 상품 진열 -->
		<div class="container main_fourth_item">
			<ul class="row row-cols-4">
				<li>
					<div class="col">
					<a href="${pageContext.request.contextPath}/rent/detail?p_id=WTSS002">
						<img src="${pageContext.request.contextPath}/resources/img/shop/women/top/WTSS002_1.jpg"
						 width="70%" height="70%">
						<div class="product_name">심플 소매 포인트 반팔 NAVY</div>
						<div class="product_price">일 1,500원</div>
						</a>
					</div>
				</li>
					<li>
					<div class="col">
					<a href="${pageContext.request.contextPath}/rent/detail?p_id=MTSS004">
						<img src="${pageContext.request.contextPath}/resources/img/shop/men/top/MTSS004_1.jpg"
						 width="70%" height="70%">
						<div class="product_name">심플 반팔 WHITE</div>
						<div class="product_price">일 1,500원</div>
						</a>
					</div>
				</li>

					<li>
					<div class="col">
					<a href="${pageContext.request.contextPath}/rent/detail?p_id=MAB004">
						<img src="${pageContext.request.contextPath}/resources/img/shop/men/acc/bag/MAB004_1.jpg"
						 width="70%" height="70%">
						<div class="product_name">빅여우 에코백 WHITE</div>
						<div class="product_price">일 1,500원</div>
						</a>
					</div>
				</li>
					<li>
					<div class="col">
					<a href="${pageContext.request.contextPath}/rent/detail?p_id=WAB007">
						<img src="${pageContext.request.contextPath}/resources/img/shop/women/acc/bag/WAB007_1.jpg"
						 width="70%" height="70%">
						<div class="product_name">2WAY 체인백 BLACK</div>
						<div class="product_price">일 1,500원</div>
						</a>
					</div>
				</li>
			</ul>
		</div>
		<!-- 메인 네번째 테마 상품 진열 끝 -->
	</div>

	<!-- 메인 끝 -->
	<jsp:include page="../common/template_footer.jsp"></jsp:include>
	<!-- 부트스트랩 스크립트 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
crossorigin="anonymous"></script> 

</body>
</html>