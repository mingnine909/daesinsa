<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common/header_footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/mypage/mypage_sidebar.css">

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jQuery -->
 <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
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
<%@ include file="/WEB-INF/views/common/template_header.jsp"%>

<div class="mypage-wrapper">
    <div class="d-flex flex-column flex-shrink-0 p-3 bg-light">
        <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
          <h3 style="text-align: center;">마이페이지</h3>
        </a>
        <hr>
        <ul class="nav nav-pills flex-column mb-auto">
          <li class="nav-tab"> 
            <a href="#" class="nav-link active">주문/배송 조회</a>
          </li>
          <li class="nav-tab">
            <a href="#" class="nav-link link-dark">교환/반품 신청</a>
          </li>
          <li class="nav-tab">
            <a href="#" class="nav-link link-dark">대여 상태 조회</a>
          </li>
          <li class="nav-tab">
            <a href="#" class="nav-link link-dark">회원 정보 수정</a>
          </li>
          <li class="nav-tab">
            <a href="#" class="nav-link link-dark">회원 탈퇴</a>
          </li>
        </ul>
        <hr>
      </div>
    </div>

    <script> 
    // $('.nav-link').click(function(){
    //   $(this).toggleClass("active link-dark");
    // });

    $('.nav-link').click(function(){
      if($(this).hasClass("link-dark")) {
        $('.nav-link').removeClass('link-dark').addClass('active');
      } else {
        $('.nav-link').removeClass('active').addClass('active');
      }
    });

    </script>


<%@ include file="/WEB-INF/views/common/template_footer.jsp"%>

</body>
</html>