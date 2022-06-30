<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<!-- wishlist css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/shop/wishlist.css">
<!-- 폰트 -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
	
<title>Daesinsa - 위시리스트</title>
</head>
<body>
	<jsp:include page="../common/template_header.jsp"></jsp:include>
 <div id="mainwrap">
    <h2 class="pb-2 border-bottom title">Wish List</h2>
    <div class="wish_list">
        <div class="container">
          <ul class="row row-cols-3">
            <li>
                <div class="col">
                  <img src="#" width="100%" height="100%">
                  <div class="witem_info bg-light shadow-sm ">
                   <div class="witem_name">상품1</div>
                  <div class="witem_price">19,400원</div> 
                  <div class="witem_delete"><i class="xi-trash"></i></div>
                  </div>
                </div>
              </li>
              <li>
                <div class="col">
                  <img src="#" width="100%" height="100%">
                  <div class="witem_info bg-light shadow-sm ">
                   <div class="witem_name">상품2</div>
                  <div class="witem_price">20,000원</div> 
                  <div class="witem_delete"><i class="xi-trash"></i></div>
                </div>
                </div>
              </li>
            
              <li>
                <div class="col">
                  <img src="#" width="100%" height="100%">
                  <div class="witem_info bg-light shadow-sm ">
                  <div class="witem_name">상품3</div>
                  <div class="witem_price">45,500원</div> 
                  <div class="witem_delete"><i class="xi-trash"></i></div>
                </div>
                </div>
              </li>
        
          <li>
            <div class="col">
              <img src="#" width="100%" height="100%">
              <div class="witem_info bg-light shadow-sm ">
               <div class="witem_name">상품1</div>
              <div class="witem_price">19,400원</div> 
              <div class="witem_delete"><i class="xi-trash"></i></div>
              </div>
            </div>
          </li>
          <li>
            <div class="col">
              <img src="#" width="100%" height="100%">
              <div class="witem_info bg-light shadow-sm ">
               <div class="witem_name">상품2</div>
              <div class="witem_price">20,000원</div> 
              <div class="witem_delete"><i class="xi-trash"></i></div>
            </div>
            </div>
          </li>
        
          <li>
            <div class="col">
              <img src="#" width="100%" height="100%">
              <div class="witem_info bg-light shadow-sm ">
              <div class="witem_name">상품3</div>
              <div class="witem_price">45,500원</div> 
              <div class="witem_delete"><i class="xi-trash"></i></div>
            </div>
            </div>
          </li>
        </ul>
        </div>
        </div>
        <!-- 위시 리스트 끝 -->
    </div>
    <jsp:include page="../common/template_footer.jsp"></jsp:include>

	<!-- 부트스트랩 스크립트 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>