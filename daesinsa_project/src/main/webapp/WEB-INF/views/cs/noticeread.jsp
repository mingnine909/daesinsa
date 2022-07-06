<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                  <li class="second_menu"><a href="${pageContext.request.contextPath}/cs/notice" class="link-dark rounded ">안내</a></li>
                  <li class="second_menu"><a href="${pageContext.request.contextPath}/cs/noticeEvent" class="link-dark rounded ">Event</a></li>
                </ul>
              </div>
            </li>
            <li class="mb-1 first_menu">
              <button class="btn btn-toggle align-items-center rounded collapsed " data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
                1:1문의<span>
              </button>
             
            </li>
            <li class="mb-1 first_menu">
              <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false"
                      onclick="location.href='${pageContext.request.contextPath}/cs/faq'">
                자주 묻는 질문<span>
              </button>
              
            </li>
            <li class="border-top my-3"></li>
          </ul>
        </div>
        </div>
        <!-- 사이드메뉴 끝 -->
        
    

				   <div class="notice_detail">
				   <table class="table ">
				   <tr>
				   <td colspan="2" class="nTitle"><p>${notice.cs_ntitle }</p></td>
				   <td class="nDate"><p>작성일 :${fn:substring(notice.cs_ndate ,0,10) }</p></td>
				   </tr>
				    <tr>
				   <td colspan="4" class="nContent"></p>${notice.cs_ncontent}</p></td>
				   </tr>
				  
				   
				   </table>
				   
				   
				   <button type="button"  class="btn btn-back" onclick="history.back();">목록으로</button>


	
    </div>
    
    
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