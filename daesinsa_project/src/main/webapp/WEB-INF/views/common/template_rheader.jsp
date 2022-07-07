<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   

  <div id="headerwrap">
 <!-- 로고 + 구매 / 대여 버튼 헤더 -->
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom logo">
      <a href="${pageContext.request.contextPath}/rent/main" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
        <img src="${pageContext.request.contextPath}/resources/img/header_footer/로고.PNG" width="180" height="40">
      </a>

      <div class="d-grid gap-2 d-md-flex justify-content-md-end">
        <button class="btn btn-outline-dark btn-sm me-md-2" type="button"
        onclick="location.href='${pageContext.request.contextPath}/'">구매</button>
        <button class="btn btn-outline-dark btn-sm me-md-2" type="button"
        onclick="location.href='${pageContext.request.contextPath}/rent/main'">대여</button>
        
      </div>
    </header>

    <!-- 헤더 끝 -->
 
	<!-- NAV : 메뉴 + 검색창 + 아이콘 -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
     
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarScroll">
        <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle active"
             href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              MEN
            </a>
            <ul class="dropdown-menu ">
              <li ><a class="dropdown-item disabled second_menu" href="#">상의</a>
                <ul class="dropdown-item third_menu"> 
                  <li><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C111&c_first=1">긴팔</a></li>
                  <li><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C112&c_first=1">반팔</a></li>
                </ul>
              </li>
              <li><a class="dropdown-item disabled second_menu" href="#">하의</a>
                <ul class="dropdown-item third_menu"> 
                  <li><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C121&c_first=1">바지</a></li>
                </ul>
              </li>
              <li><a class="dropdown-item disabled second_menu" href="#">ACC</a>
                <ul class="dropdown-item third_menu"> 
                  <li><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C131&c_first=1">가방</a></li>
                  <li><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C132&c_first=1">신발</a></li>
                  <li><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C133&c_first=1">모자</a></li>
                </ul>
              </li>
          </ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle active" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              WOMEN
            </a>
            <ul class="dropdown-menu " >
                <li><a class="dropdown-item disabled second_menu" href="#">상의</a>
                <ul class="dropdown-item third_menu"> 
                  <li><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C211&c_first=2">긴팔</a></li>
                  <li><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C212&c_first=2">반팔</a></li>
                </ul>
              </li>
                <li><a class="dropdown-item disabled second_menu" href="#">하의</a>
                  <ul class="dropdown-item third_menu"> 
                    <li><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C221&c_first=2">바지</a></li>
                    <li><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C222&c_first=2">치마</a></li>
                  </ul>
                </li>
                <li><a class="dropdown-item disabled second_menu" href="#">ACC</a>
                  <ul class="dropdown-item third_menu"> 
                    <li><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C231&c_first=2">가방</a></li>
                    <li><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C232&c_first=2">신발</a></li>
                    <li><a href="${pageContext.request.contextPath}/rent/rentlist?c_id=C233&c_first=2">모자</a></li>
                  </ul>
                </li>
            </ul>
          </li>
  
        </ul>
				<form class="d-flex search" 
				action="${pageContext.request.contextPath}/rent/search" method="get">
					<input class="form-control me-2" type="search" placeholder="Search"
						name="keyword" aria-label="Search">
					<button class="btn btn-outline-light" type="submit">
						<i class="xi-search xi-2x"></i>
					</button>
				</form>
				<ul class="navbar-nav mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/mypage/order"><i
							class="xi-user xi-2x"><p class="icon_des">마이페이지</p></i></a></li>
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/shop/wishlist"><i
							class="xi-heart xi-2x"><p class="icon_des">위시리스트</p></i></a></li>
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/shopbasket/list"><i
							class="xi-cart xi-2x"><p class="icon_des">장바구니</p></i></a></li>
							
					<!-- TODO : 로그인 구현 후 로그인시 로그아웃으로 변경(주석처리 : 조건식 에러떠서 변경 시 삽입) -->
					
             <!-- 	<li class="nav-item">
                <a class="nav-link" href="#"><i class="xi-log-out xi-2x"><p class="icon_des">로그아웃</p></i></a>
              </li>  -->

				
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/member/login"><i
								class="xi-log-in xi-2x"><p class="icon_des">로그인</p></i></a></li>
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/member/signup"><i
								class="xi-user-plus xi-2x"><p class="icon_des">회원가입</p></i></a></li>
					

				</ul>
			</div>
    </div>
    
  </nav>
<!-- NAV 끝 -->
</div>