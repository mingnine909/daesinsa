<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
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
<!-- jQuery -->
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">
<title>Daesinsa</title>
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
              <button class="btn btn-toggle align-items-center rounded collapsed " data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false"
               onclick="location.href='${pageContext.request.contextPath}/cs/qnaMain'">
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
				   <td colspan="2" class="nTitle">대신사 신규 가입 회원을 위한 특별 쿠폰 지급</td>
				   <td class="nDate">작성일 : 2022-07-20</td>
				   </tr>
				    <tr>
				   <td colspan="4" class="nContent"><img src="${pageContext.request.contextPath}/resources/img/notice/event 이미지.png"
					 width="90%" height="90%">
					 <p>대신사 신규 고객들을 위한 전 상품 2000원 할인 쿠폰<br>
					하단의 쿠폰 발급받기 버튼을 클릭해주세요!</p></td>
				   </tr>
			   
				   </table>
				   <input type="hidden" name="c_price" value="2000" id="c_price">
				   <input type="hidden" name="c_name" value="신규회원 쿠폰" id="c_name">
				   <c:if test="${empty username  }">
				   <button type="button"  class="btn btn_coupon" onclick="location.href='${pageContext.request.contextPath}/member/login'" >로그인 후 이용하기</button>
				   </c:if>
				    <c:if test="${not empty username  && empty coupon}">
				   <button type="button"  class="btn btn_coupon" id="btn_coupon">쿠폰 발급받기</button>
				   </c:if>
				    <c:if test="${not empty coupon  }">
				   <button type="button"  class="btn btn_coupon" style="background: #222222;color: white;"
				   onclick="notice();">쿠폰 발급 완료</button>
				   </c:if>

<script>
					$("#btn_coupon").click(function(){
						var priceVal = $('#c_price').val();
						var nameVal = $('#c_name').val();
						console.log(priceVal); 
						console.log(nameVal); 
						var token = $("input[name='_csrf']").val();
						var header = "X-CSRF-TOKEN";
						 $.ajax({
							url : "${pageContext.request.contextPath}/cs/coupon"
							,type: "post"
							,data :{
								c_price: priceVal,
								c_name: nameVal
							}
							,beforeSend : function(xhr)
							  {  
							 	 xhr.setRequestHeader(header, token);
							  }
							,success:function(data){
								console.log(data);
								 alert('쿠폰이 발급되었습니다.')
								 location.reload();
									},
								error : function(errcode) {
								console.log(errcode);
									}
								}); 
						
					}) 
					</script>
	
    </div>
    
    
</div>
    
    

</div>



<jsp:include page="../common/template_footer.jsp"></jsp:include>

<script>
function notice(){
	alert('이미 발급받은 쿠폰입니다.');
}
</script>
	<!-- 부트스트랩 스크립트 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
		
</body>
</html>