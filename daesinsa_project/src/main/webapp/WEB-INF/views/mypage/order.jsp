<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common/header_footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/mypage/mypage_sidebar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/mypage/mypage_order.css">

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--Bootstrap CDN  -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<!-- Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
</head>
<title>주문/배송 조회</title>
<body>
	<%@ include file="/WEB-INF/views/common/template_header.jsp"%>
	<%@ include file="/WEB-INF/views/mypage/mypage_sidebar.jsp"%>
	
	<div class="order-wrapper">
		<h3 style="text-align: left;">주문/배송 조회</h3>
		<div class="order-spacing"></div>
		<h4 style="text-align: left;">배송 조회</h4>
		<div class="order-spacing"></div>
		<ul class="list-group list-group-horizontal">
			<li class="list-group-item">
				<h5>결제 완료</h5>
				<h6>0</h6>
			</li>
			<li class="list-group-item">
				<h5>배송 준비 중</h5>
				<h6>0</h6>
			</li>
			<li class="list-group-item">
				<h5>배송 시작</h5>
				<h6>0</h6>
			</li>
			<li class="list-group-item">
				<h5>배송 중</h5>
				<h6>0</h6>
			</li>
			<li class="list-group-item">
				<h5>배송 완료</h5>
				<h6>0</h6>
			</li>
		</ul>
		<div class="order-spacing-l"></div>
		<h4 style="text-align: left;">교환/반품 조회</h4>
		<div class="order-spacing"></div>
		<ul class="list-group list-group-horizontal">
			<li class="list-group-item">
				<h5>교환 중</h5>
				<h6>0</h6>
			</li>
			<li class="list-group-item">
				<h5>교환 완료</h5>
				<h6>0</h6>
			</li>
			<li class="list-group-item">
				<h5>반품 중</h5>
				<h6>0</h6>
			</li>
			<li class="list-group-item">
				<h5>반품 완료</h5>
				<h6>0</h6>
			</li>
		</ul>
		<div class="order-spacing-l"></div>
		<h4 style="text-align: left;">주문 내역</h4>
		<div class="order-spacing"></div>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">주문 일자</th>
					<th scope="col">주문 번호</th>
					<th scope="col">주문 내역</th>
					<th scope="col"></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>11</td>
					<td>11</td>
					<td>11</td>
					<td><button type="button" class="btn btn-primary btn-sm">리뷰
							작성</button>
						<button type="button" class="btn btn-secondary btn-sm">반품/교환
							신청</button></td>
				</tr>
			</tbody>
		</table>
	</div>
	<%@ include file="/WEB-INF/views/common/template_footer.jsp"%>
</body>
</html>