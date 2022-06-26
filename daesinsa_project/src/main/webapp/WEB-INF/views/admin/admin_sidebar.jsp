<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common/header_footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/admin/admin_sidebar.css">
	
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
<body>
        <div calss="admin-side-wrapper">
            <div class="admin-side-container">
                <div class="admin-side-spacing"></div>
                <h4>DAESINSA <br>ADMIN</h4>
                <div class="admin-side-spacing-l"></div>
                <div class="card text-center" style="width:9rem;">
                    <div class="card-body">
                      <h5 class="card-title">admin01</h5>
                      <p class="card-text">접속 중</p>
                      <a href="#" class="btn btn-primary">로그아웃</a>
                    </div>
                  </div>
                <div class="admin-side-spacing-l"></div>
                <nav class="nav flex-column">
                    <a class="nav-link" href="#"><b>대시보드</b></a>
                    <a class="nav-link" href="#"><b>상품 관리</b></a>
                        <a class="nav-link disabled" href="#">&nbsp;상품 등록</a> 
                        <a class="nav-link disabled" href="#">&nbsp;상품 수정</a>
                        <a class="nav-link disabled" href="#">&nbsp;교환/반품 관리</a>
                    <a class="nav-link" href="#"><b>대여 관리</b></a>
                        <a class="nav-link disabled" href="#">&nbsp;반납 승인</a>
                    <a class="nav-link" href="#"><b>쿠폰 관리</b></a>
                    <a class="nav-link disabled" href="#">&nbsp;쿠폰 추가</a>
                    <a class="nav-link" href="#"><b>문의 관리</b></a>
                    <a class="nav-link" href="#"><b>회원 목록</b></a>
                        <a class="nav-link disabled" href="#">&nbsp;탈퇴 회원 목록</a>
                  </nav>
            </div>
        </div>

</body>
</html>