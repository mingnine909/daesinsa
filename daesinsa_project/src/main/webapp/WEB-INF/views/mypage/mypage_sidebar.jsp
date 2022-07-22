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
<!-- XEICON CDN -->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/mypage/mypage_sidebar.css">
<!-- Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
</head>
<body>
	
<div class="mypage-wrapper">
    <div class="d-flex flex-column flex-shrink-0 p-3 bg-light">
        <p class="my-hl">마이페이지</p>
        <hr>
        <ul class="nav nav-pills flex-column mb-auto">
          <li class="nav-tab"> 
            <a href="${pageContext.request.contextPath}/mypage/order" class="nav-link active">주문/배송 조회</a>
          </li>
          <li class="nav-tab">
            <a href="${pageContext.request.contextPath}/mypage/rental" class="nav-link link-dark">대여 상태 조회</a>
          </li>
          <li class="nav-tab">
            <a href="${pageContext.request.contextPath}/mypage/infoupdate" class="nav-link link-dark">회원 정보 수정</a>
          </li>
          <li class="nav-tab">
            <a href="${pageContext.request.contextPath}/mypage/infodelete" class="nav-link link-dark">회원 탈퇴</a>
          </li>
        </ul>
        <hr>
      </div>
    </div>

<!--  <script> 
 	$()
    $('.nav-link').click(function(){
      if($(this).hasClass("link-dark")) {
        $('.nav-link').removeClass('link-dark').addClass('active');
        $('.nav-link').removeClass('active').addClass('link-dark');
      } else {
        $('.nav-link').removeClass('active').addClass('active');
      }
    });

    </script> -->
</body>
</html>