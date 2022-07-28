<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="short icon" href="#">
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/shop/detail.css">
<!-- 폰트 -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<!-- bx슬라이더 + jQuery 불러오기 -->
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="//cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<!-- 카카오톡 공유 api -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<title>Daesinsa</title>
</head>
<body>


	<jsp:include page="../common/template_header.jsp"></jsp:include>
	
	<div id="mainwrap">
	<div class="product_detail_all container">
	<div class="detail_category ">
	<c:if test = "${detail.category.c_id eq 'C111' || detail.category.c_id eq 'C112'}"><p>남성 상의</p></c:if>
	<c:if test = "${detail.category.c_id eq 'C121'}" ><p>남성 하의</p></c:if>
	<c:if test = "${detail.category.c_id eq 'C131'}" ><p>남성 가방</p></c:if>
	<c:if test = "${detail.category.c_id eq 'C132'}" ><p>남성 신발</p></c:if>
	<c:if test = "${detail.category.c_id eq 'C133'}" ><p>남성 모자</p></c:if>
 	
	<c:if test = "${detail.category.c_id eq 'C211' || detail.category.c_id eq 'C212'}"><p>여성 상의</p></c:if>
	<c:if test = "${detail.category.c_id eq 'C221' || detail.category.c_id eq 'C222'}"><p>여성 하의</p></c:if>
	
	<c:if test = "${detail.category.c_id eq 'C231'}" ><p>여성 가방</p></c:if>
	<c:if test = "${detail.category.c_id eq 'C232'}" ><p>여성 신발</p></c:if>
	<c:if test = "${detail.category.c_id eq 'C233'}" ><p>여성 모자</p></c:if> 
	</div>
		<c:choose>
			<c:when test="${not empty detail }">
        	<div class="product_detail ">
				<div class="product_img_all">
				 
          		<ul class="product_img" >
          		 <c:forEach items="${detail.p_img_list}" var="img">
				 <c:if test="${not empty img.p_img_path }"> 
                <li><img src="${pageContext.request.contextPath}${img.p_img_path }" width="100%" height="100%"> </li>
       			 </c:if> 
				</c:forEach>	
       			</ul>
				</div>
		
					
				<div class="product_info ">
				<div class="product_name"><p> ${detail.p_name }</p></div>
				<div class="product_price"><p><fmt:formatNumber value="${detail.p_price }" pattern="￦#,###.##"/> </p></div> 
				<div class="product_total_review"><a href="#product_review">상품 리뷰 : ${totalCntRe }개 <i class="xi-angle-right-min"></i></a></div>
		<%-- 	   	${detail.p_option_info} --%>
				  <select id="product_option" class="form-select" name="p_option">
				  <!-- 이 부분 내일 질문 ...  -->
				<c:forEach items="${detail.p_option_info}" var="option">
				<c:choose>
				  <c:when test="${option.po_id eq 'PO2' }">
				  <option 
				  <c:if test="${option.poi_id eq 'POI1' }">value="POI1" </c:if>
				  <c:if test="${option.poi_id eq 'POI2' }">value="POI2" </c:if>
				  <c:if test="${option.poi_id eq 'POI3' }">value="POI3" </c:if>
				  <c:if test="${option.poi_id eq 'POI4'}">value="POI4" </c:if>
				   ><c:if test="${option.poi_type==1 }">S</c:if>
				   <c:if test="${option.poi_type==2 }">M</c:if>
				   <c:if test="${option.poi_type==3 }">L</c:if>
				   <c:if test="${option.poi_type==4 }">XL</c:if>
				   </option>
				  </c:when>
				  <c:when test="${option.po_id eq 'PO3' }">
				  <option 
				  <c:if test="${option.poi_id eq 'POI1' }">value="POI1"</c:if>
				  <c:if test="${option.poi_id eq 'POI2' }">value="POI2"</c:if>
				  <c:if test="${option.poi_id eq 'POI3' }">value="POI3"</c:if>
				  <c:if test="${option.poi_id eq 'POI4' }">value="POI4"</c:if>
				  <c:if test="${option.poi_id eq 'POI5'}">value="POI5"</c:if>
				   ><c:if test="${option.poi_type==1 }">250</c:if>
				   <c:if test="${option.poi_type==2 }">260</c:if>
				   <c:if test="${option.poi_type==3 }">270</c:if>
				   <c:if test="${option.poi_type==4 }">280</c:if>
				    <c:if test="${option.poi_type==5}">290</c:if>
				   </option>
				   </c:when>
				   <c:when test="${option.po_id eq 'PO4' }">
				  <option 
		  		  <c:if test="${option.poi_id eq 'POI1' }">value="POI1"</c:if>
				  <c:if test="${option.poi_id eq 'POI2'}">value="POI2"</c:if>
				  <c:if test="${option.poi_id eq 'POI3' }">value="POI3"</c:if>
				  <c:if test="${option.poi_id eq 'POI4' }">value="POI4"</c:if>
				  <c:if test="${option.poi_id eq 'POI5'}">value="POI5"</c:if>
				   ><c:if test="${option.poi_type==1 }">210</c:if>
				   <c:if test="${option.poi_type==2 }">220</c:if>
				   <c:if test="${option.poi_type==3 }">230</c:if>
				   <c:if test="${option.poi_type==4 }">240</c:if>
				    <c:if test="${option.poi_type==5}">250</c:if>
				   </option>
				  </c:when>
				  <c:otherwise>
				  <option <c:if test="${option.poi_id eq 'POI1' }">value="POI1"</c:if>
				  ><c:if test="${option.poi_type==0 }">FREE</c:if></option>
				  </c:otherwise>
				  </c:choose>
				  
				</c:forEach>
				 </select>
				 
				  <!-- poi_id 값 가져오기 -->
				 <c:forEach items="${detail.p_option_info}" var="option">
				 <input type="hidden" value="${option.poi_id}" id="poi_id_hidden">
				 </c:forEach>
				 
				  
				 <!-- po_id 값 가져오기 -->
				 <c:forEach items="${detail.p_option_info}" var="option">
				 <input type="hidden" value="${option.po_id}" id="poi_hidden">
				 </c:forEach>
				  
				  <br>
				  <div class="product_cnt">
				  주문수량  
				  <span>
				  <button type="button" class="plus_btn btn ">+</button>
				   <input type="text" class="cnt" name="sb_amount" value="1">
				  <button type="button" class="minus_btn btn ">-</button>
				  </span>
				  </div>
				 <!-- 장바구니 상품 수량 조절 -->
				  <script>
				  /* +버튼 눌렀을때 */
				 var cart_cnt =$('.cnt').val();
				 $('.plus_btn').click(function(){
					 $('.cnt').val(++cart_cnt);
				 })
				 
				 /* -버튼 눌렀을때 */
				  var cart_cnt =$('.cnt').val();
				 $('.minus_btn').click(function(){
					 if(cart_cnt>1){//0개 이하로 내려가지 못하게 조절
					 $('.cnt').val(--cart_cnt); 
					 }
				 })
				  
				  </script>
				      <div class="product_buy">
				      
				     <%--  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
				    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<button type="submit" class="btn btn-light btn_cart"><i class="xi-cart-add"></i> &nbsp;장바구니 담기</button>
			
					<!-- 장바구니 담기 -->
					<script>
  
					$(".btn_cart").click(function(){
						var priceVal = '${detail.p_price}';
						console.log(priceVal); 
						var productVal = '${detail.p_id}';
						console.log(productVal); 
						var sbAmountVal = $('.cnt').val();
						console.log(sbAmountVal); 
						var totalCntVal = priceVal * sbAmountVal;
						console.log(totalCntVal);
						var poiIdVal = $('#poi_id_hidden').val();
						console.log(poiIdVal);
						var poIdVal = $('#poi_hidden').val();
						console.log(poIdVal);	
						var token = $("input[name='_csrf']").val();
						var header = "X-CSRF-TOKEN";
						 $.ajax({
							url : "${pageContext.request.contextPath}/shop/insertsb.do"
							,type: "post"
							,data :{
								poi_id: poiIdVal,
								p_id: productVal,
								po_id: poIdVal,
								sb_amount: sbAmountVal,
								p_price : priceVal,
								sb_totalprice : totalCntVal
							}
							,beforeSend : function(xhr)
							  {  
							 	 xhr.setRequestHeader(header, token);
							  }
							,success:function(data){
								if(data==2){
									alert("로그인 후 이용해주세요");
									location.href="${pageContext.request.contextPath}/member/login"
									return false;
								}
								console.log(data);
								
								var result = confirm('상품이 장바구니에 추가되었습니다. 장바구니로 이동하시겠습니까?')
								if(result){
								location.href="${pageContext.request.contextPath}/shopbasket/list"
								}else{
								location.reload();
								}
									},
								error : function(errcode) {
								console.log(errcode);
								alert('상품이 이미 장바구니에 있습니다.')
									}
								}); 
						
					}) 
					</script>
			
			
					<!-- 대여 가능 상품인 경우 페이지 이동 / 불가능한 경우 비활성화 및 페이지 이동 x -->
					<c:if test="${detail.p_isrental ==1 }">
				  <form action="${pageContext.request.contextPath}/rent/rentinsert" method="post">
				  	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<input type="hidden" name="p_id" value="${detail.p_id }">
					<input type="hidden" name="p_name" value="${detail.p_name }">
					<button type="submit" class="btn btn-light btn_rental" >
					<i class="xi-laundry"></i> &nbsp;대여하기</button>
					</form>
					</c:if>
									
					<c:if test="${detail.p_isrental ==2 }">
					<button type="button" class="btn btn-light btn_rental disabled">
					<i class="xi-laundry"></i> &nbsp;대여하기</button>
					</c:if>
				  </div>
				  <div class="btn_wish">
					<c:if test="${empty wishlist }">
					<button type="submit" id="btn_wish" class="btn btn-dark btn_wish" >
					<span><i class="xi-heart"></i></span> &nbsp; 위시리스트</button>
					</c:if>
					<c:if test="${not empty wishlist }">
					<button type="submit" id="btn_wish_add" class="btn btn-dark btn_wish">
					<span><i class="xi-heart" style="color: red;"></i></span> &nbsp; 위시리스트</button>
					</c:if>
         		
          </div>
          
        			 <!-- 위시리스트 담기 -->
					<script>
  
					$("#btn_wish").click(function(){
						
						var productVal = '${detail.p_id}';
						console.log(productVal); 
						var token = $("input[name='_csrf']").val();
						var header = "X-CSRF-TOKEN";
						 $.ajax({
							url : "${pageContext.request.contextPath}/shop/wishlist.do"
							,type: "post"
							,data :{
								p_id: productVal
							}
							,beforeSend : function(xhr)
							  {  
							 	 xhr.setRequestHeader(header, token);
							  }
							,success:function(data){
								console.log(data);
								if(data==2){
									alert("로그인 후 이용해주세요");
									location.href="${pageContext.request.contextPath}/member/login"
									return false;
								}
								var result = confirm('위시리스트에 추가되었습니다. 위시리스트로 이동하시겠습니까?')
								if(result){
								location.href="${pageContext.request.contextPath}/shop/wishlist"
								}else{
								location.reload();
								}
									},
								error : function(errcode) {
								console.log(errcode);
								alert('상품이 이미 위시리스트에 있습니다.')
									}
								}); 
						
					}) 
					</script>
					
					 <!-- 위시리스트 삭제-->
					 <script>
	$("#btn_wish_add").click(function(){
		var productVal = '${detail.p_id}';
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
	
		<!-- 공유하기 기능 -->
          <div class="product_share">
            <button type="button" class="btn btn-light" onclick="copyURL();"><i class="xi-share-alt-o xi-x"></i> </button>
            <button type="button" class="btn btn-light" onclick="shareTwitter();" id="twitter"><i class="xi-twitter xi-x"></i> </button>
            <button type="button" class="btn btn-light" onclick="shareKakao();" id="kakao"><i class=" xi-kakaotalk xi-x"></i> </button>
           
         		 </div>
				</div>
				</div>
					<div class="product_des ">
					<hr style="border: solid 2px black;">
						<p>${detail.p_content }</p>
						<p>상품 코드</p>
						<p>${detail.p_id}</p>
						<p>상품 등록일 </p>
						<p> ${fn:substring(detail.p_postdate ,0,10) }</p>
						<p> <i class="xi-truck"></i> &nbsp;배송비 : 2,000원</p>
						
					</div>
				</c:when>
			<c:when test="${empty detail } ">
상품이 없습니다.
</c:when>
		</c:choose>


<!-- 상품리뷰 -->
			<div id="product_review" class="product_review ">
			<hr style="border: solid 2px black;">
				<h1>상품 리뷰 <span>${totalCntRe }</span> 개</h1>
				<div class="product_review_content ">
					<c:choose>
						<c:when test="${not empty ProductReview }">
							<div class="product_review_left">
								<table>
									<c:forEach items="${ProductReview }" var="re">
										<tr>
											<td class="review_title">${re.pr_title}</td>
										</tr>
										<tr>
											<td class="review_content">${re.pr_content}</td>
										</tr>
										<c:if test="${not empty re.pr_review_img[0].pr_img_path }">
											<tr>
												<td>
												<img src="${pageContext.request.contextPath}${re.pr_review_img[0].pr_img_path}"
													width="60%" height="60%"></td>
											</tr>
										</c:if>
									</c:forEach>
								</table>
							</div>

							<div class="product_review_right">
								<table>
									<c:forEach items="${ProductReview }" var="re">
										<tr>
											<td class="review_date">작성일: ${fn:substring(re.pr_date,0,16) }</td>
										</tr>
										<tr>
											<td class="review_writer">리뷰 작성자: ${re.m_id} 
											</td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</c:when>
						<c:when test="${empty  ProductReview}">
							<table>
								<tr>
									<td>현재 작성된 상품 리뷰가 없습니다.</td>
								</tr>
							</table>
						</c:when>
					</c:choose>
				</div>
			</div>





			<!-- 상품문의 -->
<div class="product_qna ">
<hr style="border: solid 2px black;">
<h1> 상품 문의</h1>
<div class="insert_qna">
<button type="button" class="btn btn-dark  btn-sm" onclick="openQna();">문의 작성</button>
</div>
<div class="product_qna_all">
<c:choose>
<c:when test="${not empty ProductQna }">
<c:forEach items="${ProductQna }" var="qna">
 <div class="qna">
  <c:choose> 
   <c:when test="${qna.pq_closed == 0 || username eq 'admin1' || username eq 'admin2' || username  eq 'admin3'}"> 
<div class="product_qna_title">
<c:if test="${qna.pq_level ==0 }">
<p>${fn:substring(qna.pq_date ,0,16) }</p>
<p>[ <c:if test="${qna.pq_type ==1}">상품</c:if>
<c:if test="${qna.pq_type ==2}">배송</c:if>
<c:if test="${qna.pq_type ==3}">대여</c:if>
<c:if test="${qna.pq_type ==4}">교환/환불/취소</c:if>
<c:if test="${qna.pq_type ==5}">기타 </c:if>
] ${qna.pq_title }</p>

</c:if>
<c:if test="${qna.pq_level ==1 }">
<p class="qna_answer"><i class="xi-subdirectory-arrow"> </i>답변완료</p>
<p>${fn:substring(qna.pq_date ,0,16) }</p>
<p>[ <c:if test="${qna.pq_type ==1}">상품</c:if>
<c:if test="${qna.pq_type ==2}">배송</c:if>
<c:if test="${qna.pq_type ==3}">대여</c:if>
<c:if test="${qna.pq_type ==4}">교환/환불/취소</c:if>
<c:if test="${qna.pq_type ==5}">기타 </c:if>
] ${qna.pq_title }</p>
</c:if>
</div>
 </c:when>
 <c:otherwise>
 <c:choose>
  <c:when test="${qna.m_id eq username }"> 
<div class="product_qna_title">
<c:if test="${qna.pq_level ==0 }">
<p>${fn:substring(qna.pq_date ,0,16) }</p>
<p>[ <c:if test="${qna.pq_type ==1}">상품</c:if>
<c:if test="${qna.pq_type ==2}">배송</c:if>
<c:if test="${qna.pq_type ==3}">대여</c:if>
<c:if test="${qna.pq_type ==4}">교환/환불/취소</c:if>
<c:if test="${qna.pq_type ==5}">기타 </c:if>
] ${qna.pq_title }</p>

</c:if>
<c:if test="${qna.pq_level ==1 }">
<p class="qna_answer"><i class="xi-subdirectory-arrow"> </i>답변완료</p>
<p>${fn:substring(qna.pq_date ,0,16) }</p>
<p>[ <c:if test="${qna.pq_type ==1}">상품</c:if>
<c:if test="${qna.pq_type ==2}">배송</c:if>
<c:if test="${qna.pq_type ==3}">대여</c:if>
<c:if test="${qna.pq_type ==4}">교환/환불/취소</c:if>
<c:if test="${qna.pq_type ==5}">기타 </c:if>
] ${qna.pq_title }</p>
</c:if>
</div>
 </c:when>
 <c:when test="${qna.m_id ne username }">
<div class="product_qna_title_closed">
<c:if test="${qna.pq_level ==0 }">
<p> <i class="xi-lock-o"> </i> 해당 게시물은 비밀글로 작성된 게시글입니다.</p>
</c:if>
<c:if test="${qna.pq_level ==1 }">
<p><i class="xi-subdirectory-arrow"> </i> <i class="xi-lock-o"> </i> <b style="font-weight: bold;">답변완료</b>
해당 게시물은 비밀글로 작성된 게시글입니다.</p>
</c:if>

</div>
</c:when>
</c:choose>
</c:otherwise>

</c:choose> 
<div class="product_qna_desc bg-light">
<p>내용${qna.pq_content }</p>
<c:if test="${qna.pq_level ==0 }">
<div class="qna_delete">
 <c:if test="${qna.m_id eq username }">
<button type="submit" class="btn qna_delete" > 삭제 </button>
</c:if>
<input type="hidden" class="pq_qref_value" value="${qna.pq_qref }">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</div>
</c:if>
<c:if test="${qna.pq_level ==0 }">

<!-- TODO : 아래 버튼 관리자 로그인인 경우만 나타나도록 수정  -->
<form action="${pageContext.request.contextPath}/shop/qnaanswer" method="post"
target="qnaAnswer" onsubmit='openAnswer();'>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
<input type="hidden" name ="pq_content_copy" value="${qna.pq_content }">
<input type="hidden" name ="p_id" value="${detail.p_id}">
<input type="hidden" name ="pq_no" value="${qna.pq_no }">
<c:if test="${username eq 'admin1' || username eq 'admin2' || username  eq 'admin3'}">
<button type="submit" class="btn btn-dark btn-sm">답변</button>
</c:if>
</form>
</c:if>
</div>
</div>
</c:forEach>
<!-- 상품 문의 삭제 스크립트 -->
<script>
	$(".qna_delete").click(function(){
		console.log($(this));
		console.log($(this).next().val());
		var token = $("input[name='_csrf']").val();
		var header = "X-CSRF-TOKEN";
	$.ajax({
		url : "${pageContext.request.contextPath}/shop/pqnadelete"
		,type: "post"
		,data :{
			pq_qref : $(this).next().val()
			}
		,beforeSend : function(xhr)
		  {  
		 	 xhr.setRequestHeader(header, token);
		  }
		,success:function(result){
			console.log(result);
			alert(result);
			window.location.reload();
				},
				error : function(errcode) {
					console.log(errcode);
				}
			});
		});
	</script>
</c:when>
<c:otherwise>
<p>현재 작성된 상품 문의가 없습니다.</p>
</c:otherwise>
</c:choose>
</div>
</div>

	</div>

	<div class="product_delivery container">
		<hr style="border: solid 2px black;">
	<p>※ 교환/반품 기간 
<br>고객님의 변심으로 인한 교환·반품은 제품 수령일로부터 7일 이내 </p>
<p>※ 교환/반품 배송비  
<br>고객님의 변심으로 인한 제품 교환/반품은 고객님께서 부담하셔야 합니다. 
<br>- 단, 제품 불량, 하자가 있는 경우에 한하여 </p>
<p>택배비 제외 사이즈 교환은 반품 후 재구매 부탁드립니다. 
<br>타 택배 이용시 교환/반품은 제품을 타 택배를 통해 선불로 이용하셔서 박스에 2,000원을 동봉하여 반품 주소로 보내주시면 됩니다.</p>

						<p>※ 배송 지역  
						<br>전국(일부 지역 제외) </p>
						<p>※ 배송 방식  
						<br>- 도서·산간 지역은 별도의 추가 금액이 발생할 수도 있습니다. </p>
						<p>배송 정보  
						<br> 결제일 다음 날로부터 3일 이내 발송(토요일, 일요일, 공휴일은 배송일에서 제외)
						<br>- 도서·산간 지역은 배송일이 추가적으로 소요될 수 있으며, 상품의 재고 상황에 따라 다소 지연될 수 있습니다.</p>
	</div>
	
</div>
	<jsp:include page="../common/template_footer.jsp"></jsp:include>
	
	
		<!-- bx 슬라이더 스크립트  -->
	<script>
		$(document).ready(function() {
			$('.product_img').bxSlider({
				minSlides : 1, //화면에 나타내는 슬라이드 갯수

				maxSlides : 2,

				slideWidth : 350, //넓이

				slideHeight : 350,
				
				slideMargin : 10,

				pager : true
			});
		});
	</script>
	
	<!-- 상품 값 확인 -->
	<script>
/* 	  function selectOption(option) {
		const optionVal = option.value;
		console.log(optionVal);  
		
  } */
		$("select[name=p_option]").change(function(){
			console.log($(this).val());
		})
	</script>
	
	<!-- 상품 qna 열고닫기 스크립트 -->
    <script>
      let eleBtns= document.getElementsByClassName("product_qna_title");
      for (var i = 0; i<eleBtns.length ; i++){
        eleBtns[i].onclick = function(){
            console.log(this); 
            console.log(this.nextElementSibling);
            var eleNext = this.nextElementSibling;
            var isDisplay = eleNext.style.display;
            console.log(isDisplay);
            if(isDisplay =="" || isDisplay =="none"){
                eleNext.style.display="block" ;
      
            } else{
                eleNext.style.display="none" ;  
            }
      }
      }
      
      </script>
      
       <!-- 상품 qna 질문창 / 답변 새 창 열기 -->
      <script>
        function openQna(){
          var popup = window.open('${pageContext.request.contextPath}/shop/qnainsert?p_id=${detail.p_id}', 
        		  'daesinsa', 'width=800px,height=700px,scrollbars=yes');
        }
        </script>
        
        <script>
        function openAnswer(){
        	var popup = open('','qnaAnswer','width=800px,height=700px,scrollbars=yes');
        }
        </script>

	
      <!-- 상품공유 스크립트 -->
        <script>
      // 1. url복사
      window.copyURL = function(){
      prompt("아래의 상품 주소를 복사해주세요",window.location);
      }
		</script>
		
		 <script>    
      // 2. 트위터 공유
      function shareTwitter() {
     
	  var sendText= $('.product_name').text(); //전달할 제목
      var sendUrl = document.URL; // 전달할 URL
      window.open("https://twitter.com/intent/tweet?text=" + sendText + "&url=" + sendUrl);
      }
      </script>
      
      
       <script>
      // 3. 카카오 공유
      function shareKakao() { 
      // 사용할 앱의 JavaScript 키 설정
      Kakao.init('508c6cadc43c704a73db239c5bc2c017');
	
      // 카카오링크 버튼 생성
      Kakao.Link.createDefaultButton({
      container: '#kakao', // 카카오공유버튼ID
      objectType: 'feed',
      content: {
       title: $('.product_name').text(), // 보여질 제목
       description: $('.product_des').text(), // 보여질 설명 
       imageUrl: document.URL, // 콘텐츠 URL
       link: {
        mobileWebUrl: document.URL,
          webUrl: document.URL
       }
     }
   });
  }
        </script>

	

    
	<!-- 부트스트랩 스크립트 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>