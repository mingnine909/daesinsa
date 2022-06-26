<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common/header_footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin/admin_sidebar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin/plist.css">

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
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
<!-- Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<title>상품 관리</title>
</head>
<body>
	<div calss="plist-wrapper">
		<div class="plist-container">
			<h4 style="text-align: left;">상품 관리</h4>
			<div class="plist-spacing"></div>
			<div class="plist-dropdown">
				<div class="dropdown">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">카테고리 선택</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="#">카테고리1</a></li>
						<li><a class="dropdown-item" href="#">카테고리2</a></li>
						<li><a class="dropdown-item" href="#">카테고리3</a></li>
					</ul>
				</div>
			</div>
			<div class="plist-spacing-l"></div>
			<div class="plist-ad-btn">
				<button type="button" class="btn btn-primary btn-sm">상품 등록</button>
				<button type="button" class="btn btn-secondary btn-sm">선택
					삭제</button>
			</div>
			<div class="plist-spacing-xl"></div>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value=""
									id="flexCheckDefault">
							</div>
						</th>
						<th scope="col">상품 번호</th>
						<th scope="col">상품명</th>
						<th scope="col">등록일</th>
						<th scope="col"></th>
					</tr>
				</thead>
				<tbody class="table-group-divider">
					<tr>
						<td>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value=""
									id="flexCheckDefault">
							</div>
						</td>
						<td>11</td>
						<td>11</td>
						<td>11</td>
						<td><button type="button" class="btn btn-primary btn-sm">수정</button>
							<button type="button" class="btn btn-secondary btn-sm">삭제</button>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="plist-spacing-l"></div>
			<div class="plist-pagination">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>