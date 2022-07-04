<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
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
<!-- notice css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/cs/notice.css">
<!-- 폰트 -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<title>Daesinsa 공지사항</title>
</head>
<body>
<jsp:include page="../common/template_header.jsp"></jsp:include>
<div id="mainwrap">

 <div class="sideandlist container">
            <!-- 사이드 메뉴 -->
        <div id="sidebar">
        <div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
          <div class="top">
            <h1 class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none">
              고객센터</h1>
            </div>
          <ul class="list-unstyled ps-0 sidemenu">
            <li class="border-top my-3"></li>
            <li class="mb-1 first_menu">
              <button class="btn btn-toggle align-items-center rounded d-grid gap-2" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">
               공지사항
              </button>
              <div class="collapse " id="home-collapse" >
                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                  <li class="second_menu"><a href="#" class="link-dark rounded ">안내</a></li>
                  <li class="second_menu"><a href="#" class="link-dark rounded ">Event</a></li>
                </ul>
              </div>
            </li>
            <li class="mb-1 first_menu">
              <button class="btn btn-toggle align-items-center rounded collapsed " data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
                1:1문의<span>
              </button>
             
            </li>
            <li class="mb-1 first_menu">
              <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
                자주 묻는 질문<span>
              </button>
              
            </li>
            <li class="border-top my-3"></li>
          </ul>
        </div>
        </div>
        <!-- 사이드메뉴 끝 -->
        
        	<c:choose>
				<c:when test="${not empty notice }">
				   <div class="notice_list">
				   <table class="notice">
				   <tr>
				   <td>제목</td>
				   <td>작성일</td>
				   </tr>
				   <c:forEach items="${notice }" var="notice">
				   <tr class="notice_content">
				   <td><p>${notice.cs_ntitle }</p></td>
				   <td><p>${fn:substring(notice.cs_ndate ,0,10) }</p></td>
				   </tr>
				   </c:forEach>
				   </table>
				</div>
				</c:when>
				<c:when test="${empty notice }">
				<p>작성된 공지사항이 없습니다.</p>
				</c:when>
				</c:choose>
    </div>
       		<!-- 페이징 부분 -->
		<div class="paging">

  <ul class="pagination justify-content-center">
     <c:if test="${startPage > 1 }">
    <li class="page-item">
      <a class="page-link" href="${pageContext.request.contextPath}/cs/notice?page=${startPage-1 }"
       aria-label="이전">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
       </c:if>
    <c:forEach begin="${startPage}" end="${endPage}" var="i">
    <li class="page-item"><a class="page-link"
     href="${pageContext.request.contextPath}/cs/notice?page=${i}">${i }</a></li>
    </c:forEach>
    	<c:if test="${endPage < pageCnt}">
    <li class="page-item">
      <a class="page-link" href="${pageContext.request.contextPath}/cs/notice?page=${endPage+1 }"
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>