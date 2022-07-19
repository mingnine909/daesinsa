<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<!-- Jquery -->
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>	
<title>Daesinsa - 위시리스트</title>
</head>
<body>
	<jsp:include page="../common/template_header.jsp"></jsp:include>
 <div id="mainwrap">
<%--  ${wish } --%>
    <h2 class="pb-2 border-bottom title">Wish List</h2>
    <c:choose>
	<c:when test="${not empty wish }">
    <div class="wish_list">
        <div class="container">
          <ul class="row row-cols-3">
           <c:forEach items="${wish }" var ="wish">
            <li>
                <div class="col" style="width: 70%; height: 70%;">
                <c:forEach items="${wish.p_img_list }" var="wishimg" varStatus="status"> 
    			<c:if test="${status.count <2 }">
    			<c:if test ="${not empty wishimg.p_img_path }">
     		 <img src="${pageContext.request.contextPath}${wishimg.p_img_path}" width="100%" height="100%">
      		 </c:if>
      		</c:if>
      		</c:forEach>
                  <div class="witem_info bg-light shadow-sm ">
                   <div class="witem_name">${wish.p_name }</div>
                  <div class="witem_price"><fmt:formatNumber value="${wish.p_price }" pattern="￦#,###.##"/></div> 
                  <input type="hidden" value="${wish.p_id }" id="wish_p_id">
                  <div class="witem_delete"><button type="button" class="btn delete_wish">
                  <i class="xi-trash" ></i></button></div>
                  </div>
                </div>
              </li>
             </c:forEach>
        </ul>
        </div>
        </div>
        </c:when>
        <c:when test="${empty wish }">
        <div class="wish_list_empty">
        <p>현재 위시리스트에 담긴 상품이 없습니다.</p>
        </div>
        </c:when>
        </c:choose>
        <!-- 위시 리스트 끝 -->
    </div>
    <jsp:include page="../common/template_footer.jsp"></jsp:include>


		 <script>
	$(".delete_wish").click(function(){
		var productVal = $('#wish_p_id').val();
		console.log(productVal); 
		var token = $("input[name='_csrf']").val();
		var header = "X-CSRF-TOKEN";
	$.ajax({
		url : "${pageContext.request.contextPath}/shop/delwishlist"
		,type: "post"
		,data :{
			p_id: productVal
			}
		,beforeSend : function(xhr)
		  {  
		 	 xhr.setRequestHeader(header, token);
		  }
		,success:function(result){
			console.log(result);
			alert("위시리스트에서 삭제되었습니다.");
			location.reload();
				},
				error : function(errcode) {
					console.log(errcode);
				}
			});
		});
	</script>
	
	<!-- 부트스트랩 스크립트 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>